local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoInternal_FlowControlTimerInd'
end
function module:messageId()
  return 0x0550
end
----------------------------------------------------------------
local LOINTERNAL_FLOWCONTROLTIMERIND_T = Proto('LoInternal_FlowControlTimerInd_t', 'LOINTERNAL_FLOWCONTROLTIMERIND_T')
local LoInternal_FlowControlTimerInd_t = LOINTERNAL_FLOWCONTROLTIMERIND_T.fields
LoInternal_FlowControlTimerInd_t.loDataUeId = ProtoField.uint16('LoInternal_FlowControlTimerInd_t.loDataUeId', 'loDataUeId', base.HEX)
LoInternal_FlowControlTimerInd_t.logicalChannelId = ProtoField.uint8('LoInternal_FlowControlTimerInd_t.logicalChannelId', 'logicalChannelId', base.HEX)
LoInternal_FlowControlTimerInd_t.logicalChannelId_padding = ProtoField.int8('LoInternal_FlowControlTimerInd_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
LoInternal_FlowControlTimerInd_t.bearerIndex = ProtoField.uint16('LoInternal_FlowControlTimerInd_t.bearerIndex', 'bearerIndex', base.HEX)
LoInternal_FlowControlTimerInd_t.bearerIndex_padding = ProtoField.bytes('LoInternal_FlowControlTimerInd_t.bearerIndex_padding', 'bearerIndex_padding', base.HEX)
LoInternal_FlowControlTimerInd_t.timerIndex = ProtoField.uint64('LoInternal_FlowControlTimerInd_t.timerIndex', 'timerIndex', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOINTERNAL_FLOWCONTROLTIMERIND_T, buffer())
  subtree:set_text('LoInternal_FlowControlTimerInd_t')
  subtree:add_le (LoInternal_FlowControlTimerInd_t.loDataUeId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoInternal_FlowControlTimerInd_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoInternal_FlowControlTimerInd_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoInternal_FlowControlTimerInd_t.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoInternal_FlowControlTimerInd_t.bearerIndex_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoInternal_FlowControlTimerInd_t.timerIndex, buffer(offset, 8))
  offset = offset + 8
end
----------------------------------------------------------------
return module
