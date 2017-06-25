local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1_EchoReq'
end
function module:messageId()
  return 0x0002
end
----------------------------------------------------------------
local L1_ECHOREQ_T = Proto('L1_EchoReq_t', 'L1_ECHOREQ_T')
local L1_EchoReq_t = L1_ECHOREQ_T.fields
L1_EchoReq_t.payload = ProtoField.bytes('L1_EchoReq_t.payload', 'payload', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1_ECHOREQ_T, buffer())
  subtree:set_text('L1_EchoReq_t')
  subtree:add_le (L1_EchoReq_t.payload, buffer(offset, ( (msglen >= 64) and 64 or (msglen-offset) )))
  offset = offset + ( (msglen >= 64) and 64 or (msglen-offset) )
end
----------------------------------------------------------------
return module
