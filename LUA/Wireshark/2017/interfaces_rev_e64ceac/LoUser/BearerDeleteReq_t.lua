local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoUser_BearerDeleteReq'
end
function module:messageId()
  return 0x0606
end
----------------------------------------------------------------
local LOUSER_BEARERDELETEREQ_T = Proto('LoUser_BearerDeleteReq_t', 'LOUSER_BEARERDELETEREQ_T')
local LoUser_BearerDeleteReq_t = LOUSER_BEARERDELETEREQ_T.fields
LoUser_BearerDeleteReq_t.ueFsId = ProtoField.uint16('LoUser_BearerDeleteReq_t.ueFsId', 'ueFsId', base.HEX)
LoUser_BearerDeleteReq_t.logicalChannelId = ProtoField.uint8('LoUser_BearerDeleteReq_t.logicalChannelId', 'logicalChannelId', base.HEX)
LoUser_BearerDeleteReq_t.logicalChannelId_padding = ProtoField.int8('LoUser_BearerDeleteReq_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOUSER_BEARERDELETEREQ_T, buffer())
  subtree:set_text('LoUser_BearerDeleteReq_t')
  subtree:add_le (LoUser_BearerDeleteReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoUser_BearerDeleteReq_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoUser_BearerDeleteReq_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
