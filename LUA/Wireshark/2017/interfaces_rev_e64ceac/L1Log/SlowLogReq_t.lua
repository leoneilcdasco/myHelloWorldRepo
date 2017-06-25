local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1Log_SlowLogReq'
end
function module:messageId()
  return 0x0a54
end
----------------------------------------------------------------
local L1LOG_SLOWLOGREQ_T = Proto('L1Log_SlowLogReq_t', 'L1LOG_SLOWLOGREQ_T')
local L1Log_SlowLogReq_t = L1LOG_SLOWLOGREQ_T.fields
L1Log_SlowLogReq_t.subcellId = ProtoField.uint8('L1Log_SlowLogReq_t.subcellId', 'subcellId', base.DEC)
L1Log_SlowLogReq_t.enable = ProtoField.uint8('L1Log_SlowLogReq_t.enable', 'enable', base.HEX)
L1Log_SlowLogReq_t.reportPeriod = ProtoField.uint8('L1Log_SlowLogReq_t.reportPeriod', 'reportPeriod', base.HEX)
L1Log_SlowLogReq_t.reportPeriod_padding = ProtoField.int8('L1Log_SlowLogReq_t.reportPeriod_padding', 'reportPeriod_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1LOG_SLOWLOGREQ_T, buffer())
  subtree:set_text('L1Log_SlowLogReq_t')
  subtree:add_le (L1Log_SlowLogReq_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_SlowLogReq_t.enable, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_SlowLogReq_t.reportPeriod, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_SlowLogReq_t.reportPeriod_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
