require 'cgi'

$engine.register_participant :should_do_metadata_extraction do |workitem|
  return false.to_s if ['DC', 'RELS-EXT', 'AUDIT', 'RELS-INT'].include? workitem.fields['dsid'] or workitem.fields['dsid'] =~ /^__/
  true.to_s
end

$engine.register_participant :extract_datastream_metadata do |workitem|
  client = RestClient::Resource.new 'http://localhost:8080/services/cgi-bin/exiftool.rb?url=' + CGI::escape(FedoraWorkflow.fedora_config[:url] + "/get/" + workitem.fields['pid'] + '/' + workitem.fields['dsid']) 
  client.get.body
end
