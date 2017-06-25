local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_BearerSetupResp'
end
function module:messageId()
  return 0x0968
end
----------------------------------------------------------------
local PSUSER_BEARERSETUPRESP_T = Proto('PsUser_BearerSetupResp_t', 'PSUSER_BEARERSETUPRESP_T')
local PsUser_BearerSetupResp_t = PSUSER_BEARERSETUPRESP_T.fields
local PSUSER_BEARERSETUPRESP_T_MESSAGERESULT = Proto('PsUser_BearerSetupResp_t_messageResult', 'PSUSER_BEARERSETUPRESP_T_MESSAGERESULT')
local PsUser_BearerSetupResp_t_messageResult = PSUSER_BEARERSETUPRESP_T_MESSAGERESULT.fields
PsUser_BearerSetupResp_t_messageResult.status = ProtoField.bytes('PsUser_BearerSetupResp_t_messageResult.status', 'status', base.HEX)
PsUser_BearerSetupResp_t_messageResult.status_padding = ProtoField.bytes('PsUser_BearerSetupResp_t_messageResult.status_padding', 'status_padding', base.HEX)
PsUser_BearerSetupResp_t_messageResult.cause = ProtoField.uint32('PsUser_BearerSetupResp_t_messageResult.cause', 'cause', base.HEX)
PsUser_BearerSetupResp_t.ueFsId = ProtoField.uint16('PsUser_BearerSetupResp_t.ueFsId', 'ueFsId', base.HEX)
PsUser_BearerSetupResp_t.logicalChannelId = ProtoField.uint8('PsUser_BearerSetupResp_t.logicalChannelId', 'logicalChannelId', base.HEX)
PsUser_BearerSetupResp_t.logicalChannelId_padding = ProtoField.int8('PsUser_BearerSetupResp_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_BEARERSETUPRESP_T, buffer())
  subtree:set_text('PsUser_BearerSetupResp_t')
  local PsUser_BearerSetupResp_t_messageResultTree = subtree:add (PSUSER_BEARERSETUPRESP_T_MESSAGERESULT, buffer(offset))
  PsUser_BearerSetupResp_t_messageResultTree:set_text('PsUser_BearerSetupResp_t_messageResult')
  PsUser_BearerSetupResp_t_messageResultTree:add_le (PsUser_BearerSetupResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsUser_BearerSetupResp_t_messageResultTree:add_le (PsUser_BearerSetupResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsUser_BearerSetupResp_t_messageResultTree:add_le (PsUser_BearerSetupResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsUser_BearerSetupResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_BearerSetupResp_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_BearerSetupResp_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
