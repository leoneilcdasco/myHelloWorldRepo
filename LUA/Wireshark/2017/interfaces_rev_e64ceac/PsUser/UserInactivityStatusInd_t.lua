local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_UserInactivityStatusInd'
end
function module:messageId()
  return 0x0962
end
----------------------------------------------------------------
local PSUSER_USERINACTIVITYSTATUSIND_T = Proto('PsUser_UserInactivityStatusInd_t', 'PSUSER_USERINACTIVITYSTATUSIND_T')
local PsUser_UserInactivityStatusInd_t = PSUSER_USERINACTIVITYSTATUSIND_T.fields
PsUser_UserInactivityStatusInd_t.ueFsId = ProtoField.uint16('PsUser_UserInactivityStatusInd_t.ueFsId', 'ueFsId', base.HEX)
PsUser_UserInactivityStatusInd_t.ueActivityStatus = ProtoField.uint8('PsUser_UserInactivityStatusInd_t.ueActivityStatus', 'ueActivityStatus', base.HEX)
PsUser_UserInactivityStatusInd_t.ueActivityStatus_padding = ProtoField.int8('PsUser_UserInactivityStatusInd_t.ueActivityStatus_padding', 'ueActivityStatus_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_USERINACTIVITYSTATUSIND_T, buffer())
  subtree:set_text('PsUser_UserInactivityStatusInd_t')
  subtree:add_le (PsUser_UserInactivityStatusInd_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserInactivityStatusInd_t.ueActivityStatus, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_UserInactivityStatusInd_t.ueActivityStatus_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
