local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_SubfrTriggerInd'
end
function module:messageId()
  return 0x0301
end
----------------------------------------------------------------
local PSINTERNAL_SUBFRTRIGGERIND_T = Proto('PsInternal_SubfrTriggerInd_t', 'PSINTERNAL_SUBFRTRIGGERIND_T')
local PsInternal_SubfrTriggerInd_t = PSINTERNAL_SUBFRTRIGGERIND_T.fields
PsInternal_SubfrTriggerInd_t.sfn = ProtoField.uint16('PsInternal_SubfrTriggerInd_t.sfn', 'sfn', base.DEC)
PsInternal_SubfrTriggerInd_t.subframeNo = ProtoField.uint8('PsInternal_SubfrTriggerInd_t.subframeNo', 'subframeNo', base.HEX)
PsInternal_SubfrTriggerInd_t.subframeNo_padding = ProtoField.bytes('PsInternal_SubfrTriggerInd_t.subframeNo_padding', 'subframeNo_padding', base.HEX)
PsInternal_SubfrTriggerInd_t.tscAtSubframeBoundary = ProtoField.uint64('PsInternal_SubfrTriggerInd_t.tscAtSubframeBoundary', 'tscAtSubframeBoundary', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_SUBFRTRIGGERIND_T, buffer())
  subtree:set_text('PsInternal_SubfrTriggerInd_t')
  subtree:add_le (PsInternal_SubfrTriggerInd_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsInternal_SubfrTriggerInd_t.subframeNo, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsInternal_SubfrTriggerInd_t.subframeNo_padding, buffer(offset, 5))
  offset = offset + 5
  subtree:add_le (PsInternal_SubfrTriggerInd_t.tscAtSubframeBoundary, buffer(offset, 8))
  offset = offset + 8
end
----------------------------------------------------------------
return module
