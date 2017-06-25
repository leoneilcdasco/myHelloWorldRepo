local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1Log_RapidLogResp'
end
function module:messageId()
  return 0x0a52
end
----------------------------------------------------------------
local L1LOG_RAPIDLOGRESP_T = Proto('L1Log_RapidLogResp_t', 'L1LOG_RAPIDLOGRESP_T')
local L1Log_RapidLogResp_t = L1LOG_RAPIDLOGRESP_T.fields
L1Log_RapidLogResp_t.subcellId = ProtoField.uint8('L1Log_RapidLogResp_t.subcellId', 'subcellId', base.DEC)
L1Log_RapidLogResp_t.status = ProtoField.bytes('L1Log_RapidLogResp_t.status', 'status', base.HEX)
L1Log_RapidLogResp_t.numOfCounters = ProtoField.uint8('L1Log_RapidLogResp_t.numOfCounters', 'numOfCounters', base.HEX)
L1Log_RapidLogResp_t.numOfCounters_padding = ProtoField.int8('L1Log_RapidLogResp_t.numOfCounters_padding', 'numOfCounters_padding', base.DEC)
L1Log_RapidLogResp_t.counterNameLength = ProtoField.uint32('L1Log_RapidLogResp_t.counterNameLength', 'counterNameLength', base.HEX)
L1Log_RapidLogResp_t.counterNames = ProtoField.bytes('L1Log_RapidLogResp_t.counterNames', 'counterNames', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1LOG_RAPIDLOGRESP_T, buffer())
  subtree:set_text('L1Log_RapidLogResp_t')
  subtree:add_le (L1Log_RapidLogResp_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_RapidLogResp_t.status, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_RapidLogResp_t.numOfCounters, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_RapidLogResp_t.numOfCounters_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_RapidLogResp_t.counterNameLength, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (L1Log_RapidLogResp_t.counterNames, buffer(offset, ( (msglen >= 240) and 240 or (msglen-offset) )))
  offset = offset + ( (msglen >= 240) and 240 or (msglen-offset) )
end
----------------------------------------------------------------
return module
