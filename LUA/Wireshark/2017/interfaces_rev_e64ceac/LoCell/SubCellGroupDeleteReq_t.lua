local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoCell_SubCellGroupDeleteReq'
end
function module:messageId()
  return 0x0822
end
----------------------------------------------------------------
local LOCELL_SUBCELLGROUPDELETEREQ_T = Proto('LoCell_SubCellGroupDeleteReq_t', 'LOCELL_SUBCELLGROUPDELETEREQ_T')
local LoCell_SubCellGroupDeleteReq_t = LOCELL_SUBCELLGROUPDELETEREQ_T.fields
LoCell_SubCellGroupDeleteReq_t.subCellGroupId = ProtoField.uint8('LoCell_SubCellGroupDeleteReq_t.subCellGroupId', 'subCellGroupId', base.HEX)
LoCell_SubCellGroupDeleteReq_t.subCellGroupId_padding = ProtoField.bytes('LoCell_SubCellGroupDeleteReq_t.subCellGroupId_padding', 'subCellGroupId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOCELL_SUBCELLGROUPDELETEREQ_T, buffer())
  subtree:set_text('LoCell_SubCellGroupDeleteReq_t')
  subtree:add_le (LoCell_SubCellGroupDeleteReq_t.subCellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCell_SubCellGroupDeleteReq_t.subCellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
