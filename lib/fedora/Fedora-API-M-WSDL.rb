require 'xsd/qname'

# {http://www.fedora.info/definitions/1/0/types/}ArrayOfString
class ArrayOfString < ::Array
end

# {http://www.fedora.info/definitions/1/0/types/}Condition
#   property - SOAP::SOAPString
#   operator - ComparisonOperator
#   value - SOAP::SOAPString
class Condition
  attr_accessor :property
  attr_accessor :operator
  attr_accessor :value

  def initialize(property = nil, operator = nil, value = nil)
    @property = property
    @operator = operator
    @value = value
  end
end

# {http://www.fedora.info/definitions/1/0/types/}Datastream
#   controlGroup - DatastreamControlGroup
#   iD - SOAP::SOAPString
#   versionID - SOAP::SOAPString
#   altIDs - ArrayOfString
#   label - SOAP::SOAPString
#   versionable - SOAP::SOAPBoolean
#   mIMEType - SOAP::SOAPString
#   formatURI - SOAP::SOAPString
#   createDate - SOAP::SOAPString
#   size - SOAP::SOAPLong
#   state - SOAP::SOAPString
#   location - SOAP::SOAPString
#   checksumType - SOAP::SOAPString
#   checksum - SOAP::SOAPString
class Datastream
  attr_accessor :controlGroup
  attr_accessor :iD
  attr_accessor :versionID
  attr_accessor :altIDs
  attr_accessor :label
  attr_accessor :versionable
  attr_accessor :mIMEType
  attr_accessor :formatURI
  attr_accessor :createDate
  attr_accessor :size
  attr_accessor :state
  attr_accessor :location
  attr_accessor :checksumType
  attr_accessor :checksum

  def initialize(controlGroup = nil, iD = nil, versionID = nil, altIDs = nil, label = nil, versionable = nil, mIMEType = nil, formatURI = nil, createDate = nil, size = nil, state = nil, location = nil, checksumType = nil, checksum = nil)
    @controlGroup = controlGroup
    @iD = iD
    @versionID = versionID
    @altIDs = altIDs
    @label = label
    @versionable = versionable
    @mIMEType = mIMEType
    @formatURI = formatURI
    @createDate = createDate
    @size = size
    @state = state
    @location = location
    @checksumType = checksumType
    @checksum = checksum
  end
end

# {http://www.fedora.info/definitions/1/0/types/}DatastreamBindingMap
#   dsBindMapID - SOAP::SOAPString
#   dsBindMechanismPID - SOAP::SOAPString
#   dsBindMapLabel - SOAP::SOAPString
#   state - SOAP::SOAPString
#   dsBindings - DatastreamBindingMap::DsBindings
class DatastreamBindingMap

  # inner class for member: dsBindings
  # {}dsBindings
  class DsBindings < ::Array
  end

  attr_accessor :dsBindMapID
  attr_accessor :dsBindMechanismPID
  attr_accessor :dsBindMapLabel
  attr_accessor :state
  attr_accessor :dsBindings

  def initialize(dsBindMapID = nil, dsBindMechanismPID = nil, dsBindMapLabel = nil, state = nil, dsBindings = nil)
    @dsBindMapID = dsBindMapID
    @dsBindMechanismPID = dsBindMechanismPID
    @dsBindMapLabel = dsBindMapLabel
    @state = state
    @dsBindings = dsBindings
  end
end

# {http://www.fedora.info/definitions/1/0/types/}DatastreamBinding
#   bindKeyName - SOAP::SOAPString
#   bindLabel - SOAP::SOAPString
#   datastreamID - SOAP::SOAPString
#   seqNo - SOAP::SOAPString
class DatastreamBinding
  attr_accessor :bindKeyName
  attr_accessor :bindLabel
  attr_accessor :datastreamID
  attr_accessor :seqNo

  def initialize(bindKeyName = nil, bindLabel = nil, datastreamID = nil, seqNo = nil)
    @bindKeyName = bindKeyName
    @bindLabel = bindLabel
    @datastreamID = datastreamID
    @seqNo = seqNo
  end
end

# {http://www.fedora.info/definitions/1/0/types/}DatastreamDef
#   iD - SOAP::SOAPString
#   label - SOAP::SOAPString
#   mIMEType - SOAP::SOAPString
class DatastreamDef
  attr_accessor :iD
  attr_accessor :label
  attr_accessor :mIMEType

  def initialize(iD = nil, label = nil, mIMEType = nil)
    @iD = iD
    @label = label
    @mIMEType = mIMEType
  end
end

# {http://www.fedora.info/definitions/1/0/types/}FieldSearchQuery
#   conditions - FieldSearchQuery::Conditions
#   terms - SOAP::SOAPString
class FieldSearchQuery

  # inner class for member: conditions
  # {}conditions
  class Conditions < ::Array
  end

  attr_accessor :conditions
  attr_accessor :terms

  def initialize(conditions = nil, terms = nil)
    @conditions = conditions
    @terms = terms
  end
end

