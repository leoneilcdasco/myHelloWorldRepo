local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlCell_SetupResp'
end
function module:messageId()
  return 0x0201
end
----------------------------------------------------------------
local ULCELL_SETUPRESP_T = Proto('UlCell_SetupResp_t', 'ULCELL_SETUPRESP_T')
local UlCell_SetupResp_t = ULCELL_SETUPRESP_T.fields
UlCell_SetupResp_t.subcellId = ProtoField.uint8('UlCell_SetupResp_t.subcellId', 'subcellId', base.DEC)
UlCell_SetupResp_t.subcellId_padding = ProtoField.bytes('UlCell_SetupResp_t.subcellId_padding', 'subcellId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULCELL_SETUPRESP_T, buffer())
  subtree:set_text('UlCell_SetupResp_t')
  subtree:add_le (UlCell_SetupResp_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlCell_SetupResp_t.subcellId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
