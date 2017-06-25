local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_SecurityActivationResp'
end
function module:messageId()
  return 0x070E
end
----------------------------------------------------------------
local HIUSER_SECURITYACTIVATIONRESP_T = Proto('HiUser_SecurityActivationResp_t', 'HIUSER_SECURITYACTIVATIONRESP_T')
local HiUser_SecurityActivationResp_t = HIUSER_SECURITYACTIVATIONRESP_T.fields
local HIUSER_SECURITYACTIVATIONRESP_T_MESSAGERESULT = Proto('HiUser_SecurityActivationResp_t_messageResult', 'HIUSER_SECURITYACTIVATIONRESP_T_MESSAGERESULT')
local HiUser_SecurityActivationResp_t_messageResult = HIUSER_SECURITYACTIVATIONRESP_T_MESSAGERESULT.fields
HiUser_SecurityActivationResp_t_messageResult.status = ProtoField.bytes('HiUser_SecurityActivationResp_t_messageResult.status', 'status', base.HEX)
HiUser_SecurityActivationResp_t_messageResult.status_padding = ProtoField.bytes('HiUser_SecurityActivationResp_t_messageResult.status_padding', 'status_padding', base.HEX)
HiUser_SecurityActivationResp_t_messageResult.cause = ProtoField.uint32('HiUser_SecurityActivationResp_t_messageResult.cause', 'cause', base.HEX)
HiUser_SecurityActivationResp_t.ueFsID = ProtoField.uint16('HiUser_SecurityActivationResp_t.ueFsID', 'ueFsID', base.HEX)
HiUser_SecurityActivationResp_t.logicalChannelId = ProtoField.uint8('HiUser_SecurityActivationResp_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiUser_SecurityActivationResp_t.logicalChannelId_padding = ProtoField.int8('HiUser_SecurityActivationResp_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_SECURITYACTIVATIONRESP_T, buffer())
  subtree:set_text('HiUser_SecurityActivationResp_t')
  local HiUser_SecurityActivationResp_t_messageResultTree = subtree:add (HIUSER_SECURITYACTIVATIONRESP_T_MESSAGERESULT, buffer(offset))
  HiUser_SecurityActivationResp_t_messageResultTree:set_text('HiUser_SecurityActivationResp_t_messageResult')
  HiUser_SecurityActivationResp_t_messageResultTree:add_le (HiUser_SecurityActivationResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  HiUser_SecurityActivationResp_t_messageResultTree:add_le (HiUser_SecurityActivationResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  HiUser_SecurityActivationResp_t_messageResultTree:add_le (HiUser_SecurityActivationResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (HiUser_SecurityActivationResp_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_SecurityActivationResp_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_SecurityActivationResp_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
