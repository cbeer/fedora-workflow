require 'xsd/qname'

# {http://www.fedora.info/definitions/1/0/types/}Datastream
#   controlGroup - DatastreamControlGroup
#   iD - SOAP::SOAPString
#   versionID - SOAP::SOAPString
#   altIDs - ArrayOf_xsd_string
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

# {http://www.fedora.info/definitions/1/0/api/}ArrayOf_xsd_string
class ArrayOf_xsd_string < ::Array
end

# {http://www.fedora.info/definitions/1/0/types/}DatastreamControlGroup
class DatastreamControlGroup < ::String
  E = DatastreamControlGroup.new("E")
  M = DatastreamControlGroup.new("M")
  R = DatastreamControlGroup.new("R")
  X = DatastreamControlGroup.new("X")
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
#   altIDs - SOAP::SOAPString
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

  def initialize(pid = nil, dsID = nil, altIDs = [], dsLabel = nil, versionable = nil, mIMEType = nil, formatURI = nil, dsLocation = nil, controlGroup = nil, dsState = nil, checksumType = nil, checksum = nil, logMessage = nil)
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
#   altIDs - SOAP::SOAPString
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

  def initialize(pid = nil, dsID = nil, altIDs = [], dsLabel = nil, mIMEType = nil, formatURI = nil, dsLocation = nil, checksumType = nil, checksum = nil, logMessage = nil, force = nil)
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
#   altIDs - SOAP::SOAPString
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

  def initialize(pid = nil, dsID = nil, altIDs = [], dsLabel = nil, mIMEType = nil, formatURI = nil, dsContent = nil, checksumType = nil, checksum = nil, logMessage = nil, force = nil)
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
