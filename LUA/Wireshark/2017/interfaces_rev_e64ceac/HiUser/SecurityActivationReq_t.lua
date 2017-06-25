local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_SecurityActivationReq'
end
function module:messageId()
  return 0x070D
end
----------------------------------------------------------------
local HIUSER_SECURITYACTIVATIONREQ_T = Proto('HiUser_SecurityActivationReq_t', 'HIUSER_SECURITYACTIVATIONREQ_T')
local HiUser_SecurityActivationReq_t = HIUSER_SECURITYACTIVATIONREQ_T.fields
HiUser_SecurityActivationReq_t.ueFsID = ProtoField.uint16('HiUser_SecurityActivationReq_t.ueFsID', 'ueFsID', base.HEX)
HiUser_SecurityActivationReq_t.logicalChannelId = ProtoField.uint8('HiUser_SecurityActivationReq_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiUser_SecurityActivationReq_t.logicalChannelId_padding = ProtoField.int8('HiUser_SecurityActivationReq_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
HiUser_SecurityActivationReq_t.bearerIndex = ProtoField.uint16('HiUser_SecurityActivationReq_t.bearerIndex', 'bearerIndex', base.HEX)
HiUser_SecurityActivationReq_t.bearerGroup = ProtoField.uint16('HiUser_SecurityActivationReq_t.bearerGroup', 'bearerGroup', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_SECURITYACTIVATIONREQ_T, buffer())
  subtree:set_text('HiUser_SecurityActivationReq_t')
  subtree:add_le (HiUser_SecurityActivationReq_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_SecurityActivationReq_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_SecurityActivationReq_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_SecurityActivationReq_t.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_SecurityActivationReq_t.bearerGroup, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
