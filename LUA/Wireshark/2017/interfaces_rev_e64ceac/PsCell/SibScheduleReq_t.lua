local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCell_SibScheduleReq'
end
function module:messageId()
  return 0x092c
end
----------------------------------------------------------------
local PSCELL_SIBSCHEDULEREQ_T = Proto('PsCell_SibScheduleReq_t', 'PSCELL_SIBSCHEDULEREQ_T')
local PsCell_SibScheduleReq_t = PSCELL_SIBSCHEDULEREQ_T.fields
PsCell_SibScheduleReq_t.subCellId = ProtoField.uint8('PsCell_SibScheduleReq_t.subCellId', 'subCellId', base.HEX)
PsCell_SibScheduleReq_t.subCellId_padding = ProtoField.bytes('PsCell_SibScheduleReq_t.subCellId_padding', 'subCellId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCELL_SIBSCHEDULEREQ_T, buffer())
  subtree:set_text('PsCell_SibScheduleReq_t')
  subtree:add_le (PsCell_SibScheduleReq_t.subCellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SibScheduleReq_t.subCellId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