# {http://www.fedora.info/definitions/1/0/types/}FieldSearchResult
#   listSession - ListSession
#   resultList - FieldSearchResult::ResultList
class FieldSearchResult

  # inner class for member: resultList
  # {}resultList
  class ResultList < ::Array
  end

  attr_accessor :listSession
  attr_accessor :resultList

  def initialize(listSession = nil, resultList = nil)
    @listSession = listSession
    @resultList = resultList
  end
end

# {http://www.fedora.info/definitions/1/0/types/}ListSession
#   token - SOAP::SOAPString
#   cursor - SOAP::SOAPNonNegativeInteger
#   completeListSize - SOAP::SOAPNonNegativeInteger
#   expirationDate - SOAP::SOAPString
class ListSession
  attr_accessor :token
  attr_accessor :cursor
  attr_accessor :completeListSize
  attr_accessor :expirationDate

  def initialize(token = nil, cursor = nil, completeListSize = nil, expirationDate = nil)
    @token = token
    @cursor = cursor
    @completeListSize = completeListSize
    @expirationDate = expirationDate
  end
end

# {http://www.fedora.info/definitions/1/0/types/}MethodParmDef
#   parmName - SOAP::SOAPString
#   parmType - SOAP::SOAPString
#   parmDefaultValue - SOAP::SOAPString
#   parmDomainValues - ArrayOfString
#   parmRequired - SOAP::SOAPBoolean
#   parmLabel - SOAP::SOAPString
#   parmPassBy - SOAP::SOAPString
#   pASS_BY_REF - PassByRef
#   pASS_BY_VALUE - PassByValue
#   dATASTREAM_INPUT - DatastreamInputType
#   uSER_INPUT - UserInputType
#   dEFAULT_INPUT - DefaultInputType
class MethodParmDef
  attr_accessor :parmName
  attr_accessor :parmType
  attr_accessor :parmDefaultValue
  attr_accessor :parmDomainValues
  attr_accessor :parmRequired
  attr_accessor :parmLabel
  attr_accessor :parmPassBy
  attr_accessor :pASS_BY_REF
  attr_accessor :pASS_BY_VALUE
  attr_accessor :dATASTREAM_INPUT
  attr_accessor :uSER_INPUT
  attr_accessor :dEFAULT_INPUT

  def initialize(parmName = nil, parmType = nil, parmDefaultValue = nil, parmDomainValues = nil, parmRequired = nil, parmLabel = nil, parmPassBy = nil, pASS_BY_REF = nil, pASS_BY_VALUE = nil, dATASTREAM_INPUT = nil, uSER_INPUT = nil, dEFAULT_INPUT = nil)
    @parmName = parmName
    @parmType = parmType
    @parmDefaultValue = parmDefaultValue
    @parmDomainValues = parmDomainValues
    @parmRequired = parmRequired
    @parmLabel = parmLabel
    @parmPassBy = parmPassBy
    @pASS_BY_REF = pASS_BY_REF
    @pASS_BY_VALUE = pASS_BY_VALUE
    @dATASTREAM_INPUT = dATASTREAM_INPUT
    @uSER_INPUT = uSER_INPUT
    @dEFAULT_INPUT = dEFAULT_INPUT
  end
end

# {http://www.fedora.info/definitions/1/0/types/}MIMETypedStream
#   mIMEType - SOAP::SOAPString
#   stream - SOAP::SOAPBase64
#   header - MIMETypedStream::Header
class MIMETypedStream

  # inner class for member: header
  # {}header
  class Header < ::Array
  end

  attr_accessor :mIMEType
  attr_accessor :stream
  attr_accessor :header

  def initialize(mIMEType = nil, stream = nil, header = nil)
    @mIMEType = mIMEType
    @stream = stream
    @header = header
  end
end

# {http://www.fedora.info/definitions/1/0/types/}ObjectFields
#   pid - SOAP::SOAPString
#   label - SOAP::SOAPString
#   state - SOAP::SOAPString
#   ownerId - SOAP::SOAPString
#   cDate - SOAP::SOAPString
#   mDate - SOAP::SOAPString
#   dcmDate - SOAP::SOAPString
#   title - SOAP::SOAPString
#   creator - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   description - SOAP::SOAPString
#   publisher - SOAP::SOAPString
#   contributor - SOAP::SOAPString
#   date - SOAP::SOAPString
#   type - SOAP::SOAPString
#   format - SOAP::SOAPString
#   identifier - SOAP::SOAPString
#   source - SOAP::SOAPString
#   language - SOAP::SOAPString
#   relation - SOAP::SOAPString
#   coverage - SOAP::SOAPString
#   rights - SOAP::SOAPString
class ObjectFields
  attr_accessor :pid
  attr_accessor :label
  attr_accessor :state
  attr_accessor :ownerId
  attr_accessor :cDate
  attr_accessor :mDate
  attr_accessor :dcmDate
  attr_accessor :title
  attr_accessor :creator
  attr_accessor :subject
  attr_accessor :description
  attr_accessor :publisher
  attr_accessor :contributor
  attr_accessor :date
  attr_accessor :type
  attr_accessor :format
  attr_accessor :identifier
  attr_accessor :source
  attr_accessor :language
  attr_accessor :relation
  attr_accessor :coverage
  attr_accessor :rights

  def initialize(pid = nil, label = nil, state = nil, ownerId = nil, cDate = nil, mDate = nil, dcmDate = nil, title = [], creator = [], subject = [], description = [], publisher = [], contributor = [], date = [], type = [], format = [], identifier = [], source = [], language = [], relation = [], coverage = [], rights = [])
    @pid = pid
    @label = label
    @state = state
    @ownerId = ownerId
    @cDate = cDate
    @mDate = mDate
    @dcmDate = dcmDate
    @title = title
    @creator = creator
    @subject = subject
    @description = description
    @publisher = publisher
    @contributor = contributor
    @date = date
    @type = type
    @format = format
    @identifier = identifier
    @source = source
    @language = language
    @relation = relation
    @coverage = coverage
    @rights = rights
  end
