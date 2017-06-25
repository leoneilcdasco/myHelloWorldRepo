local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1_EchoResp'
end
function module:messageId()
  return 0x0003
end
----------------------------------------------------------------
local L1_ECHORESP_T = Proto('L1_EchoResp_t', 'L1_ECHORESP_T')
local L1_EchoResp_t = L1_ECHORESP_T.fields
L1_EchoResp_t.payload = ProtoField.bytes('L1_EchoResp_t.payload', 'payload', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1_ECHORESP_T, buffer())
  subtree:set_text('L1_EchoResp_t')
  subtree:add_le (L1_EchoResp_t.payload, buffer(offset, ( (msglen >= 64) and 64 or (msglen-offset) )))
  offset = offset + ( (msglen >= 64) and 64 or (msglen-offset) )
end
----------------------------------------------------------------
return module
