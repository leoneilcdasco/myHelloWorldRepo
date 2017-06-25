local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoUser_BearerSetupResp'
end
function module:messageId()
  return 0x0605
end
----------------------------------------------------------------
local LOUSER_BEARERSETUPRESP_T = Proto('LoUser_BearerSetupResp_t', 'LOUSER_BEARERSETUPRESP_T')
local LoUser_BearerSetupResp_t = LOUSER_BEARERSETUPRESP_T.fields
local LOUSER_BEARERSETUPRESP_T_MESSAGERESULT = Proto('LoUser_BearerSetupResp_t_messageResult', 'LOUSER_BEARERSETUPRESP_T_MESSAGERESULT')
local LoUser_BearerSetupResp_t_messageResult = LOUSER_BEARERSETUPRESP_T_MESSAGERESULT.fields
LoUser_BearerSetupResp_t_messageResult.status = ProtoField.bytes('LoUser_BearerSetupResp_t_messageResult.status', 'status', base.HEX)
LoUser_BearerSetupResp_t_messageResult.status_padding = ProtoField.bytes('LoUser_BearerSetupResp_t_messageResult.status_padding', 'status_padding', base.HEX)
LoUser_BearerSetupResp_t_messageResult.cause = ProtoField.uint32('LoUser_BearerSetupResp_t_messageResult.cause', 'cause', base.HEX)
LoUser_BearerSetupResp_t.ueFsId = ProtoField.uint16('LoUser_BearerSetupResp_t.ueFsId', 'ueFsId', base.HEX)
LoUser_BearerSetupResp_t.logicalChannelId = ProtoField.uint8('LoUser_BearerSetupResp_t.logicalChannelId', 'logicalChannelId', base.HEX)
LoUser_BearerSetupResp_t.logicalChannelId_padding = ProtoField.int8('LoUser_BearerSetupResp_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOUSER_BEARERSETUPRESP_T, buffer())
  subtree:set_text('LoUser_BearerSetupResp_t')
  local LoUser_BearerSetupResp_t_messageResultTree = subtree:add (LOUSER_BEARERSETUPRESP_T_MESSAGERESULT, buffer(offset))
  LoUser_BearerSetupResp_t_messageResultTree:set_text('LoUser_BearerSetupResp_t_messageResult')
  LoUser_BearerSetupResp_t_messageResultTree:add_le (LoUser_BearerSetupResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  LoUser_BearerSetupResp_t_messageResultTree:add_le (LoUser_BearerSetupResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  LoUser_BearerSetupResp_t_messageResultTree:add_le (LoUser_BearerSetupResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoUser_BearerSetupResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoUser_BearerSetupResp_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoUser_BearerSetupResp_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
