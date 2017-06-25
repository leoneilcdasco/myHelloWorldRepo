local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoCnfg_AddressDistributionReq'
end
function module:messageId()
  return 0x0800
end
----------------------------------------------------------------
local LOCNFG_ADDRESSDISTRIBUTIONREQ_T = Proto('LoCnfg_AddressDistributionReq_t', 'LOCNFG_ADDRESSDISTRIBUTIONREQ_T')
local LoCnfg_AddressDistributionReq_t = LOCNFG_ADDRESSDISTRIBUTIONREQ_T.fields
LoCnfg_AddressDistributionReq_t.l2RtPoolId = ProtoField.uint32('LoCnfg_AddressDistributionReq_t.l2RtPoolId', 'l2RtPoolId', base.HEX)
LoCnfg_AddressDistributionReq_t.loUserCellClientAddress = ProtoField.uint32('LoCnfg_AddressDistributionReq_t.loUserCellClientAddress', 'loUserCellClientAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOCNFG_ADDRESSDISTRIBUTIONREQ_T, buffer())
  subtree:set_text('LoCnfg_AddressDistributionReq_t')
  subtree:add_le (LoCnfg_AddressDistributionReq_t.l2RtPoolId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoCnfg_AddressDistributionReq_t.loUserCellClientAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
