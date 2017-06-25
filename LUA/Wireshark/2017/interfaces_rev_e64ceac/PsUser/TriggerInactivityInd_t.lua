local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_TriggerInactivityInd'
end
function module:messageId()
  return 0x0977
end
----------------------------------------------------------------
local PSUSER_TRIGGERINACTIVITYIND_T = Proto('PsUser_TriggerInactivityInd_t', 'PSUSER_TRIGGERINACTIVITYIND_T')
local PsUser_TriggerInactivityInd_t = PSUSER_TRIGGERINACTIVITYIND_T.fields
PsUser_TriggerInactivityInd_t.dummy = ProtoField.uint8('PsUser_TriggerInactivityInd_t.dummy', 'dummy', base.HEX)
PsUser_TriggerInactivityInd_t.dummy_padding = ProtoField.bytes('PsUser_TriggerInactivityInd_t.dummy_padding', 'dummy_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_TRIGGERINACTIVITYIND_T, buffer())
  subtree:set_text('PsUser_TriggerInactivityInd_t')
  subtree:add_le (PsUser_TriggerInactivityInd_t.dummy, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_TriggerInactivityInd_t.dummy_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
