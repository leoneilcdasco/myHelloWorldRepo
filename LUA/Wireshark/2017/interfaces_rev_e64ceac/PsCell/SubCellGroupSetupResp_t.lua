local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCell_SubCellGroupSetupResp'
end
function module:messageId()
  return 0x0921
end
----------------------------------------------------------------
local PSCELL_SUBCELLGROUPSETUPRESP_T = Proto('PsCell_SubCellGroupSetupResp_t', 'PSCELL_SUBCELLGROUPSETUPRESP_T')
local PsCell_SubCellGroupSetupResp_t = PSCELL_SUBCELLGROUPSETUPRESP_T.fields
local PSCELL_SUBCELLGROUPSETUPRESP_T_MESSAGERESULT = Proto('PsCell_SubCellGroupSetupResp_t_messageResult', 'PSCELL_SUBCELLGROUPSETUPRESP_T_MESSAGERESULT')
local PsCell_SubCellGroupSetupResp_t_messageResult = PSCELL_SUBCELLGROUPSETUPRESP_T_MESSAGERESULT.fields
PsCell_SubCellGroupSetupResp_t_messageResult.status = ProtoField.bytes('PsCell_SubCellGroupSetupResp_t_messageResult.status', 'status', base.HEX)
PsCell_SubCellGroupSetupResp_t_messageResult.status_padding = ProtoField.bytes('PsCell_SubCellGroupSetupResp_t_messageResult.status_padding', 'status_padding', base.HEX)
PsCell_SubCellGroupSetupResp_t_messageResult.cause = ProtoField.uint32('PsCell_SubCellGroupSetupResp_t_messageResult.cause', 'cause', base.HEX)
PsCell_SubCellGroupSetupResp_t.subCellGroupId = ProtoField.uint8('PsCell_SubCellGroupSetupResp_t.subCellGroupId', 'subCellGroupId', base.HEX)
PsCell_SubCellGroupSetupResp_t.subCellGroupId_padding = ProtoField.bytes('PsCell_SubCellGroupSetupResp_t.subCellGroupId_padding', 'subCellGroupId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCELL_SUBCELLGROUPSETUPRESP_T, buffer())
  subtree:set_text('PsCell_SubCellGroupSetupResp_t')
  local PsCell_SubCellGroupSetupResp_t_messageResultTree = subtree:add (PSCELL_SUBCELLGROUPSETUPRESP_T_MESSAGERESULT, buffer(offset))
  PsCell_SubCellGroupSetupResp_t_messageResultTree:set_text('PsCell_SubCellGroupSetupResp_t_messageResult')
  PsCell_SubCellGroupSetupResp_t_messageResultTree:add_le (PsCell_SubCellGroupSetupResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupResp_t_messageResultTree:add_le (PsCell_SubCellGroupSetupResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsCell_SubCellGroupSetupResp_t_messageResultTree:add_le (PsCell_SubCellGroupSetupResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsCell_SubCellGroupSetupResp_t.subCellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupResp_t.subCellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
