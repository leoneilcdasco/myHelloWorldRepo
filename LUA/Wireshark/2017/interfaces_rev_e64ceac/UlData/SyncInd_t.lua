local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_SyncInd'
end
function module:messageId()
  return 0x0206
end
----------------------------------------------------------------
local ULDATA_SYNCIND_T = Proto('UlData_SyncInd_t', 'ULDATA_SYNCIND_T')
local UlData_SyncInd_t = ULDATA_SYNCIND_T.fields
UlData_SyncInd_t.delayFromSfBoundary_nSec = ProtoField.int32('UlData_SyncInd_t.delayFromSfBoundary_nSec', 'delayFromSfBoundary_nSec', base.DEC)
UlData_SyncInd_t.sfn = ProtoField.uint16('UlData_SyncInd_t.sfn', 'sfn', base.DEC)
UlData_SyncInd_t.subcellId = ProtoField.uint8('UlData_SyncInd_t.subcellId', 'subcellId', base.DEC)
UlData_SyncInd_t.subframeNo = ProtoField.uint8('UlData_SyncInd_t.subframeNo', 'subframeNo', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_SYNCIND_T, buffer())
  subtree:set_text('UlData_SyncInd_t')
  subtree:add_le (UlData_SyncInd_t.delayFromSfBoundary_nSec, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (UlData_SyncInd_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_SyncInd_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_SyncInd_t.subframeNo, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
