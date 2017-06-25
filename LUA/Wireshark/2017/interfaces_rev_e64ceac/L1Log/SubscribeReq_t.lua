local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1Log_SubscribeReq'
end
function module:messageId()
  return 0x0a56
end
----------------------------------------------------------------
local L1LOG_SUBSCRIBEREQ_T = Proto('L1Log_SubscribeReq_t', 'L1LOG_SUBSCRIBEREQ_T')
local L1Log_SubscribeReq_t = L1LOG_SUBSCRIBEREQ_T.fields
L1Log_SubscribeReq_t.notUsed = ProtoField.uint8('L1Log_SubscribeReq_t.notUsed', 'notUsed', base.HEX)
L1Log_SubscribeReq_t.notUsed_padding = ProtoField.bytes('L1Log_SubscribeReq_t.notUsed_padding', 'notUsed_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1LOG_SUBSCRIBEREQ_T, buffer())
  subtree:set_text('L1Log_SubscribeReq_t')
  subtree:add_le (L1Log_SubscribeReq_t.notUsed, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_SubscribeReq_t.notUsed_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
