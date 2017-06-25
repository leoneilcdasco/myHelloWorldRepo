local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1_PingPongReq'
end
function module:messageId()
  return 0x0001
end
----------------------------------------------------------------
local L1_PINGPONGREQ_T = Proto('L1_PingPongReq_t', 'L1_PINGPONGREQ_T')
local L1_PingPongReq_t = L1_PINGPONGREQ_T.fields
L1_PingPongReq_t.data = ProtoField.uint32('L1_PingPongReq_t.data', 'data', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1_PINGPONGREQ_T, buffer())
  subtree:set_text('L1_PingPongReq_t')
  subtree:add_le (L1_PingPongReq_t.data, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
