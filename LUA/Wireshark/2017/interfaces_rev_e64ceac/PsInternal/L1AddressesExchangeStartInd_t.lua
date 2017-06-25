local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_L1AddressesExchangeStartInd'
end
function module:messageId()
  return 0x0322
end
----------------------------------------------------------------
local PSINTERNAL_L1ADDRESSESEXCHANGESTARTIND_T = Proto('PsInternal_L1AddressesExchangeStartInd_t', 'PSINTERNAL_L1ADDRESSESEXCHANGESTARTIND_T')
local PsInternal_L1AddressesExchangeStartInd_t = PSINTERNAL_L1ADDRESSESEXCHANGESTARTIND_T.fields
local PSINTERNAL_L1ADDRESSESEXCHANGESTARTIND_T_L1ADDRESSES = Proto('PsInternal_L1AddressesExchangeStartInd_t_l1Addresses', 'PSINTERNAL_L1ADDRESSESEXCHANGESTARTIND_T_L1ADDRESSES')
local PsInternal_L1AddressesExchangeStartInd_t_l1Addresses = PSINTERNAL_L1ADDRESSESEXCHANGESTARTIND_T_L1ADDRESSES.fields
PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.l1Addresses_length = ProtoField.uint32('PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.l1Addresses_length', 'l1Addresses_length', base.HEX)
PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.subcellId = ProtoField.uint8('PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.subcellId', 'subcellId', base.DEC)
PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.subcellId_padding = ProtoField.int8('PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.subcellId_padding', 'subcellId_padding', base.DEC)
PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.ul = ProtoField.uint16('PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.ul', 'ul', base.HEX)
PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.dl = ProtoField.uint16('PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.dl', 'dl', base.HEX)
PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.dl_padding = ProtoField.bytes('PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.dl_padding', 'dl_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_L1ADDRESSESEXCHANGESTARTIND_T, buffer())
  subtree:set_text('PsInternal_L1AddressesExchangeStartInd_t')
  local PsInternal_L1AddressesExchangeStartInd_t_l1AddressesTree = subtree:add (PSINTERNAL_L1ADDRESSESEXCHANGESTARTIND_T_L1ADDRESSES, buffer(offset))
  PsInternal_L1AddressesExchangeStartInd_t_l1AddressesTree:set_text('PsInternal_L1AddressesExchangeStartInd_t_l1Addresses')
  PsInternal_L1AddressesExchangeStartInd_t_l1AddressesTree:add_le (PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.l1Addresses_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_L1AddressesExchangeStartInd_t_l1AddressesTree:add_le (PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.subcellId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_L1AddressesExchangeStartInd_t_l1AddressesTree:add_le (PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.subcellId_padding, buffer(offset, 1))
  offset = offset + 1
  PsInternal_L1AddressesExchangeStartInd_t_l1AddressesTree:add_le (PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.ul, buffer(offset, 2))
  offset = offset + 2
  PsInternal_L1AddressesExchangeStartInd_t_l1AddressesTree:add_le (PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.dl, buffer(offset, 2))
  offset = offset + 2
  PsInternal_L1AddressesExchangeStartInd_t_l1AddressesTree:add_le (PsInternal_L1AddressesExchangeStartInd_t_l1Addresses.dl_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