end

# {http://www.fedora.info/definitions/1/0/types/}ObjectMethodsDef
#   pID - SOAP::SOAPString
#   serviceDefinitionPID - SOAP::SOAPString
#   methodName - SOAP::SOAPString
#   methodParmDefs - ObjectMethodsDef::MethodParmDefs
#   asOfDate - SOAP::SOAPString
class ObjectMethodsDef

  # inner class for member: methodParmDefs
  # {}methodParmDefs
  class MethodParmDefs < ::Array
  end

  attr_accessor :pID
  attr_accessor :serviceDefinitionPID
  attr_accessor :methodName
  attr_accessor :methodParmDefs
  attr_accessor :asOfDate

  def initialize(pID = nil, serviceDefinitionPID = nil, methodName = nil, methodParmDefs = nil, asOfDate = nil)
    @pID = pID
    @serviceDefinitionPID = serviceDefinitionPID
    @methodName = methodName
    @methodParmDefs = methodParmDefs
    @asOfDate = asOfDate
  end
end

# {http://www.fedora.info/definitions/1/0/types/}ObjectProfile
#   pid - SOAP::SOAPString
#   objLabel - SOAP::SOAPString
#   objModels - ObjectProfile::ObjModels
#   objCreateDate - SOAP::SOAPString
#   objLastModDate - SOAP::SOAPString
#   objDissIndexViewURL - SOAP::SOAPString
#   objItemIndexViewURL - SOAP::SOAPString
class ObjectProfile

  # inner class for member: objModels
  # {}objModels
  class ObjModels < ::Array
  end

  attr_accessor :pid
  attr_accessor :objLabel
  attr_accessor :objModels
  attr_accessor :objCreateDate
  attr_accessor :objLastModDate
  attr_accessor :objDissIndexViewURL
  attr_accessor :objItemIndexViewURL

  def initialize(pid = nil, objLabel = nil, objModels = nil, objCreateDate = nil, objLastModDate = nil, objDissIndexViewURL = nil, objItemIndexViewURL = nil)
    @pid = pid
    @objLabel = objLabel
    @objModels = objModels
    @objCreateDate = objCreateDate
    @objLastModDate = objLastModDate
    @objDissIndexViewURL = objDissIndexViewURL
    @objItemIndexViewURL = objItemIndexViewURL
  end
end

# {http://www.fedora.info/definitions/1/0/types/}Property
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
class Property
  attr_accessor :name
  attr_accessor :value

  def initialize(name = nil, value = nil)
    @name = name
    @value = value
  end
end

# {http://www.fedora.info/definitions/1/0/types/}RelationshipTuple
#   subject - SOAP::SOAPString
#   predicate - SOAP::SOAPString
#   object - SOAP::SOAPString
#   isLiteral - SOAP::SOAPBoolean
#   datatype - SOAP::SOAPString
class RelationshipTuple
  attr_accessor :subject
  attr_accessor :predicate
  attr_accessor :object
  attr_accessor :isLiteral
  attr_accessor :datatype

  def initialize(subject = nil, predicate = nil, object = nil, isLiteral = nil, datatype = nil)
    @subject = subject
    @predicate = predicate
    @object = object
    @isLiteral = isLiteral
    @datatype = datatype
  end
end

