local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_TimerInd'
end
function module:messageId()
  return 0x0303
end
----------------------------------------------------------------
local PSINTERNAL_TIMERIND_T = Proto('PsInternal_TimerInd_t', 'PSINTERNAL_TIMERIND_T')
local PsInternal_TimerInd_t = PSINTERNAL_TIMERIND_T.fields
PsInternal_TimerInd_t.timerIndex = ProtoField.uint64('PsInternal_TimerInd_t.timerIndex', 'timerIndex', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_TIMERIND_T, buffer())
  subtree:set_text('PsInternal_TimerInd_t')
  subtree:add_le (PsInternal_TimerInd_t.timerIndex, buffer(offset, 8))
  offset = offset + 8
end
----------------------------------------------------------------
return module
