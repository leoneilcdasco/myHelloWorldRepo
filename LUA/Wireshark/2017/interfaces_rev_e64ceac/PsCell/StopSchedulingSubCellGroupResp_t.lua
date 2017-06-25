local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCell_StopSchedulingSubCellGroupResp'
end
function module:messageId()
  return 0x0923
end
----------------------------------------------------------------
local PSCELL_STOPSCHEDULINGSUBCELLGROUPRESP_T = Proto('PsCell_StopSchedulingSubCellGroupResp_t', 'PSCELL_STOPSCHEDULINGSUBCELLGROUPRESP_T')
local PsCell_StopSchedulingSubCellGroupResp_t = PSCELL_STOPSCHEDULINGSUBCELLGROUPRESP_T.fields
local PSCELL_STOPSCHEDULINGSUBCELLGROUPRESP_T_MESSAGERESULT = Proto('PsCell_StopSchedulingSubCellGroupResp_t_messageResult', 'PSCELL_STOPSCHEDULINGSUBCELLGROUPRESP_T_MESSAGERESULT')
local PsCell_StopSchedulingSubCellGroupResp_t_messageResult = PSCELL_STOPSCHEDULINGSUBCELLGROUPRESP_T_MESSAGERESULT.fields
PsCell_StopSchedulingSubCellGroupResp_t_messageResult.status = ProtoField.bytes('PsCell_StopSchedulingSubCellGroupResp_t_messageResult.status', 'status', base.HEX)
PsCell_StopSchedulingSubCellGroupResp_t_messageResult.status_padding = ProtoField.bytes('PsCell_StopSchedulingSubCellGroupResp_t_messageResult.status_padding', 'status_padding', base.HEX)
PsCell_StopSchedulingSubCellGroupResp_t_messageResult.cause = ProtoField.uint32('PsCell_StopSchedulingSubCellGroupResp_t_messageResult.cause', 'cause', base.HEX)
PsCell_StopSchedulingSubCellGroupResp_t.subCellGroupId = ProtoField.uint8('PsCell_StopSchedulingSubCellGroupResp_t.subCellGroupId', 'subCellGroupId', base.HEX)
PsCell_StopSchedulingSubCellGroupResp_t.subCellGroupId_padding = ProtoField.bytes('PsCell_StopSchedulingSubCellGroupResp_t.subCellGroupId_padding', 'subCellGroupId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCELL_STOPSCHEDULINGSUBCELLGROUPRESP_T, buffer())
  subtree:set_text('PsCell_StopSchedulingSubCellGroupResp_t')
  local PsCell_StopSchedulingSubCellGroupResp_t_messageResultTree = subtree:add (PSCELL_STOPSCHEDULINGSUBCELLGROUPRESP_T_MESSAGERESULT, buffer(offset))
  PsCell_StopSchedulingSubCellGroupResp_t_messageResultTree:set_text('PsCell_StopSchedulingSubCellGroupResp_t_messageResult')
  PsCell_StopSchedulingSubCellGroupResp_t_messageResultTree:add_le (PsCell_StopSchedulingSubCellGroupResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsCell_StopSchedulingSubCellGroupResp_t_messageResultTree:add_le (PsCell_StopSchedulingSubCellGroupResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsCell_StopSchedulingSubCellGroupResp_t_messageResultTree:add_le (PsCell_StopSchedulingSubCellGroupResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsCell_StopSchedulingSubCellGroupResp_t.subCellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_StopSchedulingSubCellGroupResp_t.subCellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
