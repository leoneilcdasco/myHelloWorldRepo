local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoUser_UserDeleteResp'
end
function module:messageId()
  return 0x0603
end
----------------------------------------------------------------
local LOUSER_USERDELETERESP_T = Proto('LoUser_UserDeleteResp_t', 'LOUSER_USERDELETERESP_T')
local LoUser_UserDeleteResp_t = LOUSER_USERDELETERESP_T.fields
LoUser_UserDeleteResp_t.ueFsId = ProtoField.uint16('LoUser_UserDeleteResp_t.ueFsId', 'ueFsId', base.HEX)
LoUser_UserDeleteResp_t.ueFsId_padding = ProtoField.bytes('LoUser_UserDeleteResp_t.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOUSER_USERDELETERESP_T, buffer())
  subtree:set_text('LoUser_UserDeleteResp_t')
  subtree:add_le (LoUser_UserDeleteResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoUser_UserDeleteResp_t.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
