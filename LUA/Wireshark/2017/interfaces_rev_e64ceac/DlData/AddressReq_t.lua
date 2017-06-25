local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'DlData_AddressReq'
end
function module:messageId()
  return 0x0104
end
----------------------------------------------------------------
local DLDATA_ADDRESSREQ_T = Proto('DlData_AddressReq_t', 'DLDATA_ADDRESSREQ_T')
local DlData_AddressReq_t = DLDATA_ADDRESSREQ_T.fields
DlData_AddressReq_t.subcellId = ProtoField.uint8('DlData_AddressReq_t.subcellId', 'subcellId', base.DEC)
DlData_AddressReq_t.subcellId_padding = ProtoField.bytes('DlData_AddressReq_t.subcellId_padding', 'subcellId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (DLDATA_ADDRESSREQ_T, buffer())
  subtree:set_text('DlData_AddressReq_t')
  subtree:add_le (DlData_AddressReq_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_AddressReq_t.subcellId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
