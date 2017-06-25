local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoUser_UserSetupResp'
end
function module:messageId()
  return 0x0601
end
----------------------------------------------------------------
local LOUSER_USERSETUPRESP_T = Proto('LoUser_UserSetupResp_t', 'LOUSER_USERSETUPRESP_T')
local LoUser_UserSetupResp_t = LOUSER_USERSETUPRESP_T.fields
local LOUSER_USERSETUPRESP_T_MESSAGERESULT = Proto('LoUser_UserSetupResp_t_messageResult', 'LOUSER_USERSETUPRESP_T_MESSAGERESULT')
local LoUser_UserSetupResp_t_messageResult = LOUSER_USERSETUPRESP_T_MESSAGERESULT.fields
LoUser_UserSetupResp_t_messageResult.status = ProtoField.bytes('LoUser_UserSetupResp_t_messageResult.status', 'status', base.HEX)
LoUser_UserSetupResp_t_messageResult.status_padding = ProtoField.bytes('LoUser_UserSetupResp_t_messageResult.status_padding', 'status_padding', base.HEX)
LoUser_UserSetupResp_t_messageResult.cause = ProtoField.uint32('LoUser_UserSetupResp_t_messageResult.cause', 'cause', base.HEX)
LoUser_UserSetupResp_t.ueFsId = ProtoField.uint16('LoUser_UserSetupResp_t.ueFsId', 'ueFsId', base.HEX)
LoUser_UserSetupResp_t.loDataUeId = ProtoField.uint16('LoUser_UserSetupResp_t.loDataUeId', 'loDataUeId', base.HEX)
LoUser_UserSetupResp_t.loDataDlRlcPduReceiverAddress = ProtoField.uint32('LoUser_UserSetupResp_t.loDataDlRlcPduReceiverAddress', 'loDataDlRlcPduReceiverAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOUSER_USERSETUPRESP_T, buffer())
  subtree:set_text('LoUser_UserSetupResp_t')
  local LoUser_UserSetupResp_t_messageResultTree = subtree:add (LOUSER_USERSETUPRESP_T_MESSAGERESULT, buffer(offset))
  LoUser_UserSetupResp_t_messageResultTree:set_text('LoUser_UserSetupResp_t_messageResult')
  LoUser_UserSetupResp_t_messageResultTree:add_le (LoUser_UserSetupResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  LoUser_UserSetupResp_t_messageResultTree:add_le (LoUser_UserSetupResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  LoUser_UserSetupResp_t_messageResultTree:add_le (LoUser_UserSetupResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoUser_UserSetupResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoUser_UserSetupResp_t.loDataUeId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoUser_UserSetupResp_t.loDataDlRlcPduReceiverAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
