local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCnfg_AddressDistributionResp'
end
function module:messageId()
  return 0x0901
end
----------------------------------------------------------------
local PSCNFG_ADDRESSDISTRIBUTIONRESP_T = Proto('PsCnfg_AddressDistributionResp_t', 'PSCNFG_ADDRESSDISTRIBUTIONRESP_T')
local PsCnfg_AddressDistributionResp_t = PSCNFG_ADDRESSDISTRIBUTIONRESP_T.fields
local PSCNFG_ADDRESSDISTRIBUTIONRESP_T_MESSAGERESULT = Proto('PsCnfg_AddressDistributionResp_t_messageResult', 'PSCNFG_ADDRESSDISTRIBUTIONRESP_T_MESSAGERESULT')
local PsCnfg_AddressDistributionResp_t_messageResult = PSCNFG_ADDRESSDISTRIBUTIONRESP_T_MESSAGERESULT.fields
PsCnfg_AddressDistributionResp_t_messageResult.status = ProtoField.bytes('PsCnfg_AddressDistributionResp_t_messageResult.status', 'status', base.HEX)
PsCnfg_AddressDistributionResp_t_messageResult.status_padding = ProtoField.bytes('PsCnfg_AddressDistributionResp_t_messageResult.status_padding', 'status_padding', base.HEX)
PsCnfg_AddressDistributionResp_t_messageResult.cause = ProtoField.uint32('PsCnfg_AddressDistributionResp_t_messageResult.cause', 'cause', base.HEX)
PsCnfg_AddressDistributionResp_t.l2RtPoolId = ProtoField.uint32('PsCnfg_AddressDistributionResp_t.l2RtPoolId', 'l2RtPoolId', base.HEX)
PsCnfg_AddressDistributionResp_t.psUserAddress = ProtoField.uint32('PsCnfg_AddressDistributionResp_t.psUserAddress', 'psUserAddress', base.HEX)
PsCnfg_AddressDistributionResp_t.psSnglAddress = ProtoField.uint32('PsCnfg_AddressDistributionResp_t.psSnglAddress', 'psSnglAddress', base.HEX)
PsCnfg_AddressDistributionResp_t.psPeerAddress = ProtoField.uint32('PsCnfg_AddressDistributionResp_t.psPeerAddress', 'psPeerAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCNFG_ADDRESSDISTRIBUTIONRESP_T, buffer())
  subtree:set_text('PsCnfg_AddressDistributionResp_t')
  local PsCnfg_AddressDistributionResp_t_messageResultTree = subtree:add (PSCNFG_ADDRESSDISTRIBUTIONRESP_T_MESSAGERESULT, buffer(offset))
  PsCnfg_AddressDistributionResp_t_messageResultTree:set_text('PsCnfg_AddressDistributionResp_t_messageResult')
  PsCnfg_AddressDistributionResp_t_messageResultTree:add_le (PsCnfg_AddressDistributionResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsCnfg_AddressDistributionResp_t_messageResultTree:add_le (PsCnfg_AddressDistributionResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsCnfg_AddressDistributionResp_t_messageResultTree:add_le (PsCnfg_AddressDistributionResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsCnfg_AddressDistributionResp_t.l2RtPoolId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsCnfg_AddressDistributionResp_t.psUserAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsCnfg_AddressDistributionResp_t.psSnglAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsCnfg_AddressDistributionResp_t.psPeerAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
