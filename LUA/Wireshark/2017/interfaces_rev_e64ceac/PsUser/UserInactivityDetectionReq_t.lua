local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_UserInactivityDetectionReq'
end
function module:messageId()
  return 0x0960
end
----------------------------------------------------------------
local PSUSER_USERINACTIVITYDETECTIONREQ_T = Proto('PsUser_UserInactivityDetectionReq_t', 'PSUSER_USERINACTIVITYDETECTIONREQ_T')
local PsUser_UserInactivityDetectionReq_t = PSUSER_USERINACTIVITYDETECTIONREQ_T.fields
PsUser_UserInactivityDetectionReq_t.ueFsId = ProtoField.uint16('PsUser_UserInactivityDetectionReq_t.ueFsId', 'ueFsId', base.HEX)
PsUser_UserInactivityDetectionReq_t.inactivityDetectionFlag = ProtoField.uint8('PsUser_UserInactivityDetectionReq_t.inactivityDetectionFlag', 'inactivityDetectionFlag', base.HEX)
PsUser_UserInactivityDetectionReq_t.inactivityDetectionFlag_padding = ProtoField.int8('PsUser_UserInactivityDetectionReq_t.inactivityDetectionFlag_padding', 'inactivityDetectionFlag_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_USERINACTIVITYDETECTIONREQ_T, buffer())
  subtree:set_text('PsUser_UserInactivityDetectionReq_t')
  subtree:add_le (PsUser_UserInactivityDetectionReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserInactivityDetectionReq_t.inactivityDetectionFlag, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_UserInactivityDetectionReq_t.inactivityDetectionFlag_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
