require File.join(File.dirname(__FILE__), 'Fedora-API-M-WSDL')
require 'soap/mapping'

module FedoraAPIMWSDLMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsTypes = "http://www.fedora.info/definitions/1/0/types/"

  EncodedRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfString"),
    :schema_element => [
      ["item", ["SOAP::SOAPString[]", XSD::QName.new(nil, "item")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Condition,
    :schema_type => XSD::QName.new(NsTypes, "Condition"),
    :schema_element => [
      ["property", ["SOAP::SOAPString", XSD::QName.new(nil, "property")]],
      ["operator", ["ComparisonOperator", XSD::QName.new(nil, "operator")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]]
    ]
  )

  EncodedRegistry.register(
    :class => Datastream,
    :schema_type => XSD::QName.new(NsTypes, "Datastream"),
    :schema_element => [
      ["controlGroup", ["DatastreamControlGroup", XSD::QName.new(nil, "controlGroup")]],
      ["iD", ["SOAP::SOAPString", XSD::QName.new(nil, "ID")]],
      ["versionID", ["SOAP::SOAPString", XSD::QName.new(nil, "versionID")]],
      ["altIDs", ["ArrayOfString", XSD::QName.new(nil, "altIDs")]],
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
    :class => DatastreamBindingMap,
    :schema_type => XSD::QName.new(NsTypes, "DatastreamBindingMap"),
    :schema_element => [
      ["dsBindMapID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsBindMapID")]],
      ["dsBindMechanismPID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsBindMechanismPID")]],
      ["dsBindMapLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "dsBindMapLabel")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")]],
      ["dsBindings", ["DatastreamBindingMap::DsBindings", XSD::QName.new(nil, "dsBindings")]]
    ]
  )

  EncodedRegistry.register(
    :class => DatastreamBindingMap::DsBindings,
    :schema_name => XSD::QName.new(nil, "dsBindings"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["dsBinding", "DatastreamBinding[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DatastreamBinding,
    :schema_type => XSD::QName.new(NsTypes, "DatastreamBinding"),
    :schema_element => [
      ["bindKeyName", ["SOAP::SOAPString", XSD::QName.new(nil, "bindKeyName")]],
      ["bindLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "bindLabel")]],
      ["datastreamID", ["SOAP::SOAPString", XSD::QName.new(nil, "datastreamID")]],
      ["seqNo", ["SOAP::SOAPString", XSD::QName.new(nil, "seqNo")]]
    ]
  )

  EncodedRegistry.register(
    :class => DatastreamDef,
    :schema_type => XSD::QName.new(NsTypes, "DatastreamDef"),
    :schema_element => [
      ["iD", ["SOAP::SOAPString", XSD::QName.new(nil, "ID")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["mIMEType", ["SOAP::SOAPString", XSD::QName.new(nil, "MIMEType")]]
    ]
  )

  EncodedRegistry.register(
    :class => FieldSearchQuery,
    :schema_type => XSD::QName.new(NsTypes, "FieldSearchQuery"),
    :schema_element => [ :choice,
      ["conditions", ["FieldSearchQuery::Conditions", XSD::QName.new(nil, "conditions")]],
      ["terms", ["SOAP::SOAPString", XSD::QName.new(nil, "terms")]]
    ]
  )

  EncodedRegistry.register(
    :class => FieldSearchQuery::Conditions,
    :schema_name => XSD::QName.new(nil, "conditions"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["condition", "Condition[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => FieldSearchResult,
    :schema_type => XSD::QName.new(NsTypes, "FieldSearchResult"),
    :schema_element => [
      ["listSession", ["ListSession", XSD::QName.new(nil, "listSession")], [0, 1]],
      ["resultList", ["FieldSearchResult::ResultList", XSD::QName.new(nil, "resultList")]]
    ]
  )

  EncodedRegistry.register(
    :class => FieldSearchResult::ResultList,
    :schema_name => XSD::QName.new(nil, "resultList"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["objectFields", "ObjectFields[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ListSession,
    :schema_type => XSD::QName.new(NsTypes, "ListSession"),
    :schema_element => [
      ["token", ["SOAP::SOAPString", XSD::QName.new(nil, "token")]],
      ["cursor", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(nil, "cursor")], [0, 1]],
      ["completeListSize", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(nil, "completeListSize")], [0, 1]],
      ["expirationDate", ["SOAP::SOAPString", XSD::QName.new(nil, "expirationDate")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MethodParmDef,
    :schema_type => XSD::QName.new(NsTypes, "MethodParmDef"),
    :schema_element => [
      ["parmName", ["SOAP::SOAPString", XSD::QName.new(nil, "parmName")]],
      ["parmType", ["SOAP::SOAPString", XSD::QName.new(nil, "parmType")]],
      ["parmDefaultValue", ["SOAP::SOAPString", XSD::QName.new(nil, "parmDefaultValue")]],
      ["parmDomainValues", ["ArrayOfString", XSD::QName.new(nil, "parmDomainValues")]],
      ["parmRequired", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "parmRequired")]],
      ["parmLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "parmLabel")]],
      ["parmPassBy", ["SOAP::SOAPString", XSD::QName.new(nil, "parmPassBy")]],
      ["pASS_BY_REF", ["PassByRef", XSD::QName.new(nil, "PASS_BY_REF")]],
      ["pASS_BY_VALUE", ["PassByValue", XSD::QName.new(nil, "PASS_BY_VALUE")]],
      ["dATASTREAM_INPUT", ["DatastreamInputType", XSD::QName.new(nil, "DATASTREAM_INPUT")]],
      ["uSER_INPUT", ["UserInputType", XSD::QName.new(nil, "USER_INPUT")]],
      ["dEFAULT_INPUT", ["DefaultInputType", XSD::QName.new(nil, "DEFAULT_INPUT")]]
    ]
  )

  EncodedRegistry.register(
    :class => MIMETypedStream,
    :schema_type => XSD::QName.new(NsTypes, "MIMETypedStream"),
    :schema_element => [
      ["mIMEType", ["SOAP::SOAPString", XSD::QName.new(nil, "MIMEType")]],
      ["stream", ["SOAP::SOAPBase64", XSD::QName.new(nil, "stream")]],
      ["header", ["MIMETypedStream::Header", XSD::QName.new(nil, "header")]]
    ]
  )

  EncodedRegistry.register(
    :class => MIMETypedStream::Header,
    :schema_name => XSD::QName.new(nil, "header"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["property", "Property[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ObjectFields,
    :schema_type => XSD::QName.new(NsTypes, "ObjectFields"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["ownerId", ["SOAP::SOAPString", XSD::QName.new(nil, "ownerId")], [0, 1]],
      ["cDate", ["SOAP::SOAPString", XSD::QName.new(nil, "cDate")], [0, 1]],
      ["mDate", ["SOAP::SOAPString", XSD::QName.new(nil, "mDate")], [0, 1]],
      ["dcmDate", ["SOAP::SOAPString", XSD::QName.new(nil, "dcmDate")], [0, 1]],
      ["title", ["SOAP::SOAPString[]", XSD::QName.new(nil, "title")], [0, nil]],
      ["creator", ["SOAP::SOAPString[]", XSD::QName.new(nil, "creator")], [0, nil]],
      ["subject", ["SOAP::SOAPString[]", XSD::QName.new(nil, "subject")], [0, nil]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(nil, "description")], [0, nil]],
      ["publisher", ["SOAP::SOAPString[]", XSD::QName.new(nil, "publisher")], [0, nil]],
      ["contributor", ["SOAP::SOAPString[]", XSD::QName.new(nil, "contributor")], [0, nil]],
      ["date", ["SOAP::SOAPString[]", XSD::QName.new(nil, "date")], [0, nil]],
      ["type", ["SOAP::SOAPString[]", XSD::QName.new(nil, "type")], [0, nil]],
      ["format", ["SOAP::SOAPString[]", XSD::QName.new(nil, "format")], [0, nil]],
      ["identifier", ["SOAP::SOAPString[]", XSD::QName.new(nil, "identifier")], [0, nil]],
      ["source", ["SOAP::SOAPString[]", XSD::QName.new(nil, "source")], [0, nil]],
      ["language", ["SOAP::SOAPString[]", XSD::QName.new(nil, "language")], [0, nil]],
      ["relation", ["SOAP::SOAPString[]", XSD::QName.new(nil, "relation")], [0, nil]],
      ["coverage", ["SOAP::SOAPString[]", XSD::QName.new(nil, "coverage")], [0, nil]],
      ["rights", ["SOAP::SOAPString[]", XSD::QName.new(nil, "rights")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ObjectMethodsDef,
    :schema_type => XSD::QName.new(NsTypes, "ObjectMethodsDef"),
    :schema_element => [
      ["pID", ["SOAP::SOAPString", XSD::QName.new(nil, "PID")]],
      ["serviceDefinitionPID", ["SOAP::SOAPString", XSD::QName.new(nil, "serviceDefinitionPID")]],
      ["methodName", ["SOAP::SOAPString", XSD::QName.new(nil, "methodName")]],
      ["methodParmDefs", ["ObjectMethodsDef::MethodParmDefs", XSD::QName.new(nil, "methodParmDefs")]],
      ["asOfDate", ["SOAP::SOAPString", XSD::QName.new(nil, "asOfDate")]]
    ]
  )

  EncodedRegistry.register(
    :class => ObjectMethodsDef::MethodParmDefs,
    :schema_name => XSD::QName.new(nil, "methodParmDefs"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["methodParmDef", "MethodParmDef[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ObjectProfile,
    :schema_type => XSD::QName.new(NsTypes, "ObjectProfile"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["objLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "objLabel")]],
      ["objModels", ["ObjectProfile::ObjModels", XSD::QName.new(nil, "objModels")]],
      ["objCreateDate", ["SOAP::SOAPString", XSD::QName.new(nil, "objCreateDate")]],
      ["objLastModDate", ["SOAP::SOAPString", XSD::QName.new(nil, "objLastModDate")]],
      ["objDissIndexViewURL", ["SOAP::SOAPString", XSD::QName.new(nil, "objDissIndexViewURL")]],
      ["objItemIndexViewURL", ["SOAP::SOAPString", XSD::QName.new(nil, "objItemIndexViewURL")]]
    ]
  )

  EncodedRegistry.register(
    :class => ObjectProfile::ObjModels,
    :schema_name => XSD::QName.new(nil, "objModels"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["model", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Property,
    :schema_type => XSD::QName.new(NsTypes, "Property"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]]
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
    :class => RepositoryInfo,
    :schema_type => XSD::QName.new(NsTypes, "RepositoryInfo"),
    :schema_element => [
      ["repositoryName", ["SOAP::SOAPString", XSD::QName.new(nil, "repositoryName")]],
      ["repositoryVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "repositoryVersion")]],
      ["repositoryBaseURL", ["SOAP::SOAPString", XSD::QName.new(nil, "repositoryBaseURL")]],
      ["repositoryPIDNamespace", ["SOAP::SOAPString", XSD::QName.new(nil, "repositoryPIDNamespace")]],
      ["defaultExportFormat", ["SOAP::SOAPString", XSD::QName.new(nil, "defaultExportFormat")]],
      ["oAINamespace", ["SOAP::SOAPString", XSD::QName.new(nil, "OAINamespace")]],
      ["adminEmailList", ["ArrayOfString", XSD::QName.new(nil, "adminEmailList")]],
      ["samplePID", ["SOAP::SOAPString", XSD::QName.new(nil, "samplePID")]],
      ["sampleOAIIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "sampleOAIIdentifier")]],
      ["sampleSearchURL", ["SOAP::SOAPString", XSD::QName.new(nil, "sampleSearchURL")]],
      ["sampleAccessURL", ["SOAP::SOAPString", XSD::QName.new(nil, "sampleAccessURL")]],
      ["sampleOAIURL", ["SOAP::SOAPString", XSD::QName.new(nil, "sampleOAIURL")]],
      ["retainPIDs", ["ArrayOfString", XSD::QName.new(nil, "retainPIDs")]]
    ]
  )

  EncodedRegistry.register(
    :class => ComparisonOperator,
    :schema_type => XSD::QName.new(NsTypes, "ComparisonOperator")
  )

  EncodedRegistry.register(
    :class => DatastreamControlGroup,
    :schema_type => XSD::QName.new(NsTypes, "DatastreamControlGroup")
  )

  EncodedRegistry.register(
    :class => PassByRef,
    :schema_type => XSD::QName.new(NsTypes, "passByRef")
  )

  EncodedRegistry.register(
    :class => PassByValue,
    :schema_type => XSD::QName.new(NsTypes, "passByValue")
  )

  EncodedRegistry.register(
    :class => DatastreamInputType,
    :schema_type => XSD::QName.new(NsTypes, "datastreamInputType")
  )

  EncodedRegistry.register(
    :class => UserInputType,
    :schema_type => XSD::QName.new(NsTypes, "userInputType")
  )

  EncodedRegistry.register(
    :class => DefaultInputType,
    :schema_type => XSD::QName.new(NsTypes, "defaultInputType")
  )

  LiteralRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsTypes, "ArrayOfString"),
    :schema_element => [
      ["item", ["SOAP::SOAPString[]", XSD::QName.new(nil, "item")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Condition,
    :schema_type => XSD::QName.new(NsTypes, "Condition"),
    :schema_element => [
      ["property", ["SOAP::SOAPString", XSD::QName.new(nil, "property")]],
      ["operator", ["ComparisonOperator", XSD::QName.new(nil, "operator")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]]
    ]
  )

  LiteralRegistry.register(
    :class => Datastream,
    :schema_type => XSD::QName.new(NsTypes, "Datastream"),
    :schema_element => [
      ["controlGroup", ["DatastreamControlGroup", XSD::QName.new(nil, "controlGroup")]],
      ["iD", ["SOAP::SOAPString", XSD::QName.new(nil, "ID")]],
      ["versionID", ["SOAP::SOAPString", XSD::QName.new(nil, "versionID")]],
      ["altIDs", ["ArrayOfString", XSD::QName.new(nil, "altIDs")]],
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
    :class => DatastreamBindingMap,
    :schema_type => XSD::QName.new(NsTypes, "DatastreamBindingMap"),
    :schema_element => [
      ["dsBindMapID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsBindMapID")]],
      ["dsBindMechanismPID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsBindMechanismPID")]],
      ["dsBindMapLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "dsBindMapLabel")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")]],
      ["dsBindings", ["DatastreamBindingMap::DsBindings", XSD::QName.new(nil, "dsBindings")]]
    ]
  )

  LiteralRegistry.register(
    :class => DatastreamBindingMap::DsBindings,
    :schema_name => XSD::QName.new(nil, "dsBindings"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["dsBinding", "DatastreamBinding[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DatastreamBinding,
    :schema_type => XSD::QName.new(NsTypes, "DatastreamBinding"),
    :schema_element => [
      ["bindKeyName", ["SOAP::SOAPString", XSD::QName.new(nil, "bindKeyName")]],
      ["bindLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "bindLabel")]],
      ["datastreamID", ["SOAP::SOAPString", XSD::QName.new(nil, "datastreamID")]],
      ["seqNo", ["SOAP::SOAPString", XSD::QName.new(nil, "seqNo")]]
    ]
  )

  LiteralRegistry.register(
    :class => DatastreamDef,
    :schema_type => XSD::QName.new(NsTypes, "DatastreamDef"),
    :schema_element => [
      ["iD", ["SOAP::SOAPString", XSD::QName.new(nil, "ID")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["mIMEType", ["SOAP::SOAPString", XSD::QName.new(nil, "MIMEType")]]
    ]
  )

  LiteralRegistry.register(
    :class => FieldSearchQuery,
    :schema_type => XSD::QName.new(NsTypes, "FieldSearchQuery"),
    :schema_element => [ :choice,
      ["conditions", ["FieldSearchQuery::Conditions", XSD::QName.new(nil, "conditions")]],
      ["terms", ["SOAP::SOAPString", XSD::QName.new(nil, "terms")]]
    ]
  )

  LiteralRegistry.register(
    :class => FieldSearchQuery::Conditions,
    :schema_name => XSD::QName.new(nil, "conditions"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["condition", "Condition[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => FieldSearchResult,
    :schema_type => XSD::QName.new(NsTypes, "FieldSearchResult"),
    :schema_element => [
      ["listSession", ["ListSession", XSD::QName.new(nil, "listSession")], [0, 1]],
      ["resultList", ["FieldSearchResult::ResultList", XSD::QName.new(nil, "resultList")]]
    ]
  )

  LiteralRegistry.register(
    :class => FieldSearchResult::ResultList,
    :schema_name => XSD::QName.new(nil, "resultList"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["objectFields", "ObjectFields[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ListSession,
    :schema_type => XSD::QName.new(NsTypes, "ListSession"),
    :schema_element => [
      ["token", ["SOAP::SOAPString", XSD::QName.new(nil, "token")]],
      ["cursor", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(nil, "cursor")], [0, 1]],
      ["completeListSize", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(nil, "completeListSize")], [0, 1]],
      ["expirationDate", ["SOAP::SOAPString", XSD::QName.new(nil, "expirationDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MethodParmDef,
    :schema_type => XSD::QName.new(NsTypes, "MethodParmDef"),
    :schema_element => [
      ["parmName", ["SOAP::SOAPString", XSD::QName.new(nil, "parmName")]],
      ["parmType", ["SOAP::SOAPString", XSD::QName.new(nil, "parmType")]],
      ["parmDefaultValue", ["SOAP::SOAPString", XSD::QName.new(nil, "parmDefaultValue")]],
      ["parmDomainValues", ["ArrayOfString", XSD::QName.new(nil, "parmDomainValues")]],
      ["parmRequired", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "parmRequired")]],
      ["parmLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "parmLabel")]],
      ["parmPassBy", ["SOAP::SOAPString", XSD::QName.new(nil, "parmPassBy")]],
      ["pASS_BY_REF", ["PassByRef", XSD::QName.new(nil, "PASS_BY_REF")]],
      ["pASS_BY_VALUE", ["PassByValue", XSD::QName.new(nil, "PASS_BY_VALUE")]],
      ["dATASTREAM_INPUT", ["DatastreamInputType", XSD::QName.new(nil, "DATASTREAM_INPUT")]],
      ["uSER_INPUT", ["UserInputType", XSD::QName.new(nil, "USER_INPUT")]],
      ["dEFAULT_INPUT", ["DefaultInputType", XSD::QName.new(nil, "DEFAULT_INPUT")]]
    ]
  )

  LiteralRegistry.register(
    :class => MIMETypedStream,
    :schema_type => XSD::QName.new(NsTypes, "MIMETypedStream"),
    :schema_element => [
      ["mIMEType", ["SOAP::SOAPString", XSD::QName.new(nil, "MIMEType")]],
      ["stream", ["SOAP::SOAPBase64", XSD::QName.new(nil, "stream")]],
      ["header", ["MIMETypedStream::Header", XSD::QName.new(nil, "header")]]
    ]
  )

  LiteralRegistry.register(
    :class => MIMETypedStream::Header,
    :schema_name => XSD::QName.new(nil, "header"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["property", "Property[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ObjectFields,
    :schema_type => XSD::QName.new(NsTypes, "ObjectFields"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "state")], [0, 1]],
      ["ownerId", ["SOAP::SOAPString", XSD::QName.new(nil, "ownerId")], [0, 1]],
      ["cDate", ["SOAP::SOAPString", XSD::QName.new(nil, "cDate")], [0, 1]],
      ["mDate", ["SOAP::SOAPString", XSD::QName.new(nil, "mDate")], [0, 1]],
      ["dcmDate", ["SOAP::SOAPString", XSD::QName.new(nil, "dcmDate")], [0, 1]],
      ["title", ["SOAP::SOAPString[]", XSD::QName.new(nil, "title")], [0, nil]],
      ["creator", ["SOAP::SOAPString[]", XSD::QName.new(nil, "creator")], [0, nil]],
      ["subject", ["SOAP::SOAPString[]", XSD::QName.new(nil, "subject")], [0, nil]],
      ["description", ["SOAP::SOAPString[]", XSD::QName.new(nil, "description")], [0, nil]],
      ["publisher", ["SOAP::SOAPString[]", XSD::QName.new(nil, "publisher")], [0, nil]],
      ["contributor", ["SOAP::SOAPString[]", XSD::QName.new(nil, "contributor")], [0, nil]],
      ["date", ["SOAP::SOAPString[]", XSD::QName.new(nil, "date")], [0, nil]],
      ["type", ["SOAP::SOAPString[]", XSD::QName.new(nil, "type")], [0, nil]],
      ["format", ["SOAP::SOAPString[]", XSD::QName.new(nil, "format")], [0, nil]],
      ["identifier", ["SOAP::SOAPString[]", XSD::QName.new(nil, "identifier")], [0, nil]],
      ["source", ["SOAP::SOAPString[]", XSD::QName.new(nil, "source")], [0, nil]],
      ["language", ["SOAP::SOAPString[]", XSD::QName.new(nil, "language")], [0, nil]],
      ["relation", ["SOAP::SOAPString[]", XSD::QName.new(nil, "relation")], [0, nil]],
      ["coverage", ["SOAP::SOAPString[]", XSD::QName.new(nil, "coverage")], [0, nil]],
      ["rights", ["SOAP::SOAPString[]", XSD::QName.new(nil, "rights")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ObjectMethodsDef,
    :schema_type => XSD::QName.new(NsTypes, "ObjectMethodsDef"),
    :schema_element => [
      ["pID", ["SOAP::SOAPString", XSD::QName.new(nil, "PID")]],
      ["serviceDefinitionPID", ["SOAP::SOAPString", XSD::QName.new(nil, "serviceDefinitionPID")]],
      ["methodName", ["SOAP::SOAPString", XSD::QName.new(nil, "methodName")]],
      ["methodParmDefs", ["ObjectMethodsDef::MethodParmDefs", XSD::QName.new(nil, "methodParmDefs")]],
      ["asOfDate", ["SOAP::SOAPString", XSD::QName.new(nil, "asOfDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => ObjectMethodsDef::MethodParmDefs,
    :schema_name => XSD::QName.new(nil, "methodParmDefs"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["methodParmDef", "MethodParmDef[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ObjectProfile,
    :schema_type => XSD::QName.new(NsTypes, "ObjectProfile"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["objLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "objLabel")]],
      ["objModels", ["ObjectProfile::ObjModels", XSD::QName.new(nil, "objModels")]],
      ["objCreateDate", ["SOAP::SOAPString", XSD::QName.new(nil, "objCreateDate")]],
      ["objLastModDate", ["SOAP::SOAPString", XSD::QName.new(nil, "objLastModDate")]],
      ["objDissIndexViewURL", ["SOAP::SOAPString", XSD::QName.new(nil, "objDissIndexViewURL")]],
      ["objItemIndexViewURL", ["SOAP::SOAPString", XSD::QName.new(nil, "objItemIndexViewURL")]]
    ]
  )

  LiteralRegistry.register(
    :class => ObjectProfile::ObjModels,
    :schema_name => XSD::QName.new(nil, "objModels"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["model", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Property,
    :schema_type => XSD::QName.new(NsTypes, "Property"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "value")]]
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
    :class => RepositoryInfo,
    :schema_type => XSD::QName.new(NsTypes, "RepositoryInfo"),
    :schema_element => [
      ["repositoryName", ["SOAP::SOAPString", XSD::QName.new(nil, "repositoryName")]],
      ["repositoryVersion", ["SOAP::SOAPString", XSD::QName.new(nil, "repositoryVersion")]],
      ["repositoryBaseURL", ["SOAP::SOAPString", XSD::QName.new(nil, "repositoryBaseURL")]],
      ["repositoryPIDNamespace", ["SOAP::SOAPString", XSD::QName.new(nil, "repositoryPIDNamespace")]],
      ["defaultExportFormat", ["SOAP::SOAPString", XSD::QName.new(nil, "defaultExportFormat")]],
      ["oAINamespace", ["SOAP::SOAPString", XSD::QName.new(nil, "OAINamespace")]],
      ["adminEmailList", ["ArrayOfString", XSD::QName.new(nil, "adminEmailList")]],
      ["samplePID", ["SOAP::SOAPString", XSD::QName.new(nil, "samplePID")]],
      ["sampleOAIIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "sampleOAIIdentifier")]],
      ["sampleSearchURL", ["SOAP::SOAPString", XSD::QName.new(nil, "sampleSearchURL")]],
      ["sampleAccessURL", ["SOAP::SOAPString", XSD::QName.new(nil, "sampleAccessURL")]],
      ["sampleOAIURL", ["SOAP::SOAPString", XSD::QName.new(nil, "sampleOAIURL")]],
      ["retainPIDs", ["ArrayOfString", XSD::QName.new(nil, "retainPIDs")]]
    ]
  )

  LiteralRegistry.register(
    :class => ComparisonOperator,
    :schema_type => XSD::QName.new(NsTypes, "ComparisonOperator")
  )

  LiteralRegistry.register(
    :class => DatastreamControlGroup,
    :schema_type => XSD::QName.new(NsTypes, "DatastreamControlGroup")
  )

  LiteralRegistry.register(
    :class => PassByRef,
    :schema_type => XSD::QName.new(NsTypes, "passByRef")
  )

  LiteralRegistry.register(
    :class => PassByValue,
    :schema_type => XSD::QName.new(NsTypes, "passByValue")
  )

  LiteralRegistry.register(
    :class => DatastreamInputType,
    :schema_type => XSD::QName.new(NsTypes, "datastreamInputType")
  )

  LiteralRegistry.register(
    :class => UserInputType,
    :schema_type => XSD::QName.new(NsTypes, "userInputType")
  )

  LiteralRegistry.register(
    :class => DefaultInputType,
    :schema_type => XSD::QName.new(NsTypes, "defaultInputType")
  )

  LiteralRegistry.register(
    :class => DescribeRepository,
    :schema_name => XSD::QName.new(NsTypes, "describeRepository"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DescribeRepositoryResponse,
    :schema_name => XSD::QName.new(NsTypes, "describeRepositoryResponse"),
    :schema_element => [
      ["repositoryInfo", ["RepositoryInfo", XSD::QName.new(nil, "repositoryInfo")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetObjectProfile,
    :schema_name => XSD::QName.new(NsTypes, "getObjectProfile"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["asOfDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "asOfDateTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetObjectProfileResponse,
    :schema_name => XSD::QName.new(NsTypes, "getObjectProfileResponse"),
    :schema_element => [
      ["objectProfile", ["ObjectProfile", XSD::QName.new(nil, "objectProfile")]]
    ]
  )

  LiteralRegistry.register(
    :class => ListMethods,
    :schema_name => XSD::QName.new(NsTypes, "listMethods"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["asOfDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "asOfDateTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => ListMethodsResponse,
    :schema_name => XSD::QName.new(NsTypes, "listMethodsResponse"),
    :schema_element => [
      ["objectMethod", ["ObjectMethodsDef[]", XSD::QName.new(nil, "objectMethod")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ListDatastreams,
    :schema_name => XSD::QName.new(NsTypes, "listDatastreams"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["asOfDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "asOfDateTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => ListDatastreamsResponse,
    :schema_name => XSD::QName.new(NsTypes, "listDatastreamsResponse"),
    :schema_element => [
      ["datastreamDef", ["DatastreamDef[]", XSD::QName.new(nil, "datastreamDef")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDatastreamDissemination,
    :schema_name => XSD::QName.new(NsTypes, "getDatastreamDissemination"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["dsID", ["SOAP::SOAPString", XSD::QName.new(nil, "dsID")]],
      ["asOfDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "asOfDateTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDatastreamDisseminationResponse,
    :schema_name => XSD::QName.new(NsTypes, "getDatastreamDisseminationResponse"),
    :schema_element => [
      ["dissemination", ["MIMETypedStream", XSD::QName.new(nil, "dissemination")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDissemination,
    :schema_name => XSD::QName.new(NsTypes, "getDissemination"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]],
      ["serviceDefinitionPid", ["SOAP::SOAPString", XSD::QName.new(nil, "serviceDefinitionPid")]],
      ["methodName", ["SOAP::SOAPString", XSD::QName.new(nil, "methodName")]],
      ["parameters", ["GetDissemination::Parameters", XSD::QName.new(nil, "parameters")]],
      ["asOfDateTime", ["SOAP::SOAPString", XSD::QName.new(nil, "asOfDateTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDissemination::Parameters,
    :schema_name => XSD::QName.new(nil, "parameters"),
    :is_anonymous => true,
    :schema_qualified => false,
    :schema_element => [
      ["parameter", "Property[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDisseminationResponse,
    :schema_name => XSD::QName.new(NsTypes, "getDisseminationResponse"),
    :schema_element => [
      ["dissemination", ["MIMETypedStream", XSD::QName.new(nil, "dissemination")]]
    ]
  )

  LiteralRegistry.register(
    :class => FindObjects,
    :schema_name => XSD::QName.new(NsTypes, "findObjects"),
    :schema_element => [
      ["resultFields", ["ArrayOfString", XSD::QName.new(nil, "resultFields")]],
      ["maxResults", ["SOAP::SOAPNonNegativeInteger", XSD::QName.new(nil, "maxResults")]],
      ["query", ["FieldSearchQuery", XSD::QName.new(nil, "query")]]
    ]
  )

  LiteralRegistry.register(
    :class => FindObjectsResponse,
    :schema_name => XSD::QName.new(NsTypes, "findObjectsResponse"),
    :schema_element => [
      ["result", ["FieldSearchResult", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ResumeFindObjects,
    :schema_name => XSD::QName.new(NsTypes, "resumeFindObjects"),
    :schema_element => [
      ["sessionToken", ["SOAP::SOAPString", XSD::QName.new(nil, "sessionToken")]]
    ]
  )

  LiteralRegistry.register(
    :class => ResumeFindObjectsResponse,
    :schema_name => XSD::QName.new(NsTypes, "resumeFindObjectsResponse"),
    :schema_element => [
      ["result", ["FieldSearchResult", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetObjectHistory,
    :schema_name => XSD::QName.new(NsTypes, "getObjectHistory"),
    :schema_element => [
      ["pid", ["SOAP::SOAPString", XSD::QName.new(nil, "pid")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetObjectHistoryResponse,
    :schema_name => XSD::QName.new(NsTypes, "getObjectHistoryResponse"),
    :schema_element => [
      ["modifiedDate", ["SOAP::SOAPString[]", XSD::QName.new(nil, "modifiedDate")], [0, nil]]
    ]
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
      ["altIDs", ["ArrayOfString", XSD::QName.new(nil, "altIDs")]],
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
      ["altIDs", ["ArrayOfString", XSD::QName.new(nil, "altIDs")]],
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
      ["altIDs", ["ArrayOfString", XSD::QName.new(nil, "altIDs")]],
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
      ["datastream", ["Datastream[]", XSD::QName.new(nil, "datastream")], [0, nil]]
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
      ["datastream", ["Datastream[]", XSD::QName.new(nil, "datastream")], [0, nil]]
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
      ["purgedVersionDate", ["SOAP::SOAPString[]", XSD::QName.new(nil, "purgedVersionDate")], [0, nil]]
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
      ["pid", ["SOAP::SOAPString[]", XSD::QName.new(nil, "pid")], [0, nil]]
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
      ["relationships", ["RelationshipTuple[]", XSD::QName.new(nil, "relationships")], [0, nil]]
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
