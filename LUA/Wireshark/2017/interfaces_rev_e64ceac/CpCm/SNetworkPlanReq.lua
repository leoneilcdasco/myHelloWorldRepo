local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_SNetworkPlanReq'
end
function module:messageId()
  return 0x6003
end
----------------------------------------------------------------
local CPCM_SNETWORKPLANREQ = Proto('CpCm_SNetworkPlanReq', 'CPCM_SNETWORKPLANREQ')
local CpCm_SNetworkPlanReq = CPCM_SNETWORKPLANREQ.fields
CpCm_SNetworkPlanReq.fileType = ProtoField.bytes('CpCm_SNetworkPlanReq.fileType', 'fileType', base.HEX)
CpCm_SNetworkPlanReq.fileType_padding = ProtoField.bytes('CpCm_SNetworkPlanReq.fileType_padding', 'fileType_padding', base.HEX)
local CPCM_SNETWORKPLANREQ_FILENAME = Proto('CpCm_SNetworkPlanReq_fileName', 'CPCM_SNETWORKPLANREQ_FILENAME')
local CpCm_SNetworkPlanReq_fileName = CPCM_SNETWORKPLANREQ_FILENAME.fields
CpCm_SNetworkPlanReq_fileName.fileName_length = ProtoField.uint32('CpCm_SNetworkPlanReq_fileName.fileName_length', 'fileName_length', base.HEX)
CpCm_SNetworkPlanReq_fileName.fileName_values = ProtoField.bytes('CpCm_SNetworkPlanReq_fileName.fileName_values', 'fileName_values', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_SNETWORKPLANREQ, buffer())
  subtree:set_text('CpCm_SNetworkPlanReq')
  subtree:add_le (CpCm_SNetworkPlanReq.fileType, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (CpCm_SNetworkPlanReq.fileType_padding, buffer(offset, 3))
  offset = offset + 3
  local CpCm_SNetworkPlanReq_fileNameTree = subtree:add (CPCM_SNETWORKPLANREQ_FILENAME, buffer(offset))
  CpCm_SNetworkPlanReq_fileNameTree:set_text('CpCm_SNetworkPlanReq_fileName')
  CpCm_SNetworkPlanReq_fileNameTree:add_le (CpCm_SNetworkPlanReq_fileName.fileName_length, buffer(offset, 4))
  offset = offset + 4
  CpCm_SNetworkPlanReq_fileNameTree:add_le (CpCm_SNetworkPlanReq_fileName.fileName_values, buffer(offset, ( (msglen >= 256) and 256 or (msglen-offset) )))
  offset = offset + ( (msglen >= 256) and 256 or (msglen-offset) )
end
----------------------------------------------------------------
return module
