local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1Log_TraceResp'
end
function module:messageId()
  return 0x0a5e
end
----------------------------------------------------------------
local L1LOG_TRACERESP_T = Proto('L1Log_TraceResp_t', 'L1LOG_TRACERESP_T')
local L1Log_TraceResp_t = L1LOG_TRACERESP_T.fields
L1Log_TraceResp_t.subcellId = ProtoField.uint8('L1Log_TraceResp_t.subcellId', 'subcellId', base.DEC)
L1Log_TraceResp_t.status = ProtoField.bytes('L1Log_TraceResp_t.status', 'status', base.HEX)
L1Log_TraceResp_t.status_padding = ProtoField.bytes('L1Log_TraceResp_t.status_padding', 'status_padding', base.HEX)
L1Log_TraceResp_t.data = ProtoField.uint32('L1Log_TraceResp_t.data', 'data', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1LOG_TRACERESP_T, buffer())
  subtree:set_text('L1Log_TraceResp_t')
  subtree:add_le (L1Log_TraceResp_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_TraceResp_t.status, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_TraceResp_t.status_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (L1Log_TraceResp_t.data, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
