local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_L1AddressesExchangeDoneInd'
end
function module:messageId()
  return 0x0323
end
----------------------------------------------------------------
local PSINTERNAL_L1ADDRESSESEXCHANGEDONEIND_T = Proto('PsInternal_L1AddressesExchangeDoneInd_t', 'PSINTERNAL_L1ADDRESSESEXCHANGEDONEIND_T')
local PsInternal_L1AddressesExchangeDoneInd_t = PSINTERNAL_L1ADDRESSESEXCHANGEDONEIND_T.fields
PsInternal_L1AddressesExchangeDoneInd_t.dummy = ProtoField.uint8('PsInternal_L1AddressesExchangeDoneInd_t.dummy', 'dummy', base.HEX)
PsInternal_L1AddressesExchangeDoneInd_t.dummy_padding = ProtoField.bytes('PsInternal_L1AddressesExchangeDoneInd_t.dummy_padding', 'dummy_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_L1ADDRESSESEXCHANGEDONEIND_T, buffer())
  subtree:set_text('PsInternal_L1AddressesExchangeDoneInd_t')
  subtree:add_le (PsInternal_L1AddressesExchangeDoneInd_t.dummy, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsInternal_L1AddressesExchangeDoneInd_t.dummy_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
