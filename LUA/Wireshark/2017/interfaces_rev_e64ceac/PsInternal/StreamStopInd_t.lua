local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_StreamStopInd'
end
function module:messageId()
  return 0x031f
end
----------------------------------------------------------------
local PSINTERNAL_STREAMSTOPIND_T = Proto('PsInternal_StreamStopInd_t', 'PSINTERNAL_STREAMSTOPIND_T')
local PsInternal_StreamStopInd_t = PSINTERNAL_STREAMSTOPIND_T.fields
local PSINTERNAL_STREAMSTOPIND_T_DATA = Proto('PsInternal_StreamStopInd_t_data', 'PSINTERNAL_STREAMSTOPIND_T_DATA')
local PsInternal_StreamStopInd_t_data = PSINTERNAL_STREAMSTOPIND_T_DATA.fields
PsInternal_StreamStopInd_t_data.subCellBFGroupID = ProtoField.uint8('PsInternal_StreamStopInd_t_data.subCellBFGroupID', 'subCellBFGroupID', base.HEX)
PsInternal_StreamStopInd_t_data.traceServiceMap = ProtoField.uint8('PsInternal_StreamStopInd_t_data.traceServiceMap', 'traceServiceMap', base.HEX)
PsInternal_StreamStopInd_t_data.traceServiceMap_padding = ProtoField.bytes('PsInternal_StreamStopInd_t_data.traceServiceMap_padding', 'traceServiceMap_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_STREAMSTOPIND_T, buffer())
  subtree:set_text('PsInternal_StreamStopInd_t')
  local PsInternal_StreamStopInd_t_dataTree = subtree:add (PSINTERNAL_STREAMSTOPIND_T_DATA, buffer(offset))
  PsInternal_StreamStopInd_t_dataTree:set_text('PsInternal_StreamStopInd_t_data')
  PsInternal_StreamStopInd_t_dataTree:add_le (PsInternal_StreamStopInd_t_data.subCellBFGroupID, buffer(offset, 1))
  offset = offset + 1
  PsInternal_StreamStopInd_t_dataTree:add_le (PsInternal_StreamStopInd_t_data.traceServiceMap, buffer(offset, 1))
  offset = offset + 1
  PsInternal_StreamStopInd_t_dataTree:add_le (PsInternal_StreamStopInd_t_data.traceServiceMap_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
