local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiCnfg_SAddressDistributionReq'
end
function module:messageId()
  return 0x0750
end
----------------------------------------------------------------
local HICNFG_SADDRESSDISTRIBUTIONREQ = Proto('HiCnfg_SAddressDistributionReq', 'HICNFG_SADDRESSDISTRIBUTIONREQ')
local HiCnfg_SAddressDistributionReq = HICNFG_SADDRESSDISTRIBUTIONREQ.fields
HiCnfg_SAddressDistributionReq.l2NrtPoolId = ProtoField.uint32('HiCnfg_SAddressDistributionReq.l2NrtPoolId', 'l2NrtPoolId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HICNFG_SADDRESSDISTRIBUTIONREQ, buffer())
  subtree:set_text('HiCnfg_SAddressDistributionReq')
  subtree:add_le (HiCnfg_SAddressDistributionReq.l2NrtPoolId, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
