require File.join(File.dirname(__FILE__), 'Fedora-API-M-WSDL')
require File.join(File.dirname(__FILE__), 'Fedora-API-M-WSDLMappingRegistry')
require 'soap/rpc/driver'

class FedoraAPIM < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://10.0.1.7:8080/fedora/services/management"

  Methods = [
    [ "http://www.fedora.info/definitions/1/0/api/#ingest",
      "ingest",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "ingest"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "ingestResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#modifyObject",
      "modifyObject",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "modifyObject"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "modifyObjectResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#getObjectXML",
      "getObjectXML",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "getObjectXML"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "getObjectXMLResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#export",
      "export",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "export"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "exportResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#purgeObject",
      "purgeObject",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "purgeObject"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "purgeObjectResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#addDatastream",
      "addDatastream",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "addDatastream"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "addDatastreamResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#modifyDatastreamByReference",
      "modifyDatastreamByReference",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "modifyDatastreamByReference"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "modifyDatastreamByReferenceResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#modifyDatastreamByValue",
      "modifyDatastreamByValue",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "modifyDatastreamByValue"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "modifyDatastreamByValueResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#setDatastreamState",
      "setDatastreamState",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "setDatastreamState"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "setDatastreamStateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#setDatastreamVersionable",
      "setDatastreamVersionable",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "setDatastreamVersionable"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "setDatastreamVersionableResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#compareDatastreamChecksum",
      "compareDatastreamChecksum",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "compareDatastreamChecksum"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "compareDatastreamChecksumResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#getDatastream",
      "getDatastream",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "getDatastream"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "getDatastreamResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#getDatastreams",
      "getDatastreams",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "getDatastreams"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "getDatastreamsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#getDatastreamHistory",
      "getDatastreamHistory",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "getDatastreamHistory"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "getDatastreamHistoryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#purgeDatastream",
      "purgeDatastream",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "purgeDatastream"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "purgeDatastreamResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#getNextPID",
      "getNextPID",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "getNextPID"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "getNextPIDResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#getRelationships",
      "getRelationships",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "getRelationships"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "getRelationshipsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#addRelationship",
      "addRelationship",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "addRelationship"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "addRelationshipResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.fedora.info/definitions/1/0/api/#purgeRelationship",
      "purgeRelationship",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "purgeRelationship"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.fedora.info/definitions/1/0/types/", "purgeRelationshipResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = FedoraAPIMWSDLMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = FedoraAPIMWSDLMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

