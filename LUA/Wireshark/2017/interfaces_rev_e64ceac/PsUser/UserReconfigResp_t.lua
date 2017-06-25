local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_UserReconfigResp'
end
function module:messageId()
  return 0x0957
end
----------------------------------------------------------------
local PSUSER_USERRECONFIGRESP_T = Proto('PsUser_UserReconfigResp_t', 'PSUSER_USERRECONFIGRESP_T')
local PsUser_UserReconfigResp_t = PSUSER_USERRECONFIGRESP_T.fields
local PSUSER_USERRECONFIGRESP_T_MESSAGERESULT = Proto('PsUser_UserReconfigResp_t_messageResult', 'PSUSER_USERRECONFIGRESP_T_MESSAGERESULT')
local PsUser_UserReconfigResp_t_messageResult = PSUSER_USERRECONFIGRESP_T_MESSAGERESULT.fields
PsUser_UserReconfigResp_t_messageResult.status = ProtoField.bytes('PsUser_UserReconfigResp_t_messageResult.status', 'status', base.HEX)
PsUser_UserReconfigResp_t_messageResult.status_padding = ProtoField.bytes('PsUser_UserReconfigResp_t_messageResult.status_padding', 'status_padding', base.HEX)
PsUser_UserReconfigResp_t_messageResult.cause = ProtoField.uint32('PsUser_UserReconfigResp_t_messageResult.cause', 'cause', base.HEX)
PsUser_UserReconfigResp_t.ueFsId = ProtoField.uint16('PsUser_UserReconfigResp_t.ueFsId', 'ueFsId', base.HEX)
PsUser_UserReconfigResp_t.ueFsId_padding = ProtoField.bytes('PsUser_UserReconfigResp_t.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_USERRECONFIGRESP_T, buffer())
  subtree:set_text('PsUser_UserReconfigResp_t')
  local PsUser_UserReconfigResp_t_messageResultTree = subtree:add (PSUSER_USERRECONFIGRESP_T_MESSAGERESULT, buffer(offset))
  PsUser_UserReconfigResp_t_messageResultTree:set_text('PsUser_UserReconfigResp_t_messageResult')
  PsUser_UserReconfigResp_t_messageResultTree:add_le (PsUser_UserReconfigResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserReconfigResp_t_messageResultTree:add_le (PsUser_UserReconfigResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsUser_UserReconfigResp_t_messageResultTree:add_le (PsUser_UserReconfigResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsUser_UserReconfigResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserReconfigResp_t.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
