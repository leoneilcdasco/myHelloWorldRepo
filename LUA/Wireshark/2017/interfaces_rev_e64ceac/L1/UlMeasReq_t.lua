local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1_UlMeasReq'
end
function module:messageId()
  return 0x0005
end
----------------------------------------------------------------
local L1_ULMEASREQ_T = Proto('L1_UlMeasReq_t', 'L1_ULMEASREQ_T')
local L1_UlMeasReq_t = L1_ULMEASREQ_T.fields
L1_UlMeasReq_t.subCellIndex = ProtoField.uint32('L1_UlMeasReq_t.subCellIndex', 'subCellIndex', base.HEX)
L1_UlMeasReq_t.queueEntry = ProtoField.uint32('L1_UlMeasReq_t.queueEntry', 'queueEntry', base.HEX)
L1_UlMeasReq_t.measBufType = ProtoField.uint32('L1_UlMeasReq_t.measBufType', 'measBufType', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1_ULMEASREQ_T, buffer())
  subtree:set_text('L1_UlMeasReq_t')
  subtree:add_le (L1_UlMeasReq_t.subCellIndex, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (L1_UlMeasReq_t.queueEntry, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (L1_UlMeasReq_t.measBufType, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
