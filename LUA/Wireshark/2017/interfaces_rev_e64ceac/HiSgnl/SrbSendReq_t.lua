local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiSgnl_SrbSendReq'
end
function module:messageId()
  return 0x0791
end
----------------------------------------------------------------
local HISGNL_SRBSENDREQ_T = Proto('HiSgnl_SrbSendReq_t', 'HISGNL_SRBSENDREQ_T')
local HiSgnl_SrbSendReq_t = HISGNL_SRBSENDREQ_T.fields
HiSgnl_SrbSendReq_t.ueFsID = ProtoField.uint16('HiSgnl_SrbSendReq_t.ueFsID', 'ueFsID', base.HEX)
HiSgnl_SrbSendReq_t.logicalChannelId = ProtoField.uint8('HiSgnl_SrbSendReq_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiSgnl_SrbSendReq_t.logicalChannelId_padding = ProtoField.int8('HiSgnl_SrbSendReq_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
HiSgnl_SrbSendReq_t.bearerIndex = ProtoField.uint16('HiSgnl_SrbSendReq_t.bearerIndex', 'bearerIndex', base.HEX)
HiSgnl_SrbSendReq_t.bearerGroup = ProtoField.uint16('HiSgnl_SrbSendReq_t.bearerGroup', 'bearerGroup', base.HEX)
HiSgnl_SrbSendReq_t.srbId = ProtoField.uint8('HiSgnl_SrbSendReq_t.srbId', 'srbId', base.HEX)
HiSgnl_SrbSendReq_t.isLockStepAct = ProtoField.int8('HiSgnl_SrbSendReq_t.isLockStepAct', 'isLockStepAct', base.DEC)
HiSgnl_SrbSendReq_t.respFlag = ProtoField.int8('HiSgnl_SrbSendReq_t.respFlag', 'respFlag', base.DEC)
HiSgnl_SrbSendReq_t.respFlag_padding = ProtoField.int8('HiSgnl_SrbSendReq_t.respFlag_padding', 'respFlag_padding', base.DEC)
HiSgnl_SrbSendReq_t.sizeOfRrcMsg = ProtoField.uint32('HiSgnl_SrbSendReq_t.sizeOfRrcMsg', 'sizeOfRrcMsg', base.HEX)
local HISGNL_SRBSENDREQ_T_RRCMSGPAYLOAD = Proto('HiSgnl_SrbSendReq_t_rrcMsgPayload', 'HISGNL_SRBSENDREQ_T_RRCMSGPAYLOAD')
local HiSgnl_SrbSendReq_t_rrcMsgPayload = HISGNL_SRBSENDREQ_T_RRCMSGPAYLOAD.fields
HiSgnl_SrbSendReq_t_rrcMsgPayload.rrcMsgPayload_offset = ProtoField.uint32('HiSgnl_SrbSendReq_t_rrcMsgPayload.rrcMsgPayload_offset', 'rrcMsgPayload_offset', base.HEX)
HiSgnl_SrbSendReq_t_rrcMsgPayload.rrcMsgPayload_length = ProtoField.uint32('HiSgnl_SrbSendReq_t_rrcMsgPayload.rrcMsgPayload_length', 'rrcMsgPayload_length', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HISGNL_SRBSENDREQ_T, buffer())
  subtree:set_text('HiSgnl_SrbSendReq_t')
  subtree:add_le (HiSgnl_SrbSendReq_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiSgnl_SrbSendReq_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiSgnl_SrbSendReq_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiSgnl_SrbSendReq_t.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiSgnl_SrbSendReq_t.bearerGroup, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiSgnl_SrbSendReq_t.srbId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiSgnl_SrbSendReq_t.isLockStepAct, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiSgnl_SrbSendReq_t.respFlag, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiSgnl_SrbSendReq_t.respFlag_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiSgnl_SrbSendReq_t.sizeOfRrcMsg, buffer(offset, 4))
  offset = offset + 4
  local HiSgnl_SrbSendReq_t_rrcMsgPayloadTree = subtree:add (HISGNL_SRBSENDREQ_T_RRCMSGPAYLOAD, buffer(offset))
  HiSgnl_SrbSendReq_t_rrcMsgPayloadTree:set_text('HiSgnl_SrbSendReq_t_rrcMsgPayload')
  HiSgnl_SrbSendReq_t_rrcMsgPayloadTree:add_le (HiSgnl_SrbSendReq_t_rrcMsgPayload.rrcMsgPayload_offset, buffer(offset, 4))
  offset = offset + 4
  HiSgnl_SrbSendReq_t_rrcMsgPayloadTree:add_le (HiSgnl_SrbSendReq_t_rrcMsgPayload.rrcMsgPayload_length, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