# {http://www.fedora.info/definitions/1/0/types/}RepositoryInfo
#   repositoryName - SOAP::SOAPString
#   repositoryVersion - SOAP::SOAPString
#   repositoryBaseURL - SOAP::SOAPString
#   repositoryPIDNamespace - SOAP::SOAPString
#   defaultExportFormat - SOAP::SOAPString
#   oAINamespace - SOAP::SOAPString
#   adminEmailList - ArrayOfString
#   samplePID - SOAP::SOAPString
#   sampleOAIIdentifier - SOAP::SOAPString
#   sampleSearchURL - SOAP::SOAPString
#   sampleAccessURL - SOAP::SOAPString
#   sampleOAIURL - SOAP::SOAPString
#   retainPIDs - ArrayOfString
class RepositoryInfo
  attr_accessor :repositoryName
  attr_accessor :repositoryVersion
  attr_accessor :repositoryBaseURL
  attr_accessor :repositoryPIDNamespace
  attr_accessor :defaultExportFormat
  attr_accessor :oAINamespace
  attr_accessor :adminEmailList
  attr_accessor :samplePID
  attr_accessor :sampleOAIIdentifier
  attr_accessor :sampleSearchURL
  attr_accessor :sampleAccessURL
  attr_accessor :sampleOAIURL
  attr_accessor :retainPIDs

  def initialize(repositoryName = nil, repositoryVersion = nil, repositoryBaseURL = nil, repositoryPIDNamespace = nil, defaultExportFormat = nil, oAINamespace = nil, adminEmailList = nil, samplePID = nil, sampleOAIIdentifier = nil, sampleSearchURL = nil, sampleAccessURL = nil, sampleOAIURL = nil, retainPIDs = nil)
    @repositoryName = repositoryName
    @repositoryVersion = repositoryVersion
    @repositoryBaseURL = repositoryBaseURL
    @repositoryPIDNamespace = repositoryPIDNamespace
    @defaultExportFormat = defaultExportFormat
    @oAINamespace = oAINamespace
    @adminEmailList = adminEmailList
    @samplePID = samplePID
    @sampleOAIIdentifier = sampleOAIIdentifier
    @sampleSearchURL = sampleSearchURL
    @sampleAccessURL = sampleAccessURL
    @sampleOAIURL = sampleOAIURL
    @retainPIDs = retainPIDs
  end
end

# {http://www.fedora.info/definitions/1/0/types/}ComparisonOperator
class ComparisonOperator < ::String
  Eq = ComparisonOperator.new("eq")
  Ge = ComparisonOperator.new("ge")
  Gt = ComparisonOperator.new("gt")
  Has = ComparisonOperator.new("has")
  Le = ComparisonOperator.new("le")
  Lt = ComparisonOperator.new("lt")
end

# {http://www.fedora.info/definitions/1/0/types/}DatastreamControlGroup
class DatastreamControlGroup < ::String
  E = DatastreamControlGroup.new("E")
  M = DatastreamControlGroup.new("M")
  R = DatastreamControlGroup.new("R")
  X = DatastreamControlGroup.new("X")
end

# {http://www.fedora.info/definitions/1/0/types/}passByRef
class PassByRef < ::String
  URL_REF = PassByRef.new("URL_REF")
end

# {http://www.fedora.info/definitions/1/0/types/}passByValue
class PassByValue < ::String
  VALUE = PassByValue.new("VALUE")
end

# {http://www.fedora.info/definitions/1/0/types/}datastreamInputType
class DatastreamInputType < ::String
  FedoraDatastreamInputType = DatastreamInputType.new("fedora:datastreamInputType")
end

# {http://www.fedora.info/definitions/1/0/types/}userInputType
class UserInputType < ::String
  FedoraUserInputType = UserInputType.new("fedora:userInputType")
end

# {http://www.fedora.info/definitions/1/0/types/}defaultInputType
class DefaultInputType < ::String
  FedoraDefaultInputType = DefaultInputType.new("fedora:defaultInputType")
end

# {http://www.fedora.info/definitions/1/0/types/}describeRepository
class DescribeRepository
  def initialize
  end
end

# {http://www.fedora.info/definitions/1/0/types/}describeRepositoryResponse
#   repositoryInfo - RepositoryInfo
class DescribeRepositoryResponse
  attr_accessor :repositoryInfo

  def initialize(repositoryInfo = nil)
    @repositoryInfo = repositoryInfo
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getObjectProfile
#   pid - SOAP::SOAPString
#   asOfDateTime - SOAP::SOAPString
class GetObjectProfile
  attr_accessor :pid
  attr_accessor :asOfDateTime

  def initialize(pid = nil, asOfDateTime = nil)
    @pid = pid
    @asOfDateTime = asOfDateTime
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getObjectProfileResponse
#   objectProfile - ObjectProfile
class GetObjectProfileResponse
  attr_accessor :objectProfile

  def initialize(objectProfile = nil)
    @objectProfile = objectProfile
  end
end

# {http://www.fedora.info/definitions/1/0/types/}listMethods
#   pid - SOAP::SOAPString
#   asOfDateTime - SOAP::SOAPString
class ListMethods
  attr_accessor :pid
  attr_accessor :asOfDateTime

  def initialize(pid = nil, asOfDateTime = nil)
    @pid = pid
    @asOfDateTime = asOfDateTime
  end
end

# {http://www.fedora.info/definitions/1/0/types/}listMethodsResponse
class ListMethodsResponse < ::Array
end

# {http://www.fedora.info/definitions/1/0/types/}listDatastreams
#   pid - SOAP::SOAPString
#   asOfDateTime - SOAP::SOAPString
class ListDatastreams
  attr_accessor :pid
  attr_accessor :asOfDateTime

  def initialize(pid = nil, asOfDateTime = nil)
    @pid = pid
    @asOfDateTime = asOfDateTime
  end
end

# {http://www.fedora.info/definitions/1/0/types/}listDatastreamsResponse
class ListDatastreamsResponse < ::Array
end

