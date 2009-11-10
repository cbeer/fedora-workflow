require 'solr'
require 'add_xml_document'


$conn_solr = Solr::Connection.new('http://localhost:8080/solr', :autocommit => :on)

$engine.register_participant(:solr_prepare) do |workitem|
	profile = RestClient.get workitem.repository_uri + "/objects/" +workitem. pid + "?format=xml", :accept => 'text/xml'
    profile = REXML::Document.new profile
    workitem.status = REXML::XPath.first( profile, "//objState").text 
end

$engine.register_participant(:solr_update) do |workitem|
    data = RestClient.get workitem.repository_uri + "/get/" + workitem.pid + "/sdef:METADATA/SolrXML"
    doc = Solr::Request::AddXMLDocument.new data
    $conn_solr.post doc
    $conn_solr.commit
end

$engine.register_participant(:solr_purge) do |workitem|
  $conn_solr.delete workitem.pid
end

$engine.register_participant(:solr_close) do |workitem|
  # purge cache?
end
