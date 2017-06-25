local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_UserInactivityDetectionResp'
end
function module:messageId()
  return 0x0961
end
----------------------------------------------------------------
local PSUSER_USERINACTIVITYDETECTIONRESP_T = Proto('PsUser_UserInactivityDetectionResp_t', 'PSUSER_USERINACTIVITYDETECTIONRESP_T')
local PsUser_UserInactivityDetectionResp_t = PSUSER_USERINACTIVITYDETECTIONRESP_T.fields
local PSUSER_USERINACTIVITYDETECTIONRESP_T_MESSAGERESULT = Proto('PsUser_UserInactivityDetectionResp_t_messageResult', 'PSUSER_USERINACTIVITYDETECTIONRESP_T_MESSAGERESULT')
local PsUser_UserInactivityDetectionResp_t_messageResult = PSUSER_USERINACTIVITYDETECTIONRESP_T_MESSAGERESULT.fields
PsUser_UserInactivityDetectionResp_t_messageResult.status = ProtoField.bytes('PsUser_UserInactivityDetectionResp_t_messageResult.status', 'status', base.HEX)
PsUser_UserInactivityDetectionResp_t_messageResult.status_padding = ProtoField.bytes('PsUser_UserInactivityDetectionResp_t_messageResult.status_padding', 'status_padding', base.HEX)
PsUser_UserInactivityDetectionResp_t_messageResult.cause = ProtoField.uint32('PsUser_UserInactivityDetectionResp_t_messageResult.cause', 'cause', base.HEX)
PsUser_UserInactivityDetectionResp_t.ueFsId = ProtoField.uint16('PsUser_UserInactivityDetectionResp_t.ueFsId', 'ueFsId', base.HEX)
PsUser_UserInactivityDetectionResp_t.ueFsId_padding = ProtoField.bytes('PsUser_UserInactivityDetectionResp_t.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_USERINACTIVITYDETECTIONRESP_T, buffer())
  subtree:set_text('PsUser_UserInactivityDetectionResp_t')
  local PsUser_UserInactivityDetectionResp_t_messageResultTree = subtree:add (PSUSER_USERINACTIVITYDETECTIONRESP_T_MESSAGERESULT, buffer(offset))
  PsUser_UserInactivityDetectionResp_t_messageResultTree:set_text('PsUser_UserInactivityDetectionResp_t_messageResult')
  PsUser_UserInactivityDetectionResp_t_messageResultTree:add_le (PsUser_UserInactivityDetectionResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserInactivityDetectionResp_t_messageResultTree:add_le (PsUser_UserInactivityDetectionResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsUser_UserInactivityDetectionResp_t_messageResultTree:add_le (PsUser_UserInactivityDetectionResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsUser_UserInactivityDetectionResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserInactivityDetectionResp_t.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
