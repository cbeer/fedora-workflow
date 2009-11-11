#
# This participant library depends on the solr-ruby library for its heavy lifting ($ gem install solr-ruby). 
# It also expects a Fedora sdef:METADATA service offering a SolrXML action that returns a Solr XML document
#

require 'solr'
require 'solr/add_xml_document'


$conn_solr = Solr::Connection.new('http://localhost:8080/solr', :autocommit => :on)

$engine.register_participant(:solr_prepare) do |workitem|
	profile = RestClient.get workitem.fields[:repository_uri] + "/objects/" + workitem.fields[:pid] + "?format=xml", :accept => 'text/xml'
    profile = REXML::Document.new profile
    workitem.fields[:status] = REXML::XPath.first( profile, "//objState").text 
end

$engine.register_participant(:solr_update) do |workitem|
    data = RestClient.get workitem.fields[:repository_uri] + "/get/" + workitem.fields[:pid] + "/sdef:METADATA/SolrXML"
    doc = Solr::Request::AddXMLDocument.new data
    $conn_solr.post doc
    $conn_solr.commit
end

$engine.register_participant(:solr_purge) do |workitem|
	$conn_solr.delete workitem.fields[:pid]
end

$engine.register_participant(:solr_close) do |workitem|
  # purge cache?
end
