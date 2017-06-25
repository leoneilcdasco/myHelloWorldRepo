local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_AddressReq'
end
function module:messageId()
  return 0x0204
end
----------------------------------------------------------------
local ULDATA_ADDRESSREQ_T = Proto('UlData_AddressReq_t', 'ULDATA_ADDRESSREQ_T')
local UlData_AddressReq_t = ULDATA_ADDRESSREQ_T.fields
UlData_AddressReq_t.subcellId = ProtoField.uint8('UlData_AddressReq_t.subcellId', 'subcellId', base.DEC)
UlData_AddressReq_t.subcellId_padding = ProtoField.bytes('UlData_AddressReq_t.subcellId_padding', 'subcellId_padding', base.HEX)
local ULDATA_ADDRESSREQ_T_L2ADDRESSES = Proto('UlData_AddressReq_t_l2Addresses', 'ULDATA_ADDRESSREQ_T_L2ADDRESSES')
local UlData_AddressReq_t_l2Addresses = ULDATA_ADDRESSREQ_T_L2ADDRESSES.fields
UlData_AddressReq_t_l2Addresses.delayResp = ProtoField.uint32('UlData_AddressReq_t_l2Addresses.delayResp', 'delayResp', base.HEX)
UlData_AddressReq_t_l2Addresses.syncInd = ProtoField.uint32('UlData_AddressReq_t_l2Addresses.syncInd', 'syncInd', base.HEX)
UlData_AddressReq_t_l2Addresses.prachReceiveInd = ProtoField.uint32('UlData_AddressReq_t_l2Addresses.prachReceiveInd', 'prachReceiveInd', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_ADDRESSREQ_T, buffer())
  subtree:set_text('UlData_AddressReq_t')
  subtree:add_le (UlData_AddressReq_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_AddressReq_t.subcellId_padding, buffer(offset, 3))
  offset = offset + 3
  local UlData_AddressReq_t_l2AddressesTree = subtree:add (ULDATA_ADDRESSREQ_T_L2ADDRESSES, buffer(offset))
  UlData_AddressReq_t_l2AddressesTree:set_text('UlData_AddressReq_t_l2Addresses')
  UlData_AddressReq_t_l2AddressesTree:add_le (UlData_AddressReq_t_l2Addresses.delayResp, buffer(offset, 4))
  offset = offset + 4
  UlData_AddressReq_t_l2AddressesTree:add_le (UlData_AddressReq_t_l2Addresses.syncInd, buffer(offset, 4))
  offset = offset + 4
  UlData_AddressReq_t_l2AddressesTree:add_le (UlData_AddressReq_t_l2Addresses.prachReceiveInd, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
