local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_StopSchedulingResp'
end
function module:messageId()
  return 0x0964
end
----------------------------------------------------------------
local PSUSER_STOPSCHEDULINGRESP_T = Proto('PsUser_StopSchedulingResp_t', 'PSUSER_STOPSCHEDULINGRESP_T')
local PsUser_StopSchedulingResp_t = PSUSER_STOPSCHEDULINGRESP_T.fields
PsUser_StopSchedulingResp_t.dummy = ProtoField.uint8('PsUser_StopSchedulingResp_t.dummy', 'dummy', base.HEX)
PsUser_StopSchedulingResp_t.dummy_padding = ProtoField.bytes('PsUser_StopSchedulingResp_t.dummy_padding', 'dummy_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_STOPSCHEDULINGRESP_T, buffer())
  subtree:set_text('PsUser_StopSchedulingResp_t')
  subtree:add_le (PsUser_StopSchedulingResp_t.dummy, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_StopSchedulingResp_t.dummy_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