# {http://www.fedora.info/definitions/1/0/types/}getDatastreamDissemination
#   pid - SOAP::SOAPString
#   dsID - SOAP::SOAPString
#   asOfDateTime - SOAP::SOAPString
class GetDatastreamDissemination
  attr_accessor :pid
  attr_accessor :dsID
  attr_accessor :asOfDateTime

  def initialize(pid = nil, dsID = nil, asOfDateTime = nil)
    @pid = pid
    @dsID = dsID
    @asOfDateTime = asOfDateTime
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getDatastreamDisseminationResponse
#   dissemination - MIMETypedStream
class GetDatastreamDisseminationResponse
  attr_accessor :dissemination

  def initialize(dissemination = nil)
    @dissemination = dissemination
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getDissemination
#   pid - SOAP::SOAPString
#   serviceDefinitionPid - SOAP::SOAPString
#   methodName - SOAP::SOAPString
#   parameters - GetDissemination::Parameters
#   asOfDateTime - SOAP::SOAPString
class GetDissemination

  # inner class for member: parameters
  # {}parameters
  class Parameters < ::Array
  end

  attr_accessor :pid
  attr_accessor :serviceDefinitionPid
  attr_accessor :methodName
  attr_accessor :parameters
  attr_accessor :asOfDateTime

  def initialize(pid = nil, serviceDefinitionPid = nil, methodName = nil, parameters = nil, asOfDateTime = nil)
    @pid = pid
    @serviceDefinitionPid = serviceDefinitionPid
    @methodName = methodName
    @parameters = parameters
    @asOfDateTime = asOfDateTime
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getDisseminationResponse
#   dissemination - MIMETypedStream
class GetDisseminationResponse
  attr_accessor :dissemination

  def initialize(dissemination = nil)
    @dissemination = dissemination
  end
end

# {http://www.fedora.info/definitions/1/0/types/}findObjects
#   resultFields - ArrayOfString
#   maxResults - SOAP::SOAPNonNegativeInteger
#   query - FieldSearchQuery
class FindObjects
  attr_accessor :resultFields
  attr_accessor :maxResults
  attr_accessor :query

  def initialize(resultFields = nil, maxResults = nil, query = nil)
    @resultFields = resultFields
    @maxResults = maxResults
    @query = query
  end
end

# {http://www.fedora.info/definitions/1/0/types/}findObjectsResponse
#   result - FieldSearchResult
class FindObjectsResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.fedora.info/definitions/1/0/types/}resumeFindObjects
#   sessionToken - SOAP::SOAPString
class ResumeFindObjects
  attr_accessor :sessionToken

  def initialize(sessionToken = nil)
    @sessionToken = sessionToken
  end
end

# {http://www.fedora.info/definitions/1/0/types/}resumeFindObjectsResponse
#   result - FieldSearchResult
class ResumeFindObjectsResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getObjectHistory
#   pid - SOAP::SOAPString
class GetObjectHistory
  attr_accessor :pid

  def initialize(pid = nil)
    @pid = pid
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getObjectHistoryResponse
class GetObjectHistoryResponse < ::Array
end

# {http://www.fedora.info/definitions/1/0/types/}ingest
#   objectXML - SOAP::SOAPBase64
#   format - SOAP::SOAPString
#   logMessage - SOAP::SOAPString
class Ingest
  attr_accessor :objectXML
  attr_accessor :format
  attr_accessor :logMessage

  def initialize(objectXML = nil, format = nil, logMessage = nil)
    @objectXML = objectXML
    @format = format
    @logMessage = logMessage
  end
end

# {http://www.fedora.info/definitions/1/0/types/}ingestResponse
#   objectPID - SOAP::SOAPString
class IngestResponse
  attr_accessor :objectPID

  def initialize(objectPID = nil)
    @objectPID = objectPID
  end
end

# {http://www.fedora.info/definitions/1/0/types/}modifyObject
#   pid - SOAP::SOAPString
#   state - SOAP::SOAPString
#   label - SOAP::SOAPString
#   ownerId - SOAP::SOAPString
#   logMessage - SOAP::SOAPString
class ModifyObject
  attr_accessor :pid
  attr_accessor :state
  attr_accessor :label
  attr_accessor :ownerId
  attr_accessor :logMessage

  def initialize(pid = nil, state = nil, label = nil, ownerId = nil, logMessage = nil)
    @pid = pid
    @state = state
    @label = label
    @ownerId = ownerId
    @logMessage = logMessage
  end
end

# {http://www.fedora.info/definitions/1/0/types/}modifyObjectResponse
#   modifiedDate - SOAP::SOAPString
class ModifyObjectResponse
  attr_accessor :modifiedDate

  def initialize(modifiedDate = nil)
    @modifiedDate = modifiedDate
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getObjectXML
#   pid - SOAP::SOAPString
class GetObjectXML
  attr_accessor :pid

  def initialize(pid = nil)
    @pid = pid
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getObjectXMLResponse
#   objectXML - SOAP::SOAPBase64
class GetObjectXMLResponse
  attr_accessor :objectXML

  def initialize(objectXML = nil)
    @objectXML = objectXML
  end
