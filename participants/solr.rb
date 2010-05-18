require 'solr'
require 'solr/add_xml_document'

$conn_solr = Solr::Connection.new('http://localhost:8080/solr')

$engine.register_participant :fedora_object_to_solr do |workitem|
  FedoraWorkflow.fedora_get workitem.fields['pid'] + "/sdef:METADATA/SolrXML"
end

$engine.register_participant(:solr_update) do |workitem|
  doc = Solr::Request::AddXMLDocument.new  workitem.fields['__result__']
  $conn_solr.post doc
end

$engine.register_participant(:solr_purge) do |workitem|
  $conn_solr.delete workitem.fields[:pid]
end

$engine.register_participant(:solr_commit) do |workitem|
  $conn_solr.commit
end
