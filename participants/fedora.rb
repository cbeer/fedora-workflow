require 'cgi'
require 'mime/types'

$engine.register_participant :fedora_set_object_state do |workitem|

end

$engine.register_participant :fedora_add_datastream do |workitem|
  data = File.read(workitem.fields['file']) unless workitem.fields['file'].nil?
  mime = MIME::Types.type_for(workitem.fields['file']).first.to_s unless workitem.fields['file'].nil?
  data ||= workitem.fields['__result__'] 
  mime ||= 'text/xml'
  
  pid = workitem.fields['pid']
  dsid = workitem.fields['dsid']
  label = workitem.fields['label'] || workitem.fields['dsid']
  client = FedoraWorkflow.fedora_resource pid + "/datastreams/" + dsid + "?controlGroup=M&dsLabel=" + CGI::escape(label) + "&checksumType=DISABLED"
  client.post data, :content_type => mime
end

$engine.register_participant :fedora_purge_datastream do |workitem|

end

$engine.register_participant :fedora_datastream_info do |workitem|

end

# get the datastream as a tmp file
$engine.register_participant :fedora_get_datastream do |workitem|

end

# read-only access to a file-handle
$engine.register_participant :fedora_datastream_to_file do |workitem|

end

$engine.register_participant :fedora_sparql do |workitem|

end

$engine.register_participant :fedora_add_relationship do |workitem|

end

$engine.register_participant :fedora_purge_relationship do |workitem|

end
