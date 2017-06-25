local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_StartSchedulingResp'
end
function module:messageId()
  return 0x0966
end
----------------------------------------------------------------
local PSUSER_STARTSCHEDULINGRESP_T = Proto('PsUser_StartSchedulingResp_t', 'PSUSER_STARTSCHEDULINGRESP_T')
local PsUser_StartSchedulingResp_t = PSUSER_STARTSCHEDULINGRESP_T.fields
PsUser_StartSchedulingResp_t.dummy = ProtoField.uint8('PsUser_StartSchedulingResp_t.dummy', 'dummy', base.HEX)
PsUser_StartSchedulingResp_t.dummy_padding = ProtoField.bytes('PsUser_StartSchedulingResp_t.dummy_padding', 'dummy_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_STARTSCHEDULINGRESP_T, buffer())
  subtree:set_text('PsUser_StartSchedulingResp_t')
  subtree:add_le (PsUser_StartSchedulingResp_t.dummy, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_StartSchedulingResp_t.dummy_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
