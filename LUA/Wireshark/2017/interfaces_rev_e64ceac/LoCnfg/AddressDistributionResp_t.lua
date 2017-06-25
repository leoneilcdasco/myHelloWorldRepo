local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoCnfg_AddressDistributionResp'
end
function module:messageId()
  return 0x0801
end
----------------------------------------------------------------
local LOCNFG_ADDRESSDISTRIBUTIONRESP_T = Proto('LoCnfg_AddressDistributionResp_t', 'LOCNFG_ADDRESSDISTRIBUTIONRESP_T')
local LoCnfg_AddressDistributionResp_t = LOCNFG_ADDRESSDISTRIBUTIONRESP_T.fields
local LOCNFG_ADDRESSDISTRIBUTIONRESP_T_MESSAGERESULT = Proto('LoCnfg_AddressDistributionResp_t_messageResult', 'LOCNFG_ADDRESSDISTRIBUTIONRESP_T_MESSAGERESULT')
local LoCnfg_AddressDistributionResp_t_messageResult = LOCNFG_ADDRESSDISTRIBUTIONRESP_T_MESSAGERESULT.fields
LoCnfg_AddressDistributionResp_t_messageResult.status = ProtoField.bytes('LoCnfg_AddressDistributionResp_t_messageResult.status', 'status', base.HEX)
LoCnfg_AddressDistributionResp_t_messageResult.status_padding = ProtoField.bytes('LoCnfg_AddressDistributionResp_t_messageResult.status_padding', 'status_padding', base.HEX)
LoCnfg_AddressDistributionResp_t_messageResult.cause = ProtoField.uint32('LoCnfg_AddressDistributionResp_t_messageResult.cause', 'cause', base.HEX)
LoCnfg_AddressDistributionResp_t.l2RtPoolId = ProtoField.uint32('LoCnfg_AddressDistributionResp_t.l2RtPoolId', 'l2RtPoolId', base.HEX)
LoCnfg_AddressDistributionResp_t.loUserAddress = ProtoField.uint32('LoCnfg_AddressDistributionResp_t.loUserAddress', 'loUserAddress', base.HEX)
LoCnfg_AddressDistributionResp_t.loCtrlAddress = ProtoField.uint32('LoCnfg_AddressDistributionResp_t.loCtrlAddress', 'loCtrlAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOCNFG_ADDRESSDISTRIBUTIONRESP_T, buffer())
  subtree:set_text('LoCnfg_AddressDistributionResp_t')
  local LoCnfg_AddressDistributionResp_t_messageResultTree = subtree:add (LOCNFG_ADDRESSDISTRIBUTIONRESP_T_MESSAGERESULT, buffer(offset))
  LoCnfg_AddressDistributionResp_t_messageResultTree:set_text('LoCnfg_AddressDistributionResp_t_messageResult')
  LoCnfg_AddressDistributionResp_t_messageResultTree:add_le (LoCnfg_AddressDistributionResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  LoCnfg_AddressDistributionResp_t_messageResultTree:add_le (LoCnfg_AddressDistributionResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  LoCnfg_AddressDistributionResp_t_messageResultTree:add_le (LoCnfg_AddressDistributionResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoCnfg_AddressDistributionResp_t.l2RtPoolId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoCnfg_AddressDistributionResp_t.loUserAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoCnfg_AddressDistributionResp_t.loCtrlAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
