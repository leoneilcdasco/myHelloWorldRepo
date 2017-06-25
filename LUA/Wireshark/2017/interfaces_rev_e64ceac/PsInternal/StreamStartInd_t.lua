local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_StreamStartInd'
end
function module:messageId()
  return 0x031e
end
----------------------------------------------------------------
local PSINTERNAL_STREAMSTARTIND_T = Proto('PsInternal_StreamStartInd_t', 'PSINTERNAL_STREAMSTARTIND_T')
local PsInternal_StreamStartInd_t = PSINTERNAL_STREAMSTARTIND_T.fields
local PSINTERNAL_STREAMSTARTIND_T_DATA = Proto('PsInternal_StreamStartInd_t_data', 'PSINTERNAL_STREAMSTARTIND_T_DATA')
local PsInternal_StreamStartInd_t_data = PSINTERNAL_STREAMSTARTIND_T_DATA.fields
PsInternal_StreamStartInd_t_data.subCellBFGroupID = ProtoField.uint8('PsInternal_StreamStartInd_t_data.subCellBFGroupID', 'subCellBFGroupID', base.HEX)
PsInternal_StreamStartInd_t_data.traceServiceMap = ProtoField.uint8('PsInternal_StreamStartInd_t_data.traceServiceMap', 'traceServiceMap', base.HEX)
PsInternal_StreamStartInd_t_data.traceServiceMap_padding = ProtoField.bytes('PsInternal_StreamStartInd_t_data.traceServiceMap_padding', 'traceServiceMap_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_STREAMSTARTIND_T, buffer())
  subtree:set_text('PsInternal_StreamStartInd_t')
  local PsInternal_StreamStartInd_t_dataTree = subtree:add (PSINTERNAL_STREAMSTARTIND_T_DATA, buffer(offset))
  PsInternal_StreamStartInd_t_dataTree:set_text('PsInternal_StreamStartInd_t_data')
  PsInternal_StreamStartInd_t_dataTree:add_le (PsInternal_StreamStartInd_t_data.subCellBFGroupID, buffer(offset, 1))
  offset = offset + 1
  PsInternal_StreamStartInd_t_dataTree:add_le (PsInternal_StreamStartInd_t_data.traceServiceMap, buffer(offset, 1))
  offset = offset + 1
  PsInternal_StreamStartInd_t_dataTree:add_le (PsInternal_StreamStartInd_t_data.traceServiceMap_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