end

# {http://www.fedora.info/definitions/1/0/types/}export
#   pid - SOAP::SOAPString
#   format - SOAP::SOAPString
#   context - SOAP::SOAPString
class Export
  attr_accessor :pid
  attr_accessor :format
  attr_accessor :context

  def initialize(pid = nil, format = nil, context = nil)
    @pid = pid
    @format = format
    @context = context
  end
end

# {http://www.fedora.info/definitions/1/0/types/}exportResponse
#   objectXML - SOAP::SOAPBase64
class ExportResponse
  attr_accessor :objectXML

  def initialize(objectXML = nil)
    @objectXML = objectXML
  end
end

# {http://www.fedora.info/definitions/1/0/types/}purgeObject
#   pid - SOAP::SOAPString
#   logMessage - SOAP::SOAPString
#   force - SOAP::SOAPBoolean
class PurgeObject
  attr_accessor :pid
  attr_accessor :logMessage
  attr_accessor :force

  def initialize(pid = nil, logMessage = nil, force = nil)
    @pid = pid
    @logMessage = logMessage
    @force = force
  end
end

# {http://www.fedora.info/definitions/1/0/types/}purgeObjectResponse
#   purgedDate - SOAP::SOAPString
class PurgeObjectResponse
  attr_accessor :purgedDate

  def initialize(purgedDate = nil)
    @purgedDate = purgedDate
  end
end

# {http://www.fedora.info/definitions/1/0/types/}addDatastream
#   pid - SOAP::SOAPString
#   dsID - SOAP::SOAPString
#   altIDs - ArrayOfString
#   dsLabel - SOAP::SOAPString
#   versionable - SOAP::SOAPBoolean
#   mIMEType - SOAP::SOAPString
#   formatURI - SOAP::SOAPString
#   dsLocation - SOAP::SOAPString
#   controlGroup - SOAP::SOAPString
#   dsState - SOAP::SOAPString
#   checksumType - SOAP::SOAPString
#   checksum - SOAP::SOAPString
#   logMessage - SOAP::SOAPString
class AddDatastream
  attr_accessor :pid
  attr_accessor :dsID
  attr_accessor :altIDs
  attr_accessor :dsLabel
  attr_accessor :versionable
  attr_accessor :mIMEType
  attr_accessor :formatURI
  attr_accessor :dsLocation
  attr_accessor :controlGroup
  attr_accessor :dsState
  attr_accessor :checksumType
  attr_accessor :checksum
  attr_accessor :logMessage

  def initialize(pid = nil, dsID = nil, altIDs = nil, dsLabel = nil, versionable = nil, mIMEType = nil, formatURI = nil, dsLocation = nil, controlGroup = nil, dsState = nil, checksumType = nil, checksum = nil, logMessage = nil)
    @pid = pid
    @dsID = dsID
    @altIDs = altIDs
    @dsLabel = dsLabel
    @versionable = versionable
    @mIMEType = mIMEType
    @formatURI = formatURI
    @dsLocation = dsLocation
    @controlGroup = controlGroup
    @dsState = dsState
    @checksumType = checksumType
    @checksum = checksum
    @logMessage = logMessage
  end
end

# {http://www.fedora.info/definitions/1/0/types/}addDatastreamResponse
#   datastreamID - SOAP::SOAPString
class AddDatastreamResponse
  attr_accessor :datastreamID

  def initialize(datastreamID = nil)
    @datastreamID = datastreamID
  end
end

# {http://www.fedora.info/definitions/1/0/types/}modifyDatastreamByReference
#   pid - SOAP::SOAPString
#   dsID - SOAP::SOAPString
#   altIDs - ArrayOfString
#   dsLabel - SOAP::SOAPString
#   mIMEType - SOAP::SOAPString
#   formatURI - SOAP::SOAPString
#   dsLocation - SOAP::SOAPString
#   checksumType - SOAP::SOAPString
#   checksum - SOAP::SOAPString
#   logMessage - SOAP::SOAPString
#   force - SOAP::SOAPBoolean
class ModifyDatastreamByReference
  attr_accessor :pid
  attr_accessor :dsID
  attr_accessor :altIDs
  attr_accessor :dsLabel
  attr_accessor :mIMEType
  attr_accessor :formatURI
  attr_accessor :dsLocation
  attr_accessor :checksumType
  attr_accessor :checksum
  attr_accessor :logMessage
  attr_accessor :force

  def initialize(pid = nil, dsID = nil, altIDs = nil, dsLabel = nil, mIMEType = nil, formatURI = nil, dsLocation = nil, checksumType = nil, checksum = nil, logMessage = nil, force = nil)
    @pid = pid
    @dsID = dsID
    @altIDs = altIDs
    @dsLabel = dsLabel
    @mIMEType = mIMEType
    @formatURI = formatURI
    @dsLocation = dsLocation
    @checksumType = checksumType
    @checksum = checksum
    @logMessage = logMessage
    @force = force
  end
end

