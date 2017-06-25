local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_UserDeleteReq'
end
function module:messageId()
  return 0x0952
end
----------------------------------------------------------------
local PSUSER_USERDELETEREQ_T = Proto('PsUser_UserDeleteReq_t', 'PSUSER_USERDELETEREQ_T')
local PsUser_UserDeleteReq_t = PSUSER_USERDELETEREQ_T.fields
PsUser_UserDeleteReq_t.ueFsId = ProtoField.uint16('PsUser_UserDeleteReq_t.ueFsId', 'ueFsId', base.HEX)
PsUser_UserDeleteReq_t.ueFsId_padding = ProtoField.bytes('PsUser_UserDeleteReq_t.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_USERDELETEREQ_T, buffer())
  subtree:set_text('PsUser_UserDeleteReq_t')
  subtree:add_le (PsUser_UserDeleteReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserDeleteReq_t.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
