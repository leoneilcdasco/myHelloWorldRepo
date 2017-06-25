local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_StopSchedulingReq'
end
function module:messageId()
  return 0x0963
end
----------------------------------------------------------------
local PSUSER_STOPSCHEDULINGREQ_T = Proto('PsUser_StopSchedulingReq_t', 'PSUSER_STOPSCHEDULINGREQ_T')
local PsUser_StopSchedulingReq_t = PSUSER_STOPSCHEDULINGREQ_T.fields
PsUser_StopSchedulingReq_t.dummy = ProtoField.uint8('PsUser_StopSchedulingReq_t.dummy', 'dummy', base.HEX)
PsUser_StopSchedulingReq_t.dummy_padding = ProtoField.bytes('PsUser_StopSchedulingReq_t.dummy_padding', 'dummy_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_STOPSCHEDULINGREQ_T, buffer())
  subtree:set_text('PsUser_StopSchedulingReq_t')
  subtree:add_le (PsUser_StopSchedulingReq_t.dummy, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_StopSchedulingReq_t.dummy_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