# {http://www.fedora.info/definitions/1/0/types/}modifyDatastreamByReferenceResponse
#   modifiedDate - SOAP::SOAPString
class ModifyDatastreamByReferenceResponse
  attr_accessor :modifiedDate

  def initialize(modifiedDate = nil)
    @modifiedDate = modifiedDate
  end
end

# {http://www.fedora.info/definitions/1/0/types/}modifyDatastreamByValue
#   pid - SOAP::SOAPString
#   dsID - SOAP::SOAPString
#   altIDs - ArrayOfString
#   dsLabel - SOAP::SOAPString
#   mIMEType - SOAP::SOAPString
#   formatURI - SOAP::SOAPString
#   dsContent - SOAP::SOAPBase64
#   checksumType - SOAP::SOAPString
#   checksum - SOAP::SOAPString
#   logMessage - SOAP::SOAPString
#   force - SOAP::SOAPBoolean
class ModifyDatastreamByValue
  attr_accessor :pid
  attr_accessor :dsID
  attr_accessor :altIDs
  attr_accessor :dsLabel
  attr_accessor :mIMEType
  attr_accessor :formatURI
  attr_accessor :dsContent
  attr_accessor :checksumType
  attr_accessor :checksum
  attr_accessor :logMessage
  attr_accessor :force

  def initialize(pid = nil, dsID = nil, altIDs = nil, dsLabel = nil, mIMEType = nil, formatURI = nil, dsContent = nil, checksumType = nil, checksum = nil, logMessage = nil, force = nil)
    @pid = pid
    @dsID = dsID
    @altIDs = altIDs
    @dsLabel = dsLabel
    @mIMEType = mIMEType
    @formatURI = formatURI
    @dsContent = dsContent
    @checksumType = checksumType
    @checksum = checksum
    @logMessage = logMessage
    @force = force
  end
end

# {http://www.fedora.info/definitions/1/0/types/}modifyDatastreamByValueResponse
#   modifiedDate - SOAP::SOAPString
class ModifyDatastreamByValueResponse
  attr_accessor :modifiedDate

  def initialize(modifiedDate = nil)
    @modifiedDate = modifiedDate
  end
end

# {http://www.fedora.info/definitions/1/0/types/}setDatastreamState
#   pid - SOAP::SOAPString
#   dsID - SOAP::SOAPString
#   dsState - SOAP::SOAPString
#   logMessage - SOAP::SOAPString
class SetDatastreamState
  attr_accessor :pid
  attr_accessor :dsID
  attr_accessor :dsState
  attr_accessor :logMessage

  def initialize(pid = nil, dsID = nil, dsState = nil, logMessage = nil)
    @pid = pid
    @dsID = dsID
    @dsState = dsState
    @logMessage = logMessage
  end
end

# {http://www.fedora.info/definitions/1/0/types/}setDatastreamStateResponse
#   modifiedDate - SOAP::SOAPString
class SetDatastreamStateResponse
  attr_accessor :modifiedDate

  def initialize(modifiedDate = nil)
    @modifiedDate = modifiedDate
  end
end

# {http://www.fedora.info/definitions/1/0/types/}setDatastreamVersionable
#   pid - SOAP::SOAPString
#   dsID - SOAP::SOAPString
#   versionable - SOAP::SOAPBoolean
#   logMessage - SOAP::SOAPString
class SetDatastreamVersionable
  attr_accessor :pid
  attr_accessor :dsID
  attr_accessor :versionable
  attr_accessor :logMessage

  def initialize(pid = nil, dsID = nil, versionable = nil, logMessage = nil)
    @pid = pid
    @dsID = dsID
    @versionable = versionable
    @logMessage = logMessage
  end
end

# {http://www.fedora.info/definitions/1/0/types/}setDatastreamVersionableResponse
#   modifiedDate - SOAP::SOAPString
class SetDatastreamVersionableResponse
  attr_accessor :modifiedDate

  def initialize(modifiedDate = nil)
    @modifiedDate = modifiedDate
  end
end

# {http://www.fedora.info/definitions/1/0/types/}compareDatastreamChecksum
#   pid - SOAP::SOAPString
#   dsID - SOAP::SOAPString
#   versionDate - SOAP::SOAPString
class CompareDatastreamChecksum
  attr_accessor :pid
  attr_accessor :dsID
  attr_accessor :versionDate

  def initialize(pid = nil, dsID = nil, versionDate = nil)
    @pid = pid
    @dsID = dsID
    @versionDate = versionDate
  end
end

