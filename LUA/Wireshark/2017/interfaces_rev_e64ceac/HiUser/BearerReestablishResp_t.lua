local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_BearerReestablishResp'
end
function module:messageId()
  return 0x0712
end
----------------------------------------------------------------
local HIUSER_BEARERREESTABLISHRESP_T = Proto('HiUser_BearerReestablishResp_t', 'HIUSER_BEARERREESTABLISHRESP_T')
local HiUser_BearerReestablishResp_t = HIUSER_BEARERREESTABLISHRESP_T.fields
local HIUSER_BEARERREESTABLISHRESP_T_MESSAGERESULT = Proto('HiUser_BearerReestablishResp_t_messageResult', 'HIUSER_BEARERREESTABLISHRESP_T_MESSAGERESULT')
local HiUser_BearerReestablishResp_t_messageResult = HIUSER_BEARERREESTABLISHRESP_T_MESSAGERESULT.fields
HiUser_BearerReestablishResp_t_messageResult.status = ProtoField.bytes('HiUser_BearerReestablishResp_t_messageResult.status', 'status', base.HEX)
HiUser_BearerReestablishResp_t_messageResult.status_padding = ProtoField.bytes('HiUser_BearerReestablishResp_t_messageResult.status_padding', 'status_padding', base.HEX)
HiUser_BearerReestablishResp_t_messageResult.cause = ProtoField.uint32('HiUser_BearerReestablishResp_t_messageResult.cause', 'cause', base.HEX)
HiUser_BearerReestablishResp_t.ueFsId = ProtoField.uint16('HiUser_BearerReestablishResp_t.ueFsId', 'ueFsId', base.HEX)
HiUser_BearerReestablishResp_t.logicalChannelIdentity = ProtoField.uint8('HiUser_BearerReestablishResp_t.logicalChannelIdentity', 'logicalChannelIdentity', base.HEX)
HiUser_BearerReestablishResp_t.logicalChannelIdentity_padding = ProtoField.int8('HiUser_BearerReestablishResp_t.logicalChannelIdentity_padding', 'logicalChannelIdentity_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_BEARERREESTABLISHRESP_T, buffer())
  subtree:set_text('HiUser_BearerReestablishResp_t')
  local HiUser_BearerReestablishResp_t_messageResultTree = subtree:add (HIUSER_BEARERREESTABLISHRESP_T_MESSAGERESULT, buffer(offset))
  HiUser_BearerReestablishResp_t_messageResultTree:set_text('HiUser_BearerReestablishResp_t_messageResult')
  HiUser_BearerReestablishResp_t_messageResultTree:add_le (HiUser_BearerReestablishResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  HiUser_BearerReestablishResp_t_messageResultTree:add_le (HiUser_BearerReestablishResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  HiUser_BearerReestablishResp_t_messageResultTree:add_le (HiUser_BearerReestablishResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (HiUser_BearerReestablishResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerReestablishResp_t.logicalChannelIdentity, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerReestablishResp_t.logicalChannelIdentity_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
