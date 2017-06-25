local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_StartSchedulingReq'
end
function module:messageId()
  return 0x0965
end
----------------------------------------------------------------
local PSUSER_STARTSCHEDULINGREQ_T = Proto('PsUser_StartSchedulingReq_t', 'PSUSER_STARTSCHEDULINGREQ_T')
local PsUser_StartSchedulingReq_t = PSUSER_STARTSCHEDULINGREQ_T.fields
PsUser_StartSchedulingReq_t.dummy = ProtoField.uint8('PsUser_StartSchedulingReq_t.dummy', 'dummy', base.HEX)
PsUser_StartSchedulingReq_t.dummy_padding = ProtoField.bytes('PsUser_StartSchedulingReq_t.dummy_padding', 'dummy_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_STARTSCHEDULINGREQ_T, buffer())
  subtree:set_text('PsUser_StartSchedulingReq_t')
  subtree:add_le (PsUser_StartSchedulingReq_t.dummy, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_StartSchedulingReq_t.dummy_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
