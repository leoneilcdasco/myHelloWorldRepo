local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoCtrl_LoCtrlAddressReq'
end
function module:messageId()
  return 0x0503
end
----------------------------------------------------------------
local LOCTRL_LOCTRLADDRESSREQ_T = Proto('LoCtrl_LoCtrlAddressReq_t', 'LOCTRL_LOCTRLADDRESSREQ_T')
local LoCtrl_LoCtrlAddressReq_t = LOCTRL_LOCTRLADDRESSREQ_T.fields
LoCtrl_LoCtrlAddressReq_t.LoCtrlDlClientAddress = ProtoField.uint32('LoCtrl_LoCtrlAddressReq_t.LoCtrlDlClientAddress', 'LoCtrlDlClientAddress', base.HEX)
LoCtrl_LoCtrlAddressReq_t.LoCtrlUlClientAddress = ProtoField.uint32('LoCtrl_LoCtrlAddressReq_t.LoCtrlUlClientAddress', 'LoCtrlUlClientAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOCTRL_LOCTRLADDRESSREQ_T, buffer())
  subtree:set_text('LoCtrl_LoCtrlAddressReq_t')
  subtree:add_le (LoCtrl_LoCtrlAddressReq_t.LoCtrlDlClientAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoCtrl_LoCtrlAddressReq_t.LoCtrlUlClientAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
