local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'DlCell_DeleteResp'
end
function module:messageId()
  return 0x0103
end
----------------------------------------------------------------
local DLCELL_DELETERESP_T = Proto('DlCell_DeleteResp_t', 'DLCELL_DELETERESP_T')
local DlCell_DeleteResp_t = DLCELL_DELETERESP_T.fields
DlCell_DeleteResp_t.subcellId = ProtoField.uint8('DlCell_DeleteResp_t.subcellId', 'subcellId', base.DEC)
DlCell_DeleteResp_t.subcellId_padding = ProtoField.bytes('DlCell_DeleteResp_t.subcellId_padding', 'subcellId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (DLCELL_DELETERESP_T, buffer())
  subtree:set_text('DlCell_DeleteResp_t')
  subtree:add_le (DlCell_DeleteResp_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlCell_DeleteResp_t.subcellId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
