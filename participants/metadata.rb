require 'cgi'
$engine.register_participant :extract_datastream_metadata do |workitem|
  client = RestClient::Resource.new 'http://localhost:8080/services/cgi-bin/exiftool.rb?url=' + CGI::escape(FedoraWorkflow.fedora_config[:url] + "/get/" + workitem.fields['pid'] + '/' + workitem.fields['dsid']) 
  client.get.body
end
