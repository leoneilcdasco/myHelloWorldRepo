local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_BearerSuspendReq'
end
function module:messageId()
  return 0x0704
end
----------------------------------------------------------------
local HIUSER_BEARERSUSPENDREQ_T = Proto('HiUser_BearerSuspendReq_t', 'HIUSER_BEARERSUSPENDREQ_T')
local HiUser_BearerSuspendReq_t = HIUSER_BEARERSUSPENDREQ_T.fields
HiUser_BearerSuspendReq_t.ueFsId = ProtoField.uint16('HiUser_BearerSuspendReq_t.ueFsId', 'ueFsId', base.HEX)
HiUser_BearerSuspendReq_t.logicalChannelIdentity = ProtoField.uint8('HiUser_BearerSuspendReq_t.logicalChannelIdentity', 'logicalChannelIdentity', base.HEX)
HiUser_BearerSuspendReq_t.logicalChannelIdentity_padding = ProtoField.int8('HiUser_BearerSuspendReq_t.logicalChannelIdentity_padding', 'logicalChannelIdentity_padding', base.DEC)
HiUser_BearerSuspendReq_t.bearerIndex = ProtoField.uint16('HiUser_BearerSuspendReq_t.bearerIndex', 'bearerIndex', base.HEX)
HiUser_BearerSuspendReq_t.bearerGroup = ProtoField.uint16('HiUser_BearerSuspendReq_t.bearerGroup', 'bearerGroup', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_BEARERSUSPENDREQ_T, buffer())
  subtree:set_text('HiUser_BearerSuspendReq_t')
  subtree:add_le (HiUser_BearerSuspendReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerSuspendReq_t.logicalChannelIdentity, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerSuspendReq_t.logicalChannelIdentity_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerSuspendReq_t.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerSuspendReq_t.bearerGroup, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
