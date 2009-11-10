require 'solr/xml'
require 'solr/request/base'
require 'solr/document'
require 'solr/request/update'

class Solr::Request::AddXMLDocument < Solr::Request::Update

  # create the request, optionally passing in a Solr::Document
  #
  #   request = Solr::Request::AddDocument.new doc
  #
  # as a short cut you can pass in a Hash instead:
  #
  #   request = Solr::Request.new :creator => 'Jorge Luis Borges'
  # 
  # or an array, to add multiple documents at the same time:
  # 
  #   request = Solr::Request::AddDocument.new([doc1, doc2, doc3])
    
  def initialize(doc={})
    @docs = []
    if doc.is_a?(Array)
      doc.each { |d| add_doc(d) }
    else
      add_doc(doc)
    end
  end

  # returns the request as a string suitable for posting
  
  def to_s
    e = Solr::XML::Element.new 'add'
    for doc in @docs
      e.add_element doc
    end
    return e.to_s
  end
  
  private
  def add_doc(doc)
    case doc
    when Hash
      @docs << Solr::Document.new(doc).to_s
    when Solr::Document
      @docs << doc.to_s
    else
      d = REXML::Document.new doc
      @docs << d
    #  raise "must pass in Solr::Document or Hash"
    end
  end
  
end
