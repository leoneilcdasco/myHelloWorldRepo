local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlCell_DeleteResp'
end
function module:messageId()
  return 0x0203
end
----------------------------------------------------------------
local ULCELL_DELETERESP_T = Proto('UlCell_DeleteResp_t', 'ULCELL_DELETERESP_T')
local UlCell_DeleteResp_t = ULCELL_DELETERESP_T.fields
UlCell_DeleteResp_t.subcellId = ProtoField.uint8('UlCell_DeleteResp_t.subcellId', 'subcellId', base.DEC)
UlCell_DeleteResp_t.subcellId_padding = ProtoField.bytes('UlCell_DeleteResp_t.subcellId_padding', 'subcellId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULCELL_DELETERESP_T, buffer())
  subtree:set_text('UlCell_DeleteResp_t')
  subtree:add_le (UlCell_DeleteResp_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlCell_DeleteResp_t.subcellId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
