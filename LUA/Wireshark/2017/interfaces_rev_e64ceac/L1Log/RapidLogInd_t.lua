local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1Log_RapidLogInd'
end
function module:messageId()
  return 0x0a50
end
----------------------------------------------------------------
local L1LOG_RAPIDLOGIND_T = Proto('L1Log_RapidLogInd_t', 'L1LOG_RAPIDLOGIND_T')
local L1Log_RapidLogInd_t = L1LOG_RAPIDLOGIND_T.fields
L1Log_RapidLogInd_t.subcellId = ProtoField.uint8('L1Log_RapidLogInd_t.subcellId', 'subcellId', base.DEC)
L1Log_RapidLogInd_t.numOfCounters = ProtoField.uint8('L1Log_RapidLogInd_t.numOfCounters', 'numOfCounters', base.HEX)
L1Log_RapidLogInd_t.messageNumber = ProtoField.uint16('L1Log_RapidLogInd_t.messageNumber', 'messageNumber', base.HEX)
L1Log_RapidLogInd_t.messageNumber_padding = ProtoField.bytes('L1Log_RapidLogInd_t.messageNumber_padding', 'messageNumber_padding', base.HEX)
L1Log_RapidLogInd_t.bcnN1 = ProtoField.uint64('L1Log_RapidLogInd_t.bcnN1', 'bcnN1', base.HEX)
L1Log_RapidLogInd_t.counterReport = ProtoField.bytes('L1Log_RapidLogInd_t.counterReport', 'counterReport', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1LOG_RAPIDLOGIND_T, buffer())
  subtree:set_text('L1Log_RapidLogInd_t')
  subtree:add_le (L1Log_RapidLogInd_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_RapidLogInd_t.numOfCounters, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_RapidLogInd_t.messageNumber, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (L1Log_RapidLogInd_t.messageNumber_padding, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (L1Log_RapidLogInd_t.bcnN1, buffer(offset, 8))
  offset = offset + 8
  subtree:add_le (L1Log_RapidLogInd_t.counterReport, buffer(offset, ( (msglen >= 16) and 16 or (msglen-offset) )))
  offset = offset + ( (msglen >= 16) and 16 or (msglen-offset) )
end
----------------------------------------------------------------
return module
