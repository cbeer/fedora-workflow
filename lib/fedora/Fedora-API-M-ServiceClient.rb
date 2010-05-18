#!/usr/bin/env ruby
require 'Fedora-API-M-WSDLDriver.rb'

endpoint_url = ARGV.shift
obj = FedoraAPIM.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   ingest(parameters)
#
# ARGS
#   parameters      Ingest - {http://www.fedora.info/definitions/1/0/types/}ingest
#
# RETURNS
#   parameters      IngestResponse - {http://www.fedora.info/definitions/1/0/types/}ingestResponse
#
parameters = nil
puts obj.ingest(parameters)

# SYNOPSIS
#   modifyObject(parameters)
#
# ARGS
#   parameters      ModifyObject - {http://www.fedora.info/definitions/1/0/types/}modifyObject
#
# RETURNS
#   parameters      ModifyObjectResponse - {http://www.fedora.info/definitions/1/0/types/}modifyObjectResponse
#
parameters = nil
puts obj.modifyObject(parameters)

# SYNOPSIS
#   getObjectXML(parameters)
#
# ARGS
#   parameters      GetObjectXML - {http://www.fedora.info/definitions/1/0/types/}getObjectXML
#
# RETURNS
#   parameters      GetObjectXMLResponse - {http://www.fedora.info/definitions/1/0/types/}getObjectXMLResponse
#
parameters = nil
puts obj.getObjectXML(parameters)

# SYNOPSIS
#   export(parameters)
#
# ARGS
#   parameters      Export - {http://www.fedora.info/definitions/1/0/types/}export
#
# RETURNS
#   parameters      ExportResponse - {http://www.fedora.info/definitions/1/0/types/}exportResponse
#
parameters = nil
puts obj.export(parameters)

# SYNOPSIS
#   purgeObject(parameters)
#
# ARGS
#   parameters      PurgeObject - {http://www.fedora.info/definitions/1/0/types/}purgeObject
#
# RETURNS
#   parameters      PurgeObjectResponse - {http://www.fedora.info/definitions/1/0/types/}purgeObjectResponse
#
parameters = nil
puts obj.purgeObject(parameters)

# SYNOPSIS
#   addDatastream(parameters)
#
# ARGS
#   parameters      AddDatastream - {http://www.fedora.info/definitions/1/0/types/}addDatastream
#
# RETURNS
#   parameters      AddDatastreamResponse - {http://www.fedora.info/definitions/1/0/types/}addDatastreamResponse
#
parameters = nil
puts obj.addDatastream(parameters)

# SYNOPSIS
#   modifyDatastreamByReference(parameters)
#
# ARGS
#   parameters      ModifyDatastreamByReference - {http://www.fedora.info/definitions/1/0/types/}modifyDatastreamByReference
#
# RETURNS
#   parameters      ModifyDatastreamByReferenceResponse - {http://www.fedora.info/definitions/1/0/types/}modifyDatastreamByReferenceResponse
#
parameters = nil
puts obj.modifyDatastreamByReference(parameters)

# SYNOPSIS
#   modifyDatastreamByValue(parameters)
#
# ARGS
#   parameters      ModifyDatastreamByValue - {http://www.fedora.info/definitions/1/0/types/}modifyDatastreamByValue
#
# RETURNS
#   parameters      ModifyDatastreamByValueResponse - {http://www.fedora.info/definitions/1/0/types/}modifyDatastreamByValueResponse
#
parameters = nil
puts obj.modifyDatastreamByValue(parameters)

# SYNOPSIS
#   setDatastreamState(parameters)
#
# ARGS
#   parameters      SetDatastreamState - {http://www.fedora.info/definitions/1/0/types/}setDatastreamState
#
# RETURNS
#   parameters      SetDatastreamStateResponse - {http://www.fedora.info/definitions/1/0/types/}setDatastreamStateResponse
#
parameters = nil
puts obj.setDatastreamState(parameters)

