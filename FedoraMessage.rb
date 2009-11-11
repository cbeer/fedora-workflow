class FedoraMessage

  def initialize( msg )
    @msg = msg
    @doc = REXML::Document.new msg.body
    @repository_uri = REXML::XPath.first( @doc, "//author/uri").text
    @type = REXML::XPath.first( @doc, "//title" ).text
    @pid = REXML::XPath.first( @doc, "//summary" ).text
    @dsID = REXML::XPath.first( @doc, '//category[@scheme="fedora-types:dsID"]/@term' ).to_s
  end
  
  #
  # Handle an incoming message
  #
  def handle_msg
    #puts @msgdsID
    return if @type == 'ingest' or @type == 'purgeObject'	 
#    begin
      d = get_definition 
      launch_workflow d

#query = 'select $workflow from <#ri> where
# (<info:fedora/' + @pid + '>  <info:fedora/fedora-system:def/relations-external#hasWorkflow> $workflow)
#or 
#(<info:fedora/' + @pid + '>  <info:fedora/fedora-system:def/model#hasModel> $cmodel
#and $cmodel <info:fedora/fedora-system:def/relations-external#hasWorkflow> $workflow)'
#      relsext = RestClient.post "http://localhost:8080/fedora/risearch", :dt => 'on', :format => 'CSV', :lang => 'itql', :limit => 100, :query => query, :type => 'tuples'
#      relsext.split(/\n/).shift
#      relsext.each { |wkflw| 
 #       begin
       # d = get_definition wkflw 
       # launch_workflow d
 #       end
 #     }
      #select $a from <#ri> where $a  <info:fedora/fedora-system:def/relations-external#hasWorkflow> $b
#    rescue
      #log
#    end
    
    if self.respond_to? @type
      self.send @type 
    end 
  end

  
  #
  # Get the appropriate workflow definition from the repository
  #
  def get_definition( action = nil, params = {} )
    if action.nil? 
      action = CGI::escape(@pid) + '/sdef:WORKFLOW'
    end
    puts [@repository_uri, "get", action, @type].compact.join('/') + hash_to_qs(params)
    RestClient.get( [@repository_uri, "get", action, @type].compact.join('/') + hash_to_qs(params) )
    
  end
  
  def hash_to_qs(args={})
  	if args.empty?
  	  return ''
  	end
    '?' + args.map { |k,v| "%s=%s" % [URI.encode(k.to_s),
URI.encode(v.to_s)] }.join('&')
  end
  
  #
  # Launch a Ruote workflow process
  #
  def launch_workflow( definition, params={} )
    uri = URI.parse @repository_uri + "/objects/" + @pid + ".xml"
    profile_src = uri.read
    profile = REXML::Document.new profile_src

    
    
    fields = {
		:repository_uri => @repository_uri,
		:pid => @pid,
		:type => @type,
		:msg => @msg,
		:dsID => @dsID,
		:state => REXML::XPath.first( profile, '//objState').text
	}
	
    params.each do |k,v|
      fields[k] = v
    end
    
    li = Ruote::Launchitem.new definition, fields
    
    fei = $engine.launch li
  end
   
#--
# Relationship workflow handlers
#++
  def addRelationship
  
  end
  
  def purgeRelationship
  
  end
  
  def modifyDatastreamByValue
    if @dsID == "RELS-EXT"
      begin
        dt_str = REXML::XPath.first( @doc, "//content" ).text
        dt = DateTime::strptime(dt_str, '%Y-%m-%dT%H:%M:%S.%LZ')
        dt_before = dt - DateTime::strptime('0.001Z', '%S.%LZ').sec_fraction
        before = RestClient.get @repository_uri  + "/get/" + @pid + "/" + @dsID + "/" + @dt_before.strftime('%Y-%m-%dT%H:%M:%S.%LZ') 
	    s_b = rels_to_set before
        after = RestClient.get @repository_uri  + "/get/" + @pid + "/" + @dsID + "/" + @dt.strftime('%Y-%m-%dT%H:%M:%S.%LZ') 
        s_a = rels_to_set after
        s_removed = s_b - s_a
        s_added = s_a - s_b
        s_removed.each {|t| process_rels(repository_uri, msg, t, 'purge')} 
        s_added.each {|t| process_rels(repository_uri, msg, t, 'add')} 
      #rescue
  
      end
    end
  end 
   
  #++
  # Helper functions
  #--
  
  #
  # Transform RDF relationships into Ruby sets
  #
  def rels_to_set(rels)
    set = Set.new
    rels_xml = REXML::Document.new rels
    pid = rels_xml.root.elements["rdf:Description"].attributes["rdf:about"]
    relations = REXML::XPath.each( rels_xml, '//rdf:Description/*' ) { |element|
      predicate = element.attributes["xmlns"] + element.name
      str = pid + " " + predicate + " " + element.attributes["rdf:resource"]
      set.add str
    }
    return set
  end
  
  def is_pid?(pid)
    return pid[0..12] == 'info:fedora/'
  end
  
  def fqpid_to_pid(pid)
    if is_pid? pid
      return pid.split('/', 2)[1]
    else
      return pid
    end
  end
  
  #
  # process RDF relations and launch appropriate workflows
  #
  def process_rels(repository_uri, msg, triple, dir)
    subject, predicate, object = triple.split(' ', 3)
    subject_pid = fqpid_to_pid(subject)
    object_pid = fqpid_to_pid(object)
    begin
      process_definition = RestClient.get repository_uri  + "/get/" + subject_pid + "/sdef:WORKFLOW/" + dir + "_subject_" + CGI::escape( predicate ) + "?object=" + CGI::escape( object )
      launch_workflow(process_definition, {:subject => subject, :predicate => predicate, :object => object})
    rescue
      puts repository_uri + "/get/" + subject_pid + "/sdef:WORKFLOW/" + dir + "_subject_" + CGI::escape( predicate ) + "?object=" + CGI::escape( object )
    end
  
    begin
      process_definition = RestClient.get repository_uri  + "/get/" + object_pid + "/sdef:WORKFLOW/" + dir + "_object_" + CGI::escape( predicate ) + "?subject=" + CGI::escape( subject )
      launch_workflow(process_definition, {:subject => subject, :predicate => predicate, :object => object})
    rescue
      puts repository_uri + "/get/" + object_pid + "/sdef:WORKFLOW/" + dir + "_object_" + CGI::escape( predicate ) + "?subject=" + CGI::escape( subject )
    end
  end
end
