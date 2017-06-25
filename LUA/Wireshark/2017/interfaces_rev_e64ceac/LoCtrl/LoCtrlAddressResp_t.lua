local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoCtrl_LoCtrlAddressResp'
end
function module:messageId()
  return 0x0504
end
----------------------------------------------------------------
local LOCTRL_LOCTRLADDRESSRESP_T = Proto('LoCtrl_LoCtrlAddressResp_t', 'LOCTRL_LOCTRLADDRESSRESP_T')
local LoCtrl_LoCtrlAddressResp_t = LOCTRL_LOCTRLADDRESSRESP_T.fields
local LOCTRL_LOCTRLADDRESSRESP_T_MESSAGERESULT = Proto('LoCtrl_LoCtrlAddressResp_t_messageResult', 'LOCTRL_LOCTRLADDRESSRESP_T_MESSAGERESULT')
local LoCtrl_LoCtrlAddressResp_t_messageResult = LOCTRL_LOCTRLADDRESSRESP_T_MESSAGERESULT.fields
LoCtrl_LoCtrlAddressResp_t_messageResult.status = ProtoField.bytes('LoCtrl_LoCtrlAddressResp_t_messageResult.status', 'status', base.HEX)
LoCtrl_LoCtrlAddressResp_t_messageResult.status_padding = ProtoField.bytes('LoCtrl_LoCtrlAddressResp_t_messageResult.status_padding', 'status_padding', base.HEX)
LoCtrl_LoCtrlAddressResp_t_messageResult.cause = ProtoField.uint32('LoCtrl_LoCtrlAddressResp_t_messageResult.cause', 'cause', base.HEX)
LoCtrl_LoCtrlAddressResp_t.LoCtrlDlDataAddress = ProtoField.uint32('LoCtrl_LoCtrlAddressResp_t.LoCtrlDlDataAddress', 'LoCtrlDlDataAddress', base.HEX)
LoCtrl_LoCtrlAddressResp_t.ulDataPuschReceiveRespLoClientAddress = ProtoField.uint32('LoCtrl_LoCtrlAddressResp_t.ulDataPuschReceiveRespLoClientAddress', 'ulDataPuschReceiveRespLoClientAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOCTRL_LOCTRLADDRESSRESP_T, buffer())
  subtree:set_text('LoCtrl_LoCtrlAddressResp_t')
  local LoCtrl_LoCtrlAddressResp_t_messageResultTree = subtree:add (LOCTRL_LOCTRLADDRESSRESP_T_MESSAGERESULT, buffer(offset))
  LoCtrl_LoCtrlAddressResp_t_messageResultTree:set_text('LoCtrl_LoCtrlAddressResp_t_messageResult')
  LoCtrl_LoCtrlAddressResp_t_messageResultTree:add_le (LoCtrl_LoCtrlAddressResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_LoCtrlAddressResp_t_messageResultTree:add_le (LoCtrl_LoCtrlAddressResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  LoCtrl_LoCtrlAddressResp_t_messageResultTree:add_le (LoCtrl_LoCtrlAddressResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoCtrl_LoCtrlAddressResp_t.LoCtrlDlDataAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoCtrl_LoCtrlAddressResp_t.ulDataPuschReceiveRespLoClientAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
