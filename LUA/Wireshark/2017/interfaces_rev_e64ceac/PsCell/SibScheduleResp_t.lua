local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCell_SibScheduleResp'
end
function module:messageId()
  return 0x092d
end
----------------------------------------------------------------
local PSCELL_SIBSCHEDULERESP_T = Proto('PsCell_SibScheduleResp_t', 'PSCELL_SIBSCHEDULERESP_T')
local PsCell_SibScheduleResp_t = PSCELL_SIBSCHEDULERESP_T.fields
PsCell_SibScheduleResp_t.dummy = ProtoField.uint8('PsCell_SibScheduleResp_t.dummy', 'dummy', base.HEX)
PsCell_SibScheduleResp_t.subCellId = ProtoField.uint8('PsCell_SibScheduleResp_t.subCellId', 'subCellId', base.HEX)
PsCell_SibScheduleResp_t.subCellId_padding = ProtoField.bytes('PsCell_SibScheduleResp_t.subCellId_padding', 'subCellId_padding', base.HEX)
local PSCELL_SIBSCHEDULERESP_T_MESSAGERESULT = Proto('PsCell_SibScheduleResp_t_messageResult', 'PSCELL_SIBSCHEDULERESP_T_MESSAGERESULT')
local PsCell_SibScheduleResp_t_messageResult = PSCELL_SIBSCHEDULERESP_T_MESSAGERESULT.fields
PsCell_SibScheduleResp_t_messageResult.status = ProtoField.bytes('PsCell_SibScheduleResp_t_messageResult.status', 'status', base.HEX)
PsCell_SibScheduleResp_t_messageResult.status_padding = ProtoField.bytes('PsCell_SibScheduleResp_t_messageResult.status_padding', 'status_padding', base.HEX)
PsCell_SibScheduleResp_t_messageResult.cause = ProtoField.uint32('PsCell_SibScheduleResp_t_messageResult.cause', 'cause', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCELL_SIBSCHEDULERESP_T, buffer())
  subtree:set_text('PsCell_SibScheduleResp_t')
  subtree:add_le (PsCell_SibScheduleResp_t.dummy, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SibScheduleResp_t.subCellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SibScheduleResp_t.subCellId_padding, buffer(offset, 2))
  offset = offset + 2
  local PsCell_SibScheduleResp_t_messageResultTree = subtree:add (PSCELL_SIBSCHEDULERESP_T_MESSAGERESULT, buffer(offset))
  PsCell_SibScheduleResp_t_messageResultTree:set_text('PsCell_SibScheduleResp_t_messageResult')
  PsCell_SibScheduleResp_t_messageResultTree:add_le (PsCell_SibScheduleResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsCell_SibScheduleResp_t_messageResultTree:add_le (PsCell_SibScheduleResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsCell_SibScheduleResp_t_messageResultTree:add_le (PsCell_SibScheduleResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
