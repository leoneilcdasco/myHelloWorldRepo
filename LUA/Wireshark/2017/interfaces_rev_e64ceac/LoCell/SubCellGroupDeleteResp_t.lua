local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoCell_SubCellGroupDeleteResp'
end
function module:messageId()
  return 0x0823
end
----------------------------------------------------------------
local LOCELL_SUBCELLGROUPDELETERESP_T = Proto('LoCell_SubCellGroupDeleteResp_t', 'LOCELL_SUBCELLGROUPDELETERESP_T')
local LoCell_SubCellGroupDeleteResp_t = LOCELL_SUBCELLGROUPDELETERESP_T.fields
LoCell_SubCellGroupDeleteResp_t.subCellGroupId = ProtoField.uint8('LoCell_SubCellGroupDeleteResp_t.subCellGroupId', 'subCellGroupId', base.HEX)
LoCell_SubCellGroupDeleteResp_t.subCellGroupId_padding = ProtoField.bytes('LoCell_SubCellGroupDeleteResp_t.subCellGroupId_padding', 'subCellGroupId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOCELL_SUBCELLGROUPDELETERESP_T, buffer())
  subtree:set_text('LoCell_SubCellGroupDeleteResp_t')
  subtree:add_le (LoCell_SubCellGroupDeleteResp_t.subCellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCell_SubCellGroupDeleteResp_t.subCellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
