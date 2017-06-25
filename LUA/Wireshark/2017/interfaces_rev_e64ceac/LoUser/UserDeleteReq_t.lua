local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoUser_UserDeleteReq'
end
function module:messageId()
  return 0x0602
end
----------------------------------------------------------------
local LOUSER_USERDELETEREQ_T = Proto('LoUser_UserDeleteReq_t', 'LOUSER_USERDELETEREQ_T')
local LoUser_UserDeleteReq_t = LOUSER_USERDELETEREQ_T.fields
LoUser_UserDeleteReq_t.ueFsId = ProtoField.uint16('LoUser_UserDeleteReq_t.ueFsId', 'ueFsId', base.HEX)
LoUser_UserDeleteReq_t.ueFsId_padding = ProtoField.bytes('LoUser_UserDeleteReq_t.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOUSER_USERDELETEREQ_T, buffer())
  subtree:set_text('LoUser_UserDeleteReq_t')
  subtree:add_le (LoUser_UserDeleteReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoUser_UserDeleteReq_t.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
