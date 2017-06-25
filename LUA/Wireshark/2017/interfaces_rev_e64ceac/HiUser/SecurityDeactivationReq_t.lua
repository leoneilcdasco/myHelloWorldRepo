local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_SecurityDeactivationReq'
end
function module:messageId()
  return 0x070F
end
----------------------------------------------------------------
local HIUSER_SECURITYDEACTIVATIONREQ_T = Proto('HiUser_SecurityDeactivationReq_t', 'HIUSER_SECURITYDEACTIVATIONREQ_T')
local HiUser_SecurityDeactivationReq_t = HIUSER_SECURITYDEACTIVATIONREQ_T.fields
HiUser_SecurityDeactivationReq_t.ueFsID = ProtoField.uint16('HiUser_SecurityDeactivationReq_t.ueFsID', 'ueFsID', base.HEX)
HiUser_SecurityDeactivationReq_t.logicalChannelId = ProtoField.uint8('HiUser_SecurityDeactivationReq_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiUser_SecurityDeactivationReq_t.logicalChannelId_padding = ProtoField.int8('HiUser_SecurityDeactivationReq_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
HiUser_SecurityDeactivationReq_t.bearerIndex = ProtoField.uint16('HiUser_SecurityDeactivationReq_t.bearerIndex', 'bearerIndex', base.HEX)
HiUser_SecurityDeactivationReq_t.bearerGroup = ProtoField.uint16('HiUser_SecurityDeactivationReq_t.bearerGroup', 'bearerGroup', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_SECURITYDEACTIVATIONREQ_T, buffer())
  subtree:set_text('HiUser_SecurityDeactivationReq_t')
  subtree:add_le (HiUser_SecurityDeactivationReq_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_SecurityDeactivationReq_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_SecurityDeactivationReq_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_SecurityDeactivationReq_t.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_SecurityDeactivationReq_t.bearerGroup, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
