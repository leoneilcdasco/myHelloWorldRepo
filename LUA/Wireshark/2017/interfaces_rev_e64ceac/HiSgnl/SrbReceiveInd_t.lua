local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiSgnl_SrbReceiveInd'
end
function module:messageId()
  return 0x0790
end
----------------------------------------------------------------
local HISGNL_SRBRECEIVEIND_T = Proto('HiSgnl_SrbReceiveInd_t', 'HISGNL_SRBRECEIVEIND_T')
local HiSgnl_SrbReceiveInd_t = HISGNL_SRBRECEIVEIND_T.fields
HiSgnl_SrbReceiveInd_t.ueFsID = ProtoField.uint16('HiSgnl_SrbReceiveInd_t.ueFsID', 'ueFsID', base.HEX)
HiSgnl_SrbReceiveInd_t.logicalChannelId = ProtoField.uint8('HiSgnl_SrbReceiveInd_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiSgnl_SrbReceiveInd_t.hasRrcIntegrityCheckResult = ProtoField.int8('HiSgnl_SrbReceiveInd_t.hasRrcIntegrityCheckResult', 'hasRrcIntegrityCheckResult', base.DEC)
HiSgnl_SrbReceiveInd_t.rrcIntegrityCheckResult = ProtoField.int8('HiSgnl_SrbReceiveInd_t.rrcIntegrityCheckResult', 'rrcIntegrityCheckResult', base.DEC)
HiSgnl_SrbReceiveInd_t.rrcIntegrityCheckResult_padding = ProtoField.bytes('HiSgnl_SrbReceiveInd_t.rrcIntegrityCheckResult_padding', 'rrcIntegrityCheckResult_padding', base.HEX)
HiSgnl_SrbReceiveInd_t.sizeOfRrcMsg = ProtoField.uint32('HiSgnl_SrbReceiveInd_t.sizeOfRrcMsg', 'sizeOfRrcMsg', base.HEX)
local HISGNL_SRBRECEIVEIND_T_RRCMSGPAYLOAD = Proto('HiSgnl_SrbReceiveInd_t_rrcMsgPayload', 'HISGNL_SRBRECEIVEIND_T_RRCMSGPAYLOAD')
local HiSgnl_SrbReceiveInd_t_rrcMsgPayload = HISGNL_SRBRECEIVEIND_T_RRCMSGPAYLOAD.fields
HiSgnl_SrbReceiveInd_t_rrcMsgPayload.rrcMsgPayload_offset = ProtoField.uint32('HiSgnl_SrbReceiveInd_t_rrcMsgPayload.rrcMsgPayload_offset', 'rrcMsgPayload_offset', base.HEX)
HiSgnl_SrbReceiveInd_t_rrcMsgPayload.rrcMsgPayload_length = ProtoField.uint32('HiSgnl_SrbReceiveInd_t_rrcMsgPayload.rrcMsgPayload_length', 'rrcMsgPayload_length', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HISGNL_SRBRECEIVEIND_T, buffer())
  subtree:set_text('HiSgnl_SrbReceiveInd_t')
  subtree:add_le (HiSgnl_SrbReceiveInd_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiSgnl_SrbReceiveInd_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiSgnl_SrbReceiveInd_t.hasRrcIntegrityCheckResult, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiSgnl_SrbReceiveInd_t.rrcIntegrityCheckResult, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiSgnl_SrbReceiveInd_t.rrcIntegrityCheckResult_padding, buffer(offset, 3))
  offset = offset + 3
  subtree:add_le (HiSgnl_SrbReceiveInd_t.sizeOfRrcMsg, buffer(offset, 4))
  offset = offset + 4
  local HiSgnl_SrbReceiveInd_t_rrcMsgPayloadTree = subtree:add (HISGNL_SRBRECEIVEIND_T_RRCMSGPAYLOAD, buffer(offset))
  HiSgnl_SrbReceiveInd_t_rrcMsgPayloadTree:set_text('HiSgnl_SrbReceiveInd_t_rrcMsgPayload')
  HiSgnl_SrbReceiveInd_t_rrcMsgPayloadTree:add_le (HiSgnl_SrbReceiveInd_t_rrcMsgPayload.rrcMsgPayload_offset, buffer(offset, 4))
  offset = offset + 4
  HiSgnl_SrbReceiveInd_t_rrcMsgPayloadTree:add_le (HiSgnl_SrbReceiveInd_t_rrcMsgPayload.rrcMsgPayload_length, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