# {http://www.fedora.info/definitions/1/0/types/}compareDatastreamChecksumResponse
#   checksum - SOAP::SOAPString
class CompareDatastreamChecksumResponse
  attr_accessor :checksum

  def initialize(checksum = nil)
    @checksum = checksum
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getDatastream
#   pid - SOAP::SOAPString
#   dsID - SOAP::SOAPString
#   asOfDateTime - SOAP::SOAPString
class GetDatastream
  attr_accessor :pid
  attr_accessor :dsID
  attr_accessor :asOfDateTime

  def initialize(pid = nil, dsID = nil, asOfDateTime = nil)
    @pid = pid
    @dsID = dsID
    @asOfDateTime = asOfDateTime
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getDatastreamResponse
#   datastream - Datastream
class GetDatastreamResponse
  attr_accessor :datastream

  def initialize(datastream = nil)
    @datastream = datastream
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getDatastreams
#   pid - SOAP::SOAPString
#   asOfDateTime - SOAP::SOAPString
#   dsState - SOAP::SOAPString
class GetDatastreams
  attr_accessor :pid
  attr_accessor :asOfDateTime
  attr_accessor :dsState

  def initialize(pid = nil, asOfDateTime = nil, dsState = nil)
    @pid = pid
    @asOfDateTime = asOfDateTime
    @dsState = dsState
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getDatastreamsResponse
class GetDatastreamsResponse < ::Array
end

# {http://www.fedora.info/definitions/1/0/types/}getDatastreamHistory
#   pid - SOAP::SOAPString
#   dsID - SOAP::SOAPString
class GetDatastreamHistory
  attr_accessor :pid
  attr_accessor :dsID

  def initialize(pid = nil, dsID = nil)
    @pid = pid
    @dsID = dsID
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getDatastreamHistoryResponse
class GetDatastreamHistoryResponse < ::Array
end

# {http://www.fedora.info/definitions/1/0/types/}purgeDatastream
#   pid - SOAP::SOAPString
#   dsID - SOAP::SOAPString
#   startDT - SOAP::SOAPString
#   endDT - SOAP::SOAPString
#   logMessage - SOAP::SOAPString
#   force - SOAP::SOAPBoolean
class PurgeDatastream
  attr_accessor :pid
  attr_accessor :dsID
  attr_accessor :startDT
  attr_accessor :endDT
  attr_accessor :logMessage
  attr_accessor :force

  def initialize(pid = nil, dsID = nil, startDT = nil, endDT = nil, logMessage = nil, force = nil)
    @pid = pid
    @dsID = dsID
    @startDT = startDT
    @endDT = endDT
    @logMessage = logMessage
    @force = force
  end
end

# {http://www.fedora.info/definitions/1/0/types/}purgeDatastreamResponse
class PurgeDatastreamResponse < ::Array
end

# {http://www.fedora.info/definitions/1/0/types/}getNextPID
#   numPIDs - SOAP::SOAPNonNegativeInteger
#   pidNamespace - SOAP::SOAPString
class GetNextPID
  attr_accessor :numPIDs
  attr_accessor :pidNamespace

  def initialize(numPIDs = nil, pidNamespace = nil)
    @numPIDs = numPIDs
    @pidNamespace = pidNamespace
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getNextPIDResponse
class GetNextPIDResponse < ::Array
end

# {http://www.fedora.info/definitions/1/0/types/}getRelationships
#   pid - SOAP::SOAPString
#   relationship - SOAP::SOAPString
class GetRelationships
  attr_accessor :pid
  attr_accessor :relationship

  def initialize(pid = nil, relationship = nil)
    @pid = pid
    @relationship = relationship
  end
end

# {http://www.fedora.info/definitions/1/0/types/}getRelationshipsResponse
class GetRelationshipsResponse < ::Array
end

# {http://www.fedora.info/definitions/1/0/types/}addRelationship
#   pid - SOAP::SOAPString
#   relationship - SOAP::SOAPString
#   object - SOAP::SOAPString
#   isLiteral - SOAP::SOAPBoolean
#   datatype - SOAP::SOAPString
class AddRelationship
  attr_accessor :pid
  attr_accessor :relationship
  attr_accessor :object
  attr_accessor :isLiteral
  attr_accessor :datatype

  def initialize(pid = nil, relationship = nil, object = nil, isLiteral = nil, datatype = nil)
    @pid = pid
    @relationship = relationship
    @object = object
    @isLiteral = isLiteral
    @datatype = datatype
  end
end

# {http://www.fedora.info/definitions/1/0/types/}addRelationshipResponse
#   added - SOAP::SOAPBoolean
class AddRelationshipResponse
  attr_accessor :added

  def initialize(added = nil)
    @added = added
  end
end

# {http://www.fedora.info/definitions/1/0/types/}purgeRelationship
#   pid - SOAP::SOAPString
#   relationship - SOAP::SOAPString
#   object - SOAP::SOAPString
#   isLiteral - SOAP::SOAPBoolean
#   datatype - SOAP::SOAPString
class PurgeRelationship
  attr_accessor :pid
  attr_accessor :relationship
  attr_accessor :object
  attr_accessor :isLiteral
  attr_accessor :datatype

  def initialize(pid = nil, relationship = nil, object = nil, isLiteral = nil, datatype = nil)
    @pid = pid
    @relationship = relationship
    @object = object
    @isLiteral = isLiteral
    @datatype = datatype
  end
end

# {http://www.fedora.info/definitions/1/0/types/}purgeRelationshipResponse
#   purged - SOAP::SOAPBoolean
class PurgeRelationshipResponse
  attr_accessor :purged

  def initialize(purged = nil)
    @purged = purged
  end
end
