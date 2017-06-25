local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoInternal_TempUeTimerInd'
end
function module:messageId()
  return 0x0553
end
----------------------------------------------------------------
local LOINTERNAL_TEMPUETIMERIND_T = Proto('LoInternal_TempUeTimerInd_t', 'LOINTERNAL_TEMPUETIMERIND_T')
local LoInternal_TempUeTimerInd_t = LOINTERNAL_TEMPUETIMERIND_T.fields
LoInternal_TempUeTimerInd_t.rnti = ProtoField.uint16('LoInternal_TempUeTimerInd_t.rnti', 'rnti', base.HEX)
LoInternal_TempUeTimerInd_t.rnti_padding = ProtoField.bytes('LoInternal_TempUeTimerInd_t.rnti_padding', 'rnti_padding', base.HEX)
LoInternal_TempUeTimerInd_t.timerIndex = ProtoField.uint64('LoInternal_TempUeTimerInd_t.timerIndex', 'timerIndex', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOINTERNAL_TEMPUETIMERIND_T, buffer())
  subtree:set_text('LoInternal_TempUeTimerInd_t')
  subtree:add_le (LoInternal_TempUeTimerInd_t.rnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoInternal_TempUeTimerInd_t.rnti_padding, buffer(offset, 6))
  offset = offset + 6
  subtree:add_le (LoInternal_TempUeTimerInd_t.timerIndex, buffer(offset, 8))
  offset = offset + 8
end
----------------------------------------------------------------
return module
