local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1_StartupLoopReq'
end
function module:messageId()
  return 0x0007
end
----------------------------------------------------------------
local L1_STARTUPLOOPREQ_T = Proto('L1_StartupLoopReq_t', 'L1_STARTUPLOOPREQ_T')
local L1_StartupLoopReq_t = L1_STARTUPLOOPREQ_T.fields
L1_StartupLoopReq_t.state = ProtoField.uint32('L1_StartupLoopReq_t.state', 'state', base.HEX)
L1_StartupLoopReq_t.count = ProtoField.uint32('L1_StartupLoopReq_t.count', 'count', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1_STARTUPLOOPREQ_T, buffer())
  subtree:set_text('L1_StartupLoopReq_t')
  subtree:add_le (L1_StartupLoopReq_t.state, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (L1_StartupLoopReq_t.count, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
