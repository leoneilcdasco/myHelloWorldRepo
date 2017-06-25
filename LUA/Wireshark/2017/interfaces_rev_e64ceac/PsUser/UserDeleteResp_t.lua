local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_UserDeleteResp'
end
function module:messageId()
  return 0x0953
end
----------------------------------------------------------------
local PSUSER_USERDELETERESP_T = Proto('PsUser_UserDeleteResp_t', 'PSUSER_USERDELETERESP_T')
local PsUser_UserDeleteResp_t = PSUSER_USERDELETERESP_T.fields
PsUser_UserDeleteResp_t.ueFsId = ProtoField.uint16('PsUser_UserDeleteResp_t.ueFsId', 'ueFsId', base.HEX)
PsUser_UserDeleteResp_t.ueFsId_padding = ProtoField.bytes('PsUser_UserDeleteResp_t.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_USERDELETERESP_T, buffer())
  subtree:set_text('PsUser_UserDeleteResp_t')
  subtree:add_le (PsUser_UserDeleteResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserDeleteResp_t.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
