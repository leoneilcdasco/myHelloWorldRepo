local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_UserStopResp'
end
function module:messageId()
  return 0x0959
end
----------------------------------------------------------------
local PSUSER_USERSTOPRESP_T = Proto('PsUser_UserStopResp_t', 'PSUSER_USERSTOPRESP_T')
local PsUser_UserStopResp_t = PSUSER_USERSTOPRESP_T.fields
PsUser_UserStopResp_t.ueFsId = ProtoField.uint16('PsUser_UserStopResp_t.ueFsId', 'ueFsId', base.HEX)
PsUser_UserStopResp_t.ueFsId_padding = ProtoField.bytes('PsUser_UserStopResp_t.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_USERSTOPRESP_T, buffer())
  subtree:set_text('PsUser_UserStopResp_t')
  subtree:add_le (PsUser_UserStopResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserStopResp_t.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
