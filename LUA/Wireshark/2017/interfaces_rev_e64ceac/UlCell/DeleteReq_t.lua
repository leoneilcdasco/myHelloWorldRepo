local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlCell_DeleteReq'
end
function module:messageId()
  return 0x0202
end
----------------------------------------------------------------
local ULCELL_DELETEREQ_T = Proto('UlCell_DeleteReq_t', 'ULCELL_DELETEREQ_T')
local UlCell_DeleteReq_t = ULCELL_DELETEREQ_T.fields
UlCell_DeleteReq_t.subcellId = ProtoField.uint8('UlCell_DeleteReq_t.subcellId', 'subcellId', base.DEC)
UlCell_DeleteReq_t.subcellId_padding = ProtoField.bytes('UlCell_DeleteReq_t.subcellId_padding', 'subcellId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULCELL_DELETEREQ_T, buffer())
  subtree:set_text('UlCell_DeleteReq_t')
  subtree:add_le (UlCell_DeleteReq_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlCell_DeleteReq_t.subcellId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
