local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'DlCell_SetupResp'
end
function module:messageId()
  return 0x0101
end
----------------------------------------------------------------
local DLCELL_SETUPRESP_T = Proto('DlCell_SetupResp_t', 'DLCELL_SETUPRESP_T')
local DlCell_SetupResp_t = DLCELL_SETUPRESP_T.fields
DlCell_SetupResp_t.subcellId = ProtoField.uint8('DlCell_SetupResp_t.subcellId', 'subcellId', base.DEC)
DlCell_SetupResp_t.subcellId_padding = ProtoField.bytes('DlCell_SetupResp_t.subcellId_padding', 'subcellId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (DLCELL_SETUPRESP_T, buffer())
  subtree:set_text('DlCell_SetupResp_t')
  subtree:add_le (DlCell_SetupResp_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlCell_SetupResp_t.subcellId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
