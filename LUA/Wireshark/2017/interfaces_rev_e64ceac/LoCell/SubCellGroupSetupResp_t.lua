local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoCell_SubCellGroupSetupResp'
end
function module:messageId()
  return 0x0821
end
----------------------------------------------------------------
local LOCELL_SUBCELLGROUPSETUPRESP_T = Proto('LoCell_SubCellGroupSetupResp_t', 'LOCELL_SUBCELLGROUPSETUPRESP_T')
local LoCell_SubCellGroupSetupResp_t = LOCELL_SUBCELLGROUPSETUPRESP_T.fields
local LOCELL_SUBCELLGROUPSETUPRESP_T_MESSAGERESULT = Proto('LoCell_SubCellGroupSetupResp_t_messageResult', 'LOCELL_SUBCELLGROUPSETUPRESP_T_MESSAGERESULT')
local LoCell_SubCellGroupSetupResp_t_messageResult = LOCELL_SUBCELLGROUPSETUPRESP_T_MESSAGERESULT.fields
LoCell_SubCellGroupSetupResp_t_messageResult.status = ProtoField.bytes('LoCell_SubCellGroupSetupResp_t_messageResult.status', 'status', base.HEX)
LoCell_SubCellGroupSetupResp_t_messageResult.status_padding = ProtoField.bytes('LoCell_SubCellGroupSetupResp_t_messageResult.status_padding', 'status_padding', base.HEX)
LoCell_SubCellGroupSetupResp_t_messageResult.cause = ProtoField.uint32('LoCell_SubCellGroupSetupResp_t_messageResult.cause', 'cause', base.HEX)
LoCell_SubCellGroupSetupResp_t.subCellGroupId = ProtoField.uint8('LoCell_SubCellGroupSetupResp_t.subCellGroupId', 'subCellGroupId', base.HEX)
LoCell_SubCellGroupSetupResp_t.subCellGroupId_padding = ProtoField.bytes('LoCell_SubCellGroupSetupResp_t.subCellGroupId_padding', 'subCellGroupId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOCELL_SUBCELLGROUPSETUPRESP_T, buffer())
  subtree:set_text('LoCell_SubCellGroupSetupResp_t')
  local LoCell_SubCellGroupSetupResp_t_messageResultTree = subtree:add (LOCELL_SUBCELLGROUPSETUPRESP_T_MESSAGERESULT, buffer(offset))
  LoCell_SubCellGroupSetupResp_t_messageResultTree:set_text('LoCell_SubCellGroupSetupResp_t_messageResult')
  LoCell_SubCellGroupSetupResp_t_messageResultTree:add_le (LoCell_SubCellGroupSetupResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  LoCell_SubCellGroupSetupResp_t_messageResultTree:add_le (LoCell_SubCellGroupSetupResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  LoCell_SubCellGroupSetupResp_t_messageResultTree:add_le (LoCell_SubCellGroupSetupResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoCell_SubCellGroupSetupResp_t.subCellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCell_SubCellGroupSetupResp_t.subCellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