# SYNOPSIS
#   setDatastreamVersionable(parameters)
#
# ARGS
#   parameters      SetDatastreamVersionable - {http://www.fedora.info/definitions/1/0/types/}setDatastreamVersionable
#
# RETURNS
#   parameters      SetDatastreamVersionableResponse - {http://www.fedora.info/definitions/1/0/types/}setDatastreamVersionableResponse
#
parameters = nil
puts obj.setDatastreamVersionable(parameters)

# SYNOPSIS
#   compareDatastreamChecksum(parameters)
#
# ARGS
#   parameters      CompareDatastreamChecksum - {http://www.fedora.info/definitions/1/0/types/}compareDatastreamChecksum
#
# RETURNS
#   parameters      CompareDatastreamChecksumResponse - {http://www.fedora.info/definitions/1/0/types/}compareDatastreamChecksumResponse
#
parameters = nil
puts obj.compareDatastreamChecksum(parameters)

# SYNOPSIS
#   getDatastream(parameters)
#
# ARGS
#   parameters      GetDatastream - {http://www.fedora.info/definitions/1/0/types/}getDatastream
#
# RETURNS
#   parameters      GetDatastreamResponse - {http://www.fedora.info/definitions/1/0/types/}getDatastreamResponse
#
parameters = nil
puts obj.getDatastream(parameters)

# SYNOPSIS
#   getDatastreams(parameters)
#
# ARGS
#   parameters      GetDatastreams - {http://www.fedora.info/definitions/1/0/types/}getDatastreams
#
# RETURNS
#   parameters      GetDatastreamsResponse - {http://www.fedora.info/definitions/1/0/types/}getDatastreamsResponse
#
parameters = nil
puts obj.getDatastreams(parameters)

# SYNOPSIS
#   getDatastreamHistory(parameters)
#
# ARGS
#   parameters      GetDatastreamHistory - {http://www.fedora.info/definitions/1/0/types/}getDatastreamHistory
#
# RETURNS
#   parameters      GetDatastreamHistoryResponse - {http://www.fedora.info/definitions/1/0/types/}getDatastreamHistoryResponse
#
parameters = nil
puts obj.getDatastreamHistory(parameters)

# SYNOPSIS
#   purgeDatastream(parameters)
#
# ARGS
#   parameters      PurgeDatastream - {http://www.fedora.info/definitions/1/0/types/}purgeDatastream
#
# RETURNS
#   parameters      PurgeDatastreamResponse - {http://www.fedora.info/definitions/1/0/types/}purgeDatastreamResponse
#
parameters = nil
puts obj.purgeDatastream(parameters)

# SYNOPSIS
#   getNextPID(parameters)
#
# ARGS
#   parameters      GetNextPID - {http://www.fedora.info/definitions/1/0/types/}getNextPID
#
# RETURNS
#   parameters      GetNextPIDResponse - {http://www.fedora.info/definitions/1/0/types/}getNextPIDResponse
#
parameters = nil
puts obj.getNextPID(parameters)

# SYNOPSIS
#   getRelationships(parameters)
#
# ARGS
#   parameters      GetRelationships - {http://www.fedora.info/definitions/1/0/types/}getRelationships
#
# RETURNS
#   parameters      GetRelationshipsResponse - {http://www.fedora.info/definitions/1/0/types/}getRelationshipsResponse
#
parameters = nil
puts obj.getRelationships(parameters)

# SYNOPSIS
#   addRelationship(parameters)
#
# ARGS
#   parameters      AddRelationship - {http://www.fedora.info/definitions/1/0/types/}addRelationship
#
# RETURNS
#   parameters      AddRelationshipResponse - {http://www.fedora.info/definitions/1/0/types/}addRelationshipResponse
#
parameters = nil
puts obj.addRelationship(parameters)

# SYNOPSIS
#   purgeRelationship(parameters)
#
# ARGS
#   parameters      PurgeRelationship - {http://www.fedora.info/definitions/1/0/types/}purgeRelationship
#
# RETURNS
#   parameters      PurgeRelationshipResponse - {http://www.fedora.info/definitions/1/0/types/}purgeRelationshipResponse
#
parameters = nil
puts obj.purgeRelationship(parameters)


