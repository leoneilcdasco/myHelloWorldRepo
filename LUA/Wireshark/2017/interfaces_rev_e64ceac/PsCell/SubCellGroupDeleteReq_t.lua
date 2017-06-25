local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCell_SubCellGroupDeleteReq'
end
function module:messageId()
  return 0x0924
end
----------------------------------------------------------------
local PSCELL_SUBCELLGROUPDELETEREQ_T = Proto('PsCell_SubCellGroupDeleteReq_t', 'PSCELL_SUBCELLGROUPDELETEREQ_T')
local PsCell_SubCellGroupDeleteReq_t = PSCELL_SUBCELLGROUPDELETEREQ_T.fields
PsCell_SubCellGroupDeleteReq_t.subCellGroupId = ProtoField.uint8('PsCell_SubCellGroupDeleteReq_t.subCellGroupId', 'subCellGroupId', base.HEX)
PsCell_SubCellGroupDeleteReq_t.subCellGroupId_padding = ProtoField.bytes('PsCell_SubCellGroupDeleteReq_t.subCellGroupId_padding', 'subCellGroupId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCELL_SUBCELLGROUPDELETEREQ_T, buffer())
  subtree:set_text('PsCell_SubCellGroupDeleteReq_t')
  subtree:add_le (PsCell_SubCellGroupDeleteReq_t.subCellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupDeleteReq_t.subCellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
