local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'DlCell_DeleteReq'
end
function module:messageId()
  return 0x0102
end
----------------------------------------------------------------
local DLCELL_DELETEREQ_T = Proto('DlCell_DeleteReq_t', 'DLCELL_DELETEREQ_T')
local DlCell_DeleteReq_t = DLCELL_DELETEREQ_T.fields
DlCell_DeleteReq_t.subcellId = ProtoField.uint8('DlCell_DeleteReq_t.subcellId', 'subcellId', base.DEC)
DlCell_DeleteReq_t.subcellId_padding = ProtoField.bytes('DlCell_DeleteReq_t.subcellId_padding', 'subcellId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (DLCELL_DELETEREQ_T, buffer())
  subtree:set_text('DlCell_DeleteReq_t')
  subtree:add_le (DlCell_DeleteReq_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlCell_DeleteReq_t.subcellId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
