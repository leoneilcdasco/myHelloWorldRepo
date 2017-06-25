local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1Log_TraceInd'
end
function module:messageId()
  return 0x0a5f
end
----------------------------------------------------------------
local L1LOG_TRACEIND_T = Proto('L1Log_TraceInd_t', 'L1LOG_TRACEIND_T')
local L1Log_TraceInd_t = L1LOG_TRACEIND_T.fields
L1Log_TraceInd_t.bcn = ProtoField.uint64('L1Log_TraceInd_t.bcn', 'bcn', base.HEX)
L1Log_TraceInd_t.core_id = ProtoField.uint8('L1Log_TraceInd_t.core_id', 'core_id', base.HEX)
L1Log_TraceInd_t.subcell_Idx = ProtoField.uint8('L1Log_TraceInd_t.subcell_Idx', 'subcell_Idx', base.HEX)
L1Log_TraceInd_t.filtered_value = ProtoField.uint8('L1Log_TraceInd_t.filtered_value', 'filtered_value', base.HEX)
L1Log_TraceInd_t.report_counter = ProtoField.uint8('L1Log_TraceInd_t.report_counter', 'report_counter', base.HEX)
L1Log_TraceInd_t.trace_id = ProtoField.uint16('L1Log_TraceInd_t.trace_id', 'trace_id', base.HEX)
L1Log_TraceInd_t.payload_size = ProtoField.uint16('L1Log_TraceInd_t.payload_size', 'payload_size', base.HEX)
local L1LOG_TRACEIND_T_DATA_PAYLOAD = Proto('L1Log_TraceInd_t_data_payload', 'L1LOG_TRACEIND_T_DATA_PAYLOAD')
local L1Log_TraceInd_t_data_payload = L1LOG_TRACEIND_T_DATA_PAYLOAD.fields
L1Log_TraceInd_t_data_payload.data_payload_length = ProtoField.uint32('L1Log_TraceInd_t_data_payload.data_payload_length', 'data_payload_length', base.HEX)
L1Log_TraceInd_t_data_payload.data_payload_values = ProtoField.bytes('L1Log_TraceInd_t_data_payload.data_payload_values', 'data_payload_values', base.HEX)
L1Log_TraceInd_t.end_message_pattern = ProtoField.uint32('L1Log_TraceInd_t.end_message_pattern', 'end_message_pattern', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1LOG_TRACEIND_T, buffer())
  subtree:set_text('L1Log_TraceInd_t')
  subtree:add_le (L1Log_TraceInd_t.bcn, buffer(offset, 8))
  offset = offset + 8
  subtree:add_le (L1Log_TraceInd_t.core_id, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_TraceInd_t.subcell_Idx, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_TraceInd_t.filtered_value, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_TraceInd_t.report_counter, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_TraceInd_t.trace_id, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (L1Log_TraceInd_t.payload_size, buffer(offset, 2))
  offset = offset + 2
  local L1Log_TraceInd_t_data_payloadTree = subtree:add (L1LOG_TRACEIND_T_DATA_PAYLOAD, buffer(offset))
  L1Log_TraceInd_t_data_payloadTree:set_text('L1Log_TraceInd_t_data_payload')
  L1Log_TraceInd_t_data_payloadTree:add_le (L1Log_TraceInd_t_data_payload.data_payload_length, buffer(offset, 4))
  offset = offset + 4
  L1Log_TraceInd_t_data_payloadTree:add_le (L1Log_TraceInd_t_data_payload.data_payload_values, buffer(offset, ( (msglen >= 3000) and 3000 or (msglen-offset) )))
  offset = offset + ( (msglen >= 3000) and 3000 or (msglen-offset) )
  subtree:add_le (L1Log_TraceInd_t.end_message_pattern, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
