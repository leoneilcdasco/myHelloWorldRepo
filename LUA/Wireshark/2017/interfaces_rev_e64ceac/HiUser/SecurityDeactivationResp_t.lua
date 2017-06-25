local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_SecurityDeactivationResp'
end
function module:messageId()
  return 0x0710
end
----------------------------------------------------------------
local HIUSER_SECURITYDEACTIVATIONRESP_T = Proto('HiUser_SecurityDeactivationResp_t', 'HIUSER_SECURITYDEACTIVATIONRESP_T')
local HiUser_SecurityDeactivationResp_t = HIUSER_SECURITYDEACTIVATIONRESP_T.fields
local HIUSER_SECURITYDEACTIVATIONRESP_T_MESSAGERESULT = Proto('HiUser_SecurityDeactivationResp_t_messageResult', 'HIUSER_SECURITYDEACTIVATIONRESP_T_MESSAGERESULT')
local HiUser_SecurityDeactivationResp_t_messageResult = HIUSER_SECURITYDEACTIVATIONRESP_T_MESSAGERESULT.fields
HiUser_SecurityDeactivationResp_t_messageResult.status = ProtoField.bytes('HiUser_SecurityDeactivationResp_t_messageResult.status', 'status', base.HEX)
HiUser_SecurityDeactivationResp_t_messageResult.status_padding = ProtoField.bytes('HiUser_SecurityDeactivationResp_t_messageResult.status_padding', 'status_padding', base.HEX)
HiUser_SecurityDeactivationResp_t_messageResult.cause = ProtoField.uint32('HiUser_SecurityDeactivationResp_t_messageResult.cause', 'cause', base.HEX)
HiUser_SecurityDeactivationResp_t.ueFsID = ProtoField.uint16('HiUser_SecurityDeactivationResp_t.ueFsID', 'ueFsID', base.HEX)
HiUser_SecurityDeactivationResp_t.logicalChannelId = ProtoField.uint8('HiUser_SecurityDeactivationResp_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiUser_SecurityDeactivationResp_t.logicalChannelId_padding = ProtoField.int8('HiUser_SecurityDeactivationResp_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_SECURITYDEACTIVATIONRESP_T, buffer())
  subtree:set_text('HiUser_SecurityDeactivationResp_t')
  local HiUser_SecurityDeactivationResp_t_messageResultTree = subtree:add (HIUSER_SECURITYDEACTIVATIONRESP_T_MESSAGERESULT, buffer(offset))
  HiUser_SecurityDeactivationResp_t_messageResultTree:set_text('HiUser_SecurityDeactivationResp_t_messageResult')
  HiUser_SecurityDeactivationResp_t_messageResultTree:add_le (HiUser_SecurityDeactivationResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  HiUser_SecurityDeactivationResp_t_messageResultTree:add_le (HiUser_SecurityDeactivationResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  HiUser_SecurityDeactivationResp_t_messageResultTree:add_le (HiUser_SecurityDeactivationResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (HiUser_SecurityDeactivationResp_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_SecurityDeactivationResp_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_SecurityDeactivationResp_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
