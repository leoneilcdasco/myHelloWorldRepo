local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCell_StopSchedulingSubCellGroupReq'
end
function module:messageId()
  return 0x0922
end
----------------------------------------------------------------
local PSCELL_STOPSCHEDULINGSUBCELLGROUPREQ_T = Proto('PsCell_StopSchedulingSubCellGroupReq_t', 'PSCELL_STOPSCHEDULINGSUBCELLGROUPREQ_T')
local PsCell_StopSchedulingSubCellGroupReq_t = PSCELL_STOPSCHEDULINGSUBCELLGROUPREQ_T.fields
PsCell_StopSchedulingSubCellGroupReq_t.subCellGroupId = ProtoField.uint8('PsCell_StopSchedulingSubCellGroupReq_t.subCellGroupId', 'subCellGroupId', base.HEX)
PsCell_StopSchedulingSubCellGroupReq_t.subCellGroupId_padding = ProtoField.bytes('PsCell_StopSchedulingSubCellGroupReq_t.subCellGroupId_padding', 'subCellGroupId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCELL_STOPSCHEDULINGSUBCELLGROUPREQ_T, buffer())
  subtree:set_text('PsCell_StopSchedulingSubCellGroupReq_t')
  subtree:add_le (PsCell_StopSchedulingSubCellGroupReq_t.subCellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_StopSchedulingSubCellGroupReq_t.subCellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
