local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_L3AddressesInd'
end
function module:messageId()
  return 0x0307
end
----------------------------------------------------------------
local PSINTERNAL_L3ADDRESSESIND_T = Proto('PsInternal_L3AddressesInd_t', 'PSINTERNAL_L3ADDRESSESIND_T')
local PsInternal_L3AddressesInd_t = PSINTERNAL_L3ADDRESSESIND_T.fields
PsInternal_L3AddressesInd_t.loCtrlDlDataAddress = ProtoField.uint32('PsInternal_L3AddressesInd_t.loCtrlDlDataAddress', 'loCtrlDlDataAddress', base.HEX)
PsInternal_L3AddressesInd_t.loCtrlUlDataAddress = ProtoField.uint32('PsInternal_L3AddressesInd_t.loCtrlUlDataAddress', 'loCtrlUlDataAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_L3ADDRESSESIND_T, buffer())
  subtree:set_text('PsInternal_L3AddressesInd_t')
  subtree:add_le (PsInternal_L3AddressesInd_t.loCtrlDlDataAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsInternal_L3AddressesInd_t.loCtrlUlDataAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
