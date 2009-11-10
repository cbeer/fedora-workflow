require 'bagit'
require 'mime/types'
require 'digest/sha1'
require 'zlib'
require 'archive/tar/minitar'
include Archive::Tar
  
$engine.register_participant(:bagit_uncompress_objects) do |workitem|
  f = open(workitem.repository_uri + "/get/" + workitem.pid + "/Bag")
  tgz = Zlib::GzipReader.new(f)
  Minitar.unpack(tgz, workitem.pid + "_bag")
  workitem.bag = BagIt::Bag.new(workitem.pid + "_bag")
  workitem.object_type = 'cmodel:ChronAm'
  workitem.bag.valid?
end

$engine.register_participant(:bagit_create_objects) do |workitem|
  workitem.bag.bag_files.group_by { |file| file[/.*\./] }.each_value { |files|
    foxml = File.new('bagit.fo.xml')
    foxml_text = foxml.read
    
    #probably should pull the pid from something...
    pid = $driver.getNextPID(:numPIDs => 1).first
    foxml_text = foxml_text.gsub('<!-- PID -->', pid)
    
    client = RestClient::Resource.new workitem.repository_uri + "/objects/" + pid, :user => 'fedoraAdmin', :password => 'fedora'
    client.post foxml_text, :content_type => 'text/xml'

    $driver.addRelationship(:pid => pid, :relationship => 'info:fedora/fedora-system:def/model#hasModel', :object => workitem.object_type, :isLiteral => false, :datatype => nil)
    
    $driver.addRelationship(:pid => pid, :relationship => 'info:fedora/fedora-system:def/relations-external#isMemberOfCollection', :object => workitem.pid, :isLiteral => false, :datatype => nil)
    ds_model_src = RestClient.get workitem.repository_uri + "/get/" + workitem.object_type + "/DS-COMPOSITE-MODEL"
    ds_model = REXML::Document.new ds_model_src
    
    i = 0
    files.each { |f| 
      mime = MIME::Types.type_for(f)[0].to_s
      file = File.read(f)
      sha1 = Digest::SHA1.hexdigest(file)
       
      dsID = 'File.' + i.to_s
      begin
        dsID = REXML::XPath.first( ds_model, '//dsTypeModel[form[@MIME="' + mime + '"]][@ID!="DC" and @ID!="RELS-EXT"]/@ID').value
      rescue
        i += 1      
      end
      
      client_ds = RestClient::Resource.new workitem.repository_uri + "/objects/" + pid + "/datastreams/" + dsID + "?controlGroup=M&dsLabel=New&checksumType=SHA-1&checksum=" + sha1, :user => 'fedoraAdmin', :password => 'fedora'
      client_ds.post file, :content_type => mime
    }
  }
end
