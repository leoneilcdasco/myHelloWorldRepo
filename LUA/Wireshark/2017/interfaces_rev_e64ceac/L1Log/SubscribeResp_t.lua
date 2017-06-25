local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1Log_SubscribeResp'
end
function module:messageId()
  return 0x0a57
end
----------------------------------------------------------------
local L1LOG_SUBSCRIBERESP_T = Proto('L1Log_SubscribeResp_t', 'L1LOG_SUBSCRIBERESP_T')
local L1Log_SubscribeResp_t = L1LOG_SUBSCRIBERESP_T.fields
L1Log_SubscribeResp_t.status = ProtoField.bytes('L1Log_SubscribeResp_t.status', 'status', base.HEX)
L1Log_SubscribeResp_t.status_padding = ProtoField.bytes('L1Log_SubscribeResp_t.status_padding', 'status_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1LOG_SUBSCRIBERESP_T, buffer())
  subtree:set_text('L1Log_SubscribeResp_t')
  subtree:add_le (L1Log_SubscribeResp_t.status, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_SubscribeResp_t.status_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
