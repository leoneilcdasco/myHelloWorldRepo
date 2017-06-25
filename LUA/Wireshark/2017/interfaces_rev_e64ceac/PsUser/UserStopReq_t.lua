local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_UserStopReq'
end
function module:messageId()
  return 0x0958
end
----------------------------------------------------------------
local PSUSER_USERSTOPREQ_T = Proto('PsUser_UserStopReq_t', 'PSUSER_USERSTOPREQ_T')
local PsUser_UserStopReq_t = PSUSER_USERSTOPREQ_T.fields
PsUser_UserStopReq_t.ueFsId = ProtoField.uint16('PsUser_UserStopReq_t.ueFsId', 'ueFsId', base.HEX)
PsUser_UserStopReq_t.ueFsId_padding = ProtoField.bytes('PsUser_UserStopReq_t.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_USERSTOPREQ_T, buffer())
  subtree:set_text('PsUser_UserStopReq_t')
  subtree:add_le (PsUser_UserStopReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserStopReq_t.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
