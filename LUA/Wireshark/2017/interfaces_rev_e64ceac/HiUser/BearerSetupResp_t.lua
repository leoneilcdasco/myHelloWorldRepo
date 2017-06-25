local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_BearerSetupResp'
end
function module:messageId()
  return 0x0701
end
----------------------------------------------------------------
local HIUSER_BEARERSETUPRESP_T = Proto('HiUser_BearerSetupResp_t', 'HIUSER_BEARERSETUPRESP_T')
local HiUser_BearerSetupResp_t = HIUSER_BEARERSETUPRESP_T.fields
local HIUSER_BEARERSETUPRESP_T_MESSAGERESULT = Proto('HiUser_BearerSetupResp_t_messageResult', 'HIUSER_BEARERSETUPRESP_T_MESSAGERESULT')
local HiUser_BearerSetupResp_t_messageResult = HIUSER_BEARERSETUPRESP_T_MESSAGERESULT.fields
HiUser_BearerSetupResp_t_messageResult.status = ProtoField.bytes('HiUser_BearerSetupResp_t_messageResult.status', 'status', base.HEX)
HiUser_BearerSetupResp_t_messageResult.status_padding = ProtoField.bytes('HiUser_BearerSetupResp_t_messageResult.status_padding', 'status_padding', base.HEX)
HiUser_BearerSetupResp_t_messageResult.cause = ProtoField.uint32('HiUser_BearerSetupResp_t_messageResult.cause', 'cause', base.HEX)
HiUser_BearerSetupResp_t.ueFsId = ProtoField.uint16('HiUser_BearerSetupResp_t.ueFsId', 'ueFsId', base.HEX)
HiUser_BearerSetupResp_t.logicalChannelId = ProtoField.uint8('HiUser_BearerSetupResp_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiUser_BearerSetupResp_t.logicalChannelId_padding = ProtoField.int8('HiUser_BearerSetupResp_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_BEARERSETUPRESP_T, buffer())
  subtree:set_text('HiUser_BearerSetupResp_t')
  local HiUser_BearerSetupResp_t_messageResultTree = subtree:add (HIUSER_BEARERSETUPRESP_T_MESSAGERESULT, buffer(offset))
  HiUser_BearerSetupResp_t_messageResultTree:set_text('HiUser_BearerSetupResp_t_messageResult')
  HiUser_BearerSetupResp_t_messageResultTree:add_le (HiUser_BearerSetupResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerSetupResp_t_messageResultTree:add_le (HiUser_BearerSetupResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  HiUser_BearerSetupResp_t_messageResultTree:add_le (HiUser_BearerSetupResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (HiUser_BearerSetupResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerSetupResp_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerSetupResp_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
