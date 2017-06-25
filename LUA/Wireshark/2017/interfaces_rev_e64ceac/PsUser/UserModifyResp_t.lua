local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_UserModifyResp'
end
function module:messageId()
  return 0x0955
end
----------------------------------------------------------------
local PSUSER_USERMODIFYRESP_T = Proto('PsUser_UserModifyResp_t', 'PSUSER_USERMODIFYRESP_T')
local PsUser_UserModifyResp_t = PSUSER_USERMODIFYRESP_T.fields
local PSUSER_USERMODIFYRESP_T_MESSAGERESULT = Proto('PsUser_UserModifyResp_t_messageResult', 'PSUSER_USERMODIFYRESP_T_MESSAGERESULT')
local PsUser_UserModifyResp_t_messageResult = PSUSER_USERMODIFYRESP_T_MESSAGERESULT.fields
PsUser_UserModifyResp_t_messageResult.status = ProtoField.bytes('PsUser_UserModifyResp_t_messageResult.status', 'status', base.HEX)
PsUser_UserModifyResp_t_messageResult.status_padding = ProtoField.bytes('PsUser_UserModifyResp_t_messageResult.status_padding', 'status_padding', base.HEX)
PsUser_UserModifyResp_t_messageResult.cause = ProtoField.uint32('PsUser_UserModifyResp_t_messageResult.cause', 'cause', base.HEX)
PsUser_UserModifyResp_t.ueFsId = ProtoField.uint16('PsUser_UserModifyResp_t.ueFsId', 'ueFsId', base.HEX)
PsUser_UserModifyResp_t.ueFsId_padding = ProtoField.bytes('PsUser_UserModifyResp_t.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_USERMODIFYRESP_T, buffer())
  subtree:set_text('PsUser_UserModifyResp_t')
  local PsUser_UserModifyResp_t_messageResultTree = subtree:add (PSUSER_USERMODIFYRESP_T_MESSAGERESULT, buffer(offset))
  PsUser_UserModifyResp_t_messageResultTree:set_text('PsUser_UserModifyResp_t_messageResult')
  PsUser_UserModifyResp_t_messageResultTree:add_le (PsUser_UserModifyResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserModifyResp_t_messageResultTree:add_le (PsUser_UserModifyResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsUser_UserModifyResp_t_messageResultTree:add_le (PsUser_UserModifyResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsUser_UserModifyResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserModifyResp_t.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
