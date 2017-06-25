local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_ProceedLockStepReq'
end
function module:messageId()
  return 0x070B
end
----------------------------------------------------------------
local HIUSER_PROCEEDLOCKSTEPREQ_T = Proto('HiUser_ProceedLockStepReq_t', 'HIUSER_PROCEEDLOCKSTEPREQ_T')
local HiUser_ProceedLockStepReq_t = HIUSER_PROCEEDLOCKSTEPREQ_T.fields
HiUser_ProceedLockStepReq_t.ueFsID = ProtoField.uint16('HiUser_ProceedLockStepReq_t.ueFsID', 'ueFsID', base.HEX)
HiUser_ProceedLockStepReq_t.logicalChannelId = ProtoField.uint8('HiUser_ProceedLockStepReq_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiUser_ProceedLockStepReq_t.logicalChannelId_padding = ProtoField.int8('HiUser_ProceedLockStepReq_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
HiUser_ProceedLockStepReq_t.bearerIndex = ProtoField.uint16('HiUser_ProceedLockStepReq_t.bearerIndex', 'bearerIndex', base.HEX)
HiUser_ProceedLockStepReq_t.bearerGroup = ProtoField.uint16('HiUser_ProceedLockStepReq_t.bearerGroup', 'bearerGroup', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_PROCEEDLOCKSTEPREQ_T, buffer())
  subtree:set_text('HiUser_ProceedLockStepReq_t')
  subtree:add_le (HiUser_ProceedLockStepReq_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_ProceedLockStepReq_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_ProceedLockStepReq_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_ProceedLockStepReq_t.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_ProceedLockStepReq_t.bearerGroup, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
