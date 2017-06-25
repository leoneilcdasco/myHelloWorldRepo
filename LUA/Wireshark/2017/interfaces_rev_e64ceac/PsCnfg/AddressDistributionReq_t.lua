local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCnfg_AddressDistributionReq'
end
function module:messageId()
  return 0x0900
end
----------------------------------------------------------------
local PSCNFG_ADDRESSDISTRIBUTIONREQ_T = Proto('PsCnfg_AddressDistributionReq_t', 'PSCNFG_ADDRESSDISTRIBUTIONREQ_T')
local PsCnfg_AddressDistributionReq_t = PSCNFG_ADDRESSDISTRIBUTIONREQ_T.fields
PsCnfg_AddressDistributionReq_t.loCtrlAddressServerAddress = ProtoField.uint32('PsCnfg_AddressDistributionReq_t.loCtrlAddressServerAddress', 'loCtrlAddressServerAddress', base.HEX)
PsCnfg_AddressDistributionReq_t.l2RtPoolId = ProtoField.uint32('PsCnfg_AddressDistributionReq_t.l2RtPoolId', 'l2RtPoolId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCNFG_ADDRESSDISTRIBUTIONREQ_T, buffer())
  subtree:set_text('PsCnfg_AddressDistributionReq_t')
  subtree:add_le (PsCnfg_AddressDistributionReq_t.loCtrlAddressServerAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsCnfg_AddressDistributionReq_t.l2RtPoolId, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
