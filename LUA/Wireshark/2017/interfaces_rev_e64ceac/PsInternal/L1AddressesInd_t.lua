local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_L1AddressesInd'
end
function module:messageId()
  return 0x0302
end
----------------------------------------------------------------
local PSINTERNAL_L1ADDRESSESIND_T = Proto('PsInternal_L1AddressesInd_t', 'PSINTERNAL_L1ADDRESSESIND_T')
local PsInternal_L1AddressesInd_t = PSINTERNAL_L1ADDRESSESIND_T.fields
local PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES = Proto('PsInternal_L1AddressesInd_t_addresses', 'PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES')
local PsInternal_L1AddressesInd_t_addresses = PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES.fields
PsInternal_L1AddressesInd_t_addresses.addresses_length = ProtoField.uint32('PsInternal_L1AddressesInd_t_addresses.addresses_length', 'addresses_length', base.HEX)
PsInternal_L1AddressesInd_t_addresses.subCellId = ProtoField.uint8('PsInternal_L1AddressesInd_t_addresses.subCellId', 'subCellId', base.HEX)
PsInternal_L1AddressesInd_t_addresses.subCellId_padding = ProtoField.bytes('PsInternal_L1AddressesInd_t_addresses.subCellId_padding', 'subCellId_padding', base.HEX)
local PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES_ADDRESSINFO = Proto('PsInternal_L1AddressesInd_t_addresses_addressInfo', 'PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES_ADDRESSINFO')
local PsInternal_L1AddressesInd_t_addresses_addressInfo = PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES_ADDRESSINFO.fields
local PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES_ADDRESSINFO_DL = Proto('PsInternal_L1AddressesInd_t_addresses_addressInfo_dl', 'PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES_ADDRESSINFO_DL')
local PsInternal_L1AddressesInd_t_addresses_addressInfo_dl = PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES_ADDRESSINFO_DL.fields
PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.xpbchSendReq = ProtoField.uint32('PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.xpbchSendReq', 'xpbchSendReq', base.HEX)
PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.epbchSendReq = ProtoField.uint32('PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.epbchSendReq', 'epbchSendReq', base.HEX)
PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.pdcchSendReq = ProtoField.uint32('PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.pdcchSendReq', 'pdcchSendReq', base.HEX)
PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.subfrTypeReq = ProtoField.uint32('PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.subfrTypeReq', 'subfrTypeReq', base.HEX)
PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.pdschSendReq = ProtoField.uint32('PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.pdschSendReq', 'pdschSendReq', base.HEX)
PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.pdschPayloadTbSendReq = ProtoField.uint32('PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.pdschPayloadTbSendReq', 'pdschPayloadTbSendReq', base.HEX)
PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.patternConfigReq = ProtoField.uint32('PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.patternConfigReq', 'patternConfigReq', base.HEX)
local PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES_ADDRESSINFO_UL = Proto('PsInternal_L1AddressesInd_t_addresses_addressInfo_ul', 'PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES_ADDRESSINFO_UL')
local PsInternal_L1AddressesInd_t_addresses_addressInfo_ul = PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES_ADDRESSINFO_UL.fields
PsInternal_L1AddressesInd_t_addresses_addressInfo_ul.puschReceiveReq = ProtoField.uint32('PsInternal_L1AddressesInd_t_addresses_addressInfo_ul.puschReceiveReq', 'puschReceiveReq', base.HEX)
PsInternal_L1AddressesInd_t_addresses_addressInfo_ul.pucchReceiveReq = ProtoField.uint32('PsInternal_L1AddressesInd_t_addresses_addressInfo_ul.pucchReceiveReq', 'pucchReceiveReq', base.HEX)
PsInternal_L1AddressesInd_t_addresses_addressInfo_ul.delayReq = ProtoField.uint32('PsInternal_L1AddressesInd_t_addresses_addressInfo_ul.delayReq', 'delayReq', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_L1ADDRESSESIND_T, buffer())
  subtree:set_text('PsInternal_L1AddressesInd_t')
  local PsInternal_L1AddressesInd_t_addressesTree = subtree:add (PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES, buffer(offset))
  PsInternal_L1AddressesInd_t_addressesTree:set_text('PsInternal_L1AddressesInd_t_addresses')
  PsInternal_L1AddressesInd_t_addressesTree:add_le (PsInternal_L1AddressesInd_t_addresses.addresses_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_L1AddressesInd_t_addressesTree:add_le (PsInternal_L1AddressesInd_t_addresses.subCellId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_L1AddressesInd_t_addressesTree:add_le (PsInternal_L1AddressesInd_t_addresses.subCellId_padding, buffer(offset, 3))
  offset = offset + 3
  local PsInternal_L1AddressesInd_t_addresses_addressInfoTree = PsInternal_L1AddressesInd_t_addressesTree:add (PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES_ADDRESSINFO, buffer(offset))
  PsInternal_L1AddressesInd_t_addresses_addressInfoTree:set_text('PsInternal_L1AddressesInd_t_addresses_addressInfo')
  local PsInternal_L1AddressesInd_t_addresses_addressInfo_dlTree = PsInternal_L1AddressesInd_t_addresses_addressInfoTree:add (PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES_ADDRESSINFO_DL, buffer(offset))
  PsInternal_L1AddressesInd_t_addresses_addressInfo_dlTree:set_text('PsInternal_L1AddressesInd_t_addresses_addressInfo_dl')
  PsInternal_L1AddressesInd_t_addresses_addressInfo_dlTree:add_le (PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.xpbchSendReq, buffer(offset, 4))
  offset = offset + 4
  PsInternal_L1AddressesInd_t_addresses_addressInfo_dlTree:add_le (PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.epbchSendReq, buffer(offset, 4))
  offset = offset + 4
  PsInternal_L1AddressesInd_t_addresses_addressInfo_dlTree:add_le (PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.pdcchSendReq, buffer(offset, 4))
  offset = offset + 4
  PsInternal_L1AddressesInd_t_addresses_addressInfo_dlTree:add_le (PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.subfrTypeReq, buffer(offset, 4))
  offset = offset + 4
  PsInternal_L1AddressesInd_t_addresses_addressInfo_dlTree:add_le (PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.pdschSendReq, buffer(offset, 4))
  offset = offset + 4
  PsInternal_L1AddressesInd_t_addresses_addressInfo_dlTree:add_le (PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.pdschPayloadTbSendReq, buffer(offset, 4))
  offset = offset + 4
  PsInternal_L1AddressesInd_t_addresses_addressInfo_dlTree:add_le (PsInternal_L1AddressesInd_t_addresses_addressInfo_dl.patternConfigReq, buffer(offset, 4))
  offset = offset + 4
  local PsInternal_L1AddressesInd_t_addresses_addressInfo_ulTree = PsInternal_L1AddressesInd_t_addresses_addressInfoTree:add (PSINTERNAL_L1ADDRESSESIND_T_ADDRESSES_ADDRESSINFO_UL, buffer(offset))
  PsInternal_L1AddressesInd_t_addresses_addressInfo_ulTree:set_text('PsInternal_L1AddressesInd_t_addresses_addressInfo_ul')
  PsInternal_L1AddressesInd_t_addresses_addressInfo_ulTree:add_le (PsInternal_L1AddressesInd_t_addresses_addressInfo_ul.puschReceiveReq, buffer(offset, 4))
  offset = offset + 4
  PsInternal_L1AddressesInd_t_addresses_addressInfo_ulTree:add_le (PsInternal_L1AddressesInd_t_addresses_addressInfo_ul.pucchReceiveReq, buffer(offset, 4))
  offset = offset + 4
  PsInternal_L1AddressesInd_t_addresses_addressInfo_ulTree:add_le (PsInternal_L1AddressesInd_t_addresses_addressInfo_ul.delayReq, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
