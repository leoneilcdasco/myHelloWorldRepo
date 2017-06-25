local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_AddressResp'
end
function module:messageId()
  return 0x0205
end
----------------------------------------------------------------
local ULDATA_ADDRESSRESP_T = Proto('UlData_AddressResp_t', 'ULDATA_ADDRESSRESP_T')
local UlData_AddressResp_t = ULDATA_ADDRESSRESP_T.fields
UlData_AddressResp_t.subcellId = ProtoField.uint8('UlData_AddressResp_t.subcellId', 'subcellId', base.DEC)
UlData_AddressResp_t.subcellId_padding = ProtoField.bytes('UlData_AddressResp_t.subcellId_padding', 'subcellId_padding', base.HEX)
local ULDATA_ADDRESSRESP_T_L1ULADDRESSES = Proto('UlData_AddressResp_t_l1UlAddresses', 'ULDATA_ADDRESSRESP_T_L1ULADDRESSES')
local UlData_AddressResp_t_l1UlAddresses = ULDATA_ADDRESSRESP_T_L1ULADDRESSES.fields
UlData_AddressResp_t_l1UlAddresses.puschReceiveReq = ProtoField.uint32('UlData_AddressResp_t_l1UlAddresses.puschReceiveReq', 'puschReceiveReq', base.HEX)
UlData_AddressResp_t_l1UlAddresses.pucchReceiveReq = ProtoField.uint32('UlData_AddressResp_t_l1UlAddresses.pucchReceiveReq', 'pucchReceiveReq', base.HEX)
UlData_AddressResp_t_l1UlAddresses.delayReq = ProtoField.uint32('UlData_AddressResp_t_l1UlAddresses.delayReq', 'delayReq', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_ADDRESSRESP_T, buffer())
  subtree:set_text('UlData_AddressResp_t')
  subtree:add_le (UlData_AddressResp_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_AddressResp_t.subcellId_padding, buffer(offset, 3))
  offset = offset + 3
  local UlData_AddressResp_t_l1UlAddressesTree = subtree:add (ULDATA_ADDRESSRESP_T_L1ULADDRESSES, buffer(offset))
  UlData_AddressResp_t_l1UlAddressesTree:set_text('UlData_AddressResp_t_l1UlAddresses')
  UlData_AddressResp_t_l1UlAddressesTree:add_le (UlData_AddressResp_t_l1UlAddresses.puschReceiveReq, buffer(offset, 4))
  offset = offset + 4
  UlData_AddressResp_t_l1UlAddressesTree:add_le (UlData_AddressResp_t_l1UlAddresses.pucchReceiveReq, buffer(offset, 4))
  offset = offset + 4
  UlData_AddressResp_t_l1UlAddressesTree:add_le (UlData_AddressResp_t_l1UlAddresses.delayReq, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
