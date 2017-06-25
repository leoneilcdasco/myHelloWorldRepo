local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'DlData_AddressResp'
end
function module:messageId()
  return 0x0105
end
----------------------------------------------------------------
local DLDATA_ADDRESSRESP_T = Proto('DlData_AddressResp_t', 'DLDATA_ADDRESSRESP_T')
local DlData_AddressResp_t = DLDATA_ADDRESSRESP_T.fields
DlData_AddressResp_t.subcellId = ProtoField.uint8('DlData_AddressResp_t.subcellId', 'subcellId', base.DEC)
DlData_AddressResp_t.subcellId_padding = ProtoField.bytes('DlData_AddressResp_t.subcellId_padding', 'subcellId_padding', base.HEX)
local DLDATA_ADDRESSRESP_T_L1DLADDRESSES = Proto('DlData_AddressResp_t_l1DlAddresses', 'DLDATA_ADDRESSRESP_T_L1DLADDRESSES')
local DlData_AddressResp_t_l1DlAddresses = DLDATA_ADDRESSRESP_T_L1DLADDRESSES.fields
DlData_AddressResp_t_l1DlAddresses.xpbchSendReq = ProtoField.uint32('DlData_AddressResp_t_l1DlAddresses.xpbchSendReq', 'xpbchSendReq', base.HEX)
DlData_AddressResp_t_l1DlAddresses.epbchSendReq = ProtoField.uint32('DlData_AddressResp_t_l1DlAddresses.epbchSendReq', 'epbchSendReq', base.HEX)
DlData_AddressResp_t_l1DlAddresses.pdcchSendReq = ProtoField.uint32('DlData_AddressResp_t_l1DlAddresses.pdcchSendReq', 'pdcchSendReq', base.HEX)
DlData_AddressResp_t_l1DlAddresses.subfrTypeReq = ProtoField.uint32('DlData_AddressResp_t_l1DlAddresses.subfrTypeReq', 'subfrTypeReq', base.HEX)
DlData_AddressResp_t_l1DlAddresses.pdschSendReq = ProtoField.uint32('DlData_AddressResp_t_l1DlAddresses.pdschSendReq', 'pdschSendReq', base.HEX)
DlData_AddressResp_t_l1DlAddresses.pdschPayloadTbSendReq = ProtoField.uint32('DlData_AddressResp_t_l1DlAddresses.pdschPayloadTbSendReq', 'pdschPayloadTbSendReq', base.HEX)
DlData_AddressResp_t_l1DlAddresses.patternConfigReq = ProtoField.uint32('DlData_AddressResp_t_l1DlAddresses.patternConfigReq', 'patternConfigReq', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (DLDATA_ADDRESSRESP_T, buffer())
  subtree:set_text('DlData_AddressResp_t')
  subtree:add_le (DlData_AddressResp_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_AddressResp_t.subcellId_padding, buffer(offset, 3))
  offset = offset + 3
  local DlData_AddressResp_t_l1DlAddressesTree = subtree:add (DLDATA_ADDRESSRESP_T_L1DLADDRESSES, buffer(offset))
  DlData_AddressResp_t_l1DlAddressesTree:set_text('DlData_AddressResp_t_l1DlAddresses')
  DlData_AddressResp_t_l1DlAddressesTree:add_le (DlData_AddressResp_t_l1DlAddresses.xpbchSendReq, buffer(offset, 4))
  offset = offset + 4
  DlData_AddressResp_t_l1DlAddressesTree:add_le (DlData_AddressResp_t_l1DlAddresses.epbchSendReq, buffer(offset, 4))
  offset = offset + 4
  DlData_AddressResp_t_l1DlAddressesTree:add_le (DlData_AddressResp_t_l1DlAddresses.pdcchSendReq, buffer(offset, 4))
  offset = offset + 4
  DlData_AddressResp_t_l1DlAddressesTree:add_le (DlData_AddressResp_t_l1DlAddresses.subfrTypeReq, buffer(offset, 4))
  offset = offset + 4
  DlData_AddressResp_t_l1DlAddressesTree:add_le (DlData_AddressResp_t_l1DlAddresses.pdschSendReq, buffer(offset, 4))
  offset = offset + 4
  DlData_AddressResp_t_l1DlAddressesTree:add_le (DlData_AddressResp_t_l1DlAddresses.pdschPayloadTbSendReq, buffer(offset, 4))
  offset = offset + 4
  DlData_AddressResp_t_l1DlAddressesTree:add_le (DlData_AddressResp_t_l1DlAddresses.patternConfigReq, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
