require 'fedora/FedoraAPIM.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsApi = "http://www.fedora.info/definitions/1/0/api/"
  NsTypes = "http://www.fedora.info/definitions/1/0/types/"

  EncodedRegistry.register(
    :class => Datastream,
    :schema_type => XSD::QName.new(NsTypes, "Datastream"),
    :schema_element => [
      ["controlGroup", ["DatastreamControlGroup", XSD::QName.new(nil, "controlGroup")]],
      ["iD", ["SOAP::SOAPString", XSD::QName.new(nil, "ID")]],
      ["versionID", ["SOAP::SOAPString", XSD::QName.new(nil, "versionID")]],
      ["altIDs", ["ArrayOf_xsd_string", XSD::QName.new(nil, "altIDs")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["versionable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "versionable")]],
      ["mIMEType", ["SOAP::SOAPString", XSD::QName.new(nil, "MIMEType")]],
      ["formatURI", ["SOAP::SOAPString", XSD::QName.new(nil, "formatURI")]],
      ["createDate", ["SOAP::SOAPString", XSD::QName.new(nil, "createDate")]],
      ["size", ["SOAP::SOAPLong", XSD::QName.new(nil, "size")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(nil, "location")]],
      ["checksumType", ["SOAP::SOAPString", XSD::QName.new(nil, "checksumType")]],
      ["checksum", ["SOAP::SOAPString", XSD::QName.new(nil, "checksum")]]
    ]
  )

  EncodedRegistry.register(
    :class => RelationshipTuple,
    :schema_type => XSD::QName.new(NsTypes, "RelationshipTuple"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(nil, "subject")]],
      ["predicate", ["SOAP::SOAPString", XSD::QName.new(nil, "predicate")]],
      ["object", ["SOAP::SOAPString", XSD::QName.new(nil, "object")]],
      ["isLiteral", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isLiteral")]],
      ["datatype", ["SOAP::SOAPString", XSD::QName.new(nil, "datatype")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOf_xsd_string,
    :schema_type => XSD::QName.new(NsApi, "ArrayOf_xsd_string"),
    :schema_element => [
      ["item", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DatastreamControlGroup,
    :schema_type => XSD::QName.new(NsTypes, "DatastreamControlGroup")
  )

  LiteralRegistry.register(
    :class => Datastream,
    :schema_type => XSD::QName.new(NsTypes, "Datastream"),
    :schema_element => [
      ["controlGroup", ["DatastreamControlGroup", XSD::QName.new(nil, "controlGroup")]],
      ["iD", ["SOAP::SOAPString", XSD::QName.new(nil, "ID")]],
      ["versionID", ["SOAP::SOAPString", XSD::QName.new(nil, "versionID")]],
      ["altIDs", ["ArrayOf_xsd_string", XSD::QName.new(nil, "altIDs")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["versionable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "versionable")]],
      ["mIMEType", ["SOAP::SOAPString", XSD::QName.new(nil, "MIMEType")]],
      ["formatURI", ["SOAP::SOAPString", XSD::QName.new(nil, "formatURI")]],
      ["createDate", ["SOAP::SOAPString", XSD::QName.new(nil, "createDate")]],
      ["size", ["SOAP::SOAPLong", XSD::QName.new(nil, "size")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(nil, "location")]],
      ["checksumType", ["SOAP::SOAPString", XSD::QName.new(nil, "checksumType")]],
      ["checksum", ["SOAP::SOAPString", XSD::QName.new(nil, "checksum")]]
    ]
  )

  LiteralRegistry.register(
    :class => RelationshipTuple,
    :schema_type => XSD::QName.new(NsTypes, "RelationshipTuple"),
    :schema_element => [
      ["subject", ["SOAP::SOAPString", XSD::QName.new(nil, "subject")]],
      ["predicate", ["SOAP::SOAPString", XSD::QName.new(nil, "predicate")]],
      ["object", ["SOAP::SOAPString", XSD::QName.new(nil, "object")]],
      ["isLiteral", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isLiteral")]],
      ["datatype", ["SOAP::SOAPString", XSD::QName.new(nil, "datatype")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOf_xsd_string,
    :schema_type => XSD::QName.new(NsApi, "ArrayOf_xsd_string"),
    :schema_element => [
      ["item", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DatastreamControlGroup,
    :schema_type => XSD::QName.new(NsTypes, "DatastreamControlGroup")
  )

  LiteralRegistry.register(
    :class => Ingest,
    :schema_name => XSD::QName.new(NsTypes, "ingest"),
    :schema_element => [
      ["objectXML", ["SOAP::SOAPBase64", XSD::QName.new(nil, "objectXML")]],
      ["format", ["SOAP::SOAPString", XSD::QName.new(nil, "format")]],
      ["logMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "logMessage")]]
    ]
  )

  LiteralRegistry.register(
    :class => IngestResponse,
    :schema_name => XSD::QName.new(NsTypes, "ingestResponse"),
    :schema_element => [
      ["objectPID", ["SOAP::SOAPString", XSD::QName.new(nil, "objectPID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ModifyObject,
    :schema_name => XSD::QName.new(NsTypes, "modifyObject"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["ownerId", ["SOAP::SOAPString", XSD::QName.new(nil, "ownerId")]],
      ["logMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "logMessage")]]
    ]
  )

  LiteralRegistry.register(
    :class => ModifyObjectResponse,
    :schema_name => XSD::QName.new(NsTypes, "modifyObjectResponse"),
    :schema_element => [
      ["modifiedDate", ["SOAP::SOAPString", XSD::QName.new(nil, "modifiedDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetObjectXML,
    :schema_name => XSD::QName.new(NsTypes, "getObjectXML"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetObjectXMLResponse,
    :schema_name => XSD::QName.new(NsTypes, "getObjectXMLResponse"),
    :schema_element => [
      ["objectXML", ["SOAP::SOAPBase64", XSD::QName.new(nil, "objectXML")]]
    ]
  )

  LiteralRegistry.register(
    :class => Export,
    :schema_name => XSD::QName.new(NsTypes, "export"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["format", ["SOAP::SOAPString", XSD::QName.new(nil, "format")]],
      ["context", ["SOAP::SOAPString", XSD::QName.new(nil, "context")]]
    ]
  )

  LiteralRegistry.register(
    :class => ExportResponse,
    :schema_name => XSD::QName.new(NsTypes, "exportResponse"),
    :schema_element => [
      ["objectXML", ["SOAP::SOAPBase64", XSD::QName.new(nil, "objectXML")]]
    ]
  )

  LiteralRegistry.register(
    :class => PurgeObject,
    :schema_name => XSD::QName.new(NsTypes, "purgeObject"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["logMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "logMessage")]],
      ["force", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "force")]]
    ]
  )

  LiteralRegistry.register(
    :class => PurgeObjectResponse,
    :schema_name => XSD::QName.new(NsTypes, "purgeObjectResponse"),
    :schema_element => [
      ["purgedDate", ["SOAP::SOAPString", XSD::QName.new(nil, "purgedDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddDatastream,
    :schema_name => XSD::QName.new(NsTypes, "addDatastream"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["dsID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsID")]],
      ["altIDs", ["SOAP::SOAPString[]", XSD::QName.new(nil, "altIDs")], [1, nil]],
      ["dsLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "dsLabel")]],
      ["versionable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "versionable")]],
      ["mIMEType", ["SOAP::SOAPString", XSD::QName.new(nil, "MIMEType")]],
      ["formatURI", ["SOAP::SOAPString", XSD::QName.new(nil, "formatURI")]],
      ["dsLocation", ["SOAP::SOAPString", XSD::QName.new(nil, "dsLocation")]],
      ["controlGroup", ["SOAP::SOAPString", XSD::QName.new(nil, "controlGroup")]],
      ["dsState", ["SOAP::SOAPString", XSD::QName.new(nil, "dsState")]],
      ["checksumType", ["SOAP::SOAPString", XSD::QName.new(nil, "checksumType")]],
      ["checksum", ["SOAP::SOAPString", XSD::QName.new(nil, "checksum")]],
      ["logMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "logMessage")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddDatastreamResponse,
    :schema_name => XSD::QName.new(NsTypes, "addDatastreamResponse"),
    :schema_element => [
      ["datastreamID", ["SOAP::SOAPString", XSD::QName.new(nil, "datastreamID")]]
    ]
  )

  LiteralRegistry.register(
    :class => ModifyDatastreamByReference,
    :schema_name => XSD::QName.new(NsTypes, "modifyDatastreamByReference"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["dsID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsID")]],
      ["altIDs", ["SOAP::SOAPString[]", XSD::QName.new(nil, "altIDs")], [1, nil]],
      ["dsLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "dsLabel")]],
      ["mIMEType", ["SOAP::SOAPString", XSD::QName.new(nil, "MIMEType")]],
      ["formatURI", ["SOAP::SOAPString", XSD::QName.new(nil, "formatURI")]],
      ["dsLocation", ["SOAP::SOAPString", XSD::QName.new(nil, "dsLocation")]],
      ["checksumType", ["SOAP::SOAPString", XSD::QName.new(nil, "checksumType")]],
      ["checksum", ["SOAP::SOAPString", XSD::QName.new(nil, "checksum")]],
      ["logMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "logMessage")]],
      ["force", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "force")]]
    ]
  )

  LiteralRegistry.register(
    :class => ModifyDatastreamByReferenceResponse,
    :schema_name => XSD::QName.new(NsTypes, "modifyDatastreamByReferenceResponse"),
    :schema_element => [
      ["modifiedDate", ["SOAP::SOAPString", XSD::QName.new(nil, "modifiedDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => ModifyDatastreamByValue,
    :schema_name => XSD::QName.new(NsTypes, "modifyDatastreamByValue"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["dsID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsID")]],
      ["altIDs", ["SOAP::SOAPString[]", XSD::QName.new(nil, "altIDs")], [1, nil]],
      ["dsLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "dsLabel")]],
      ["mIMEType", ["SOAP::SOAPString", XSD::QName.new(nil, "MIMEType")]],
      ["formatURI", ["SOAP::SOAPString", XSD::QName.new(nil, "formatURI")]],
      ["dsContent", ["SOAP::SOAPBase64", XSD::QName.new(nil, "dsContent")]],
      ["checksumType", ["SOAP::SOAPString", XSD::QName.new(nil, "checksumType")]],
      ["checksum", ["SOAP::SOAPString", XSD::QName.new(nil, "checksum")]],
      ["logMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "logMessage")]],
      ["force", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "force")]]
    ]
  )

  LiteralRegistry.register(
    :class => ModifyDatastreamByValueResponse,
    :schema_name => XSD::QName.new(NsTypes, "modifyDatastreamByValueResponse"),
    :schema_element => [
      ["modifiedDate", ["SOAP::SOAPString", XSD::QName.new(nil, "modifiedDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => SetDatastreamState,
    :schema_name => XSD::QName.new(NsTypes, "setDatastreamState"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["dsID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsID")]],
      ["dsState", ["SOAP::SOAPString", XSD::QName.new(nil, "dsState")]],
      ["logMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "logMessage")]]
    ]
  )

  LiteralRegistry.register(
    :class => SetDatastreamStateResponse,
    :schema_name => XSD::QName.new(NsTypes, "setDatastreamStateResponse"),
    :schema_element => [
      ["modifiedDate", ["SOAP::SOAPString", XSD::QName.new(nil, "modifiedDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => SetDatastreamVersionable,
    :schema_name => XSD::QName.new(NsTypes, "setDatastreamVersionable"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["dsID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsID")]],
      ["versionable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "versionable")]],
      ["logMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "logMessage")]]
    ]
  )

  LiteralRegistry.register(
    :class => SetDatastreamVersionableResponse,
    :schema_name => XSD::QName.new(NsTypes, "setDatastreamVersionableResponse"),
    :schema_element => [
      ["modifiedDate", ["SOAP::SOAPString", XSD::QName.new(nil, "modifiedDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => CompareDatastreamChecksum,
    :schema_name => XSD::QName.new(NsTypes, "compareDatastreamChecksum"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["dsID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsID")]],
      ["versionDate", ["SOAP::SOAPString", XSD::QName.new(nil, "versionDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => CompareDatastreamChecksumResponse,
    :schema_name => XSD::QName.new(NsTypes, "compareDatastreamChecksumResponse"),
    :schema_element => [
      ["checksum", ["SOAP::SOAPString", XSD::QName.new(nil, "checksum")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDatastream,
    :schema_name => XSD::QName.new(NsTypes, "getDatastream"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["dsID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsID")]],
      ["asOfDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "asOfDateTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDatastreamResponse,
    :schema_name => XSD::QName.new(NsTypes, "getDatastreamResponse"),
    :schema_element => [
      ["datastream", ["Datastream", XSD::QName.new(nil, "datastream")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDatastreams,
    :schema_name => XSD::QName.new(NsTypes, "getDatastreams"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["asOfDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "asOfDateTime")]],
      ["dsState", ["SOAP::SOAPString", XSD::QName.new(nil, "dsState")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDatastreamsResponse,
    :schema_name => XSD::QName.new(NsTypes, "getDatastreamsResponse"),
    :schema_element => [
      ["datastream", ["Datastream[]", XSD::QName.new(nil, "datastream")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDatastreamHistory,
    :schema_name => XSD::QName.new(NsTypes, "getDatastreamHistory"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["dsID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsID")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDatastreamHistoryResponse,
    :schema_name => XSD::QName.new(NsTypes, "getDatastreamHistoryResponse"),
    :schema_element => [
      ["datastream", ["Datastream[]", XSD::QName.new(nil, "datastream")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => PurgeDatastream,
    :schema_name => XSD::QName.new(NsTypes, "purgeDatastream"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["dsID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsID")]],
      ["startDT", ["SOAP::SOAPString", XSD::QName.new(nil, "startDT")]],
      ["endDT", ["SOAP::SOAPString", XSD::QName.new(nil, "endDT")]],
      ["logMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "logMessage")]],
      ["force", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "force")]]
    ]
  )

  LiteralRegistry.register(
    :class => PurgeDatastreamResponse,
    :schema_name => XSD::QName.new(NsTypes, "purgeDatastreamResponse"),
    :schema_element => [
      ["purgedVersionDate", ["SOAP::SOAPString[]", XSD::QName.new(nil, "purgedVersionDate")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetNextPID,
    :schema_name => XSD::QName.new(NsTypes, "getNextPID"),
    :schema_element => [
      ["numPIDs", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(nil, "numPIDs")]],
      ["pidNamespace", ["SOAP::SOAPString", XSD::QName.new(nil, "pidNamespace")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetNextPIDResponse,
    :schema_name => XSD::QName.new(NsTypes, "getNextPIDResponse"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString[]", XSD::QName.new(nil, "pid")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetRelationships,
    :schema_name => XSD::QName.new(NsTypes, "getRelationships"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["relationship", ["SOAP::SOAPString", XSD::QName.new(nil, "relationship")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetRelationshipsResponse,
    :schema_name => XSD::QName.new(NsTypes, "getRelationshipsResponse"),
    :schema_element => [
      ["relationships", ["RelationshipTuple[]", XSD::QName.new(nil, "relationships")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AddRelationship,
    :schema_name => XSD::QName.new(NsTypes, "addRelationship"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["relationship", ["SOAP::SOAPString", XSD::QName.new(nil, "relationship")]],
      ["object", ["SOAP::SOAPString", XSD::QName.new(nil, "object")]],
      ["isLiteral", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isLiteral")]],
      ["datatype", ["SOAP::SOAPString", XSD::QName.new(nil, "datatype")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddRelationshipResponse,
    :schema_name => XSD::QName.new(NsTypes, "addRelationshipResponse"),
    :schema_element => [
      ["added", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "added")]]
    ]
  )

  LiteralRegistry.register(
    :class => PurgeRelationship,
    :schema_name => XSD::QName.new(NsTypes, "purgeRelationship"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["relationship", ["SOAP::SOAPString", XSD::QName.new(nil, "relationship")]],
      ["object", ["SOAP::SOAPString", XSD::QName.new(nil, "object")]],
      ["isLiteral", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isLiteral")]],
      ["datatype", ["SOAP::SOAPString", XSD::QName.new(nil, "datatype")]]
    ]
  )

  LiteralRegistry.register(
    :class => PurgeRelationshipResponse,
    :schema_name => XSD::QName.new(NsTypes, "purgeRelationshipResponse"),
    :schema_element => [
      ["purged", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "purged")]]
    ]
  )
end
