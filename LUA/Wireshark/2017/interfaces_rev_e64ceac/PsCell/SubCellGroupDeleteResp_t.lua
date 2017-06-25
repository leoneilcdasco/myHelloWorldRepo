local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCell_SubCellGroupDeleteResp'
end
function module:messageId()
  return 0x0925
end
----------------------------------------------------------------
local PSCELL_SUBCELLGROUPDELETERESP_T = Proto('PsCell_SubCellGroupDeleteResp_t', 'PSCELL_SUBCELLGROUPDELETERESP_T')
local PsCell_SubCellGroupDeleteResp_t = PSCELL_SUBCELLGROUPDELETERESP_T.fields
local PSCELL_SUBCELLGROUPDELETERESP_T_MESSAGERESULT = Proto('PsCell_SubCellGroupDeleteResp_t_messageResult', 'PSCELL_SUBCELLGROUPDELETERESP_T_MESSAGERESULT')
local PsCell_SubCellGroupDeleteResp_t_messageResult = PSCELL_SUBCELLGROUPDELETERESP_T_MESSAGERESULT.fields
PsCell_SubCellGroupDeleteResp_t_messageResult.status = ProtoField.bytes('PsCell_SubCellGroupDeleteResp_t_messageResult.status', 'status', base.HEX)
PsCell_SubCellGroupDeleteResp_t_messageResult.status_padding = ProtoField.bytes('PsCell_SubCellGroupDeleteResp_t_messageResult.status_padding', 'status_padding', base.HEX)
PsCell_SubCellGroupDeleteResp_t_messageResult.cause = ProtoField.uint32('PsCell_SubCellGroupDeleteResp_t_messageResult.cause', 'cause', base.HEX)
PsCell_SubCellGroupDeleteResp_t.subCellGroupId = ProtoField.uint8('PsCell_SubCellGroupDeleteResp_t.subCellGroupId', 'subCellGroupId', base.HEX)
PsCell_SubCellGroupDeleteResp_t.subCellGroupId_padding = ProtoField.bytes('PsCell_SubCellGroupDeleteResp_t.subCellGroupId_padding', 'subCellGroupId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCELL_SUBCELLGROUPDELETERESP_T, buffer())
  subtree:set_text('PsCell_SubCellGroupDeleteResp_t')
  local PsCell_SubCellGroupDeleteResp_t_messageResultTree = subtree:add (PSCELL_SUBCELLGROUPDELETERESP_T_MESSAGERESULT, buffer(offset))
  PsCell_SubCellGroupDeleteResp_t_messageResultTree:set_text('PsCell_SubCellGroupDeleteResp_t_messageResult')
  PsCell_SubCellGroupDeleteResp_t_messageResultTree:add_le (PsCell_SubCellGroupDeleteResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupDeleteResp_t_messageResultTree:add_le (PsCell_SubCellGroupDeleteResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsCell_SubCellGroupDeleteResp_t_messageResultTree:add_le (PsCell_SubCellGroupDeleteResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsCell_SubCellGroupDeleteResp_t.subCellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupDeleteResp_t.subCellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
