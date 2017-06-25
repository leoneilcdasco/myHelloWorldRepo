local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_BearerDeleteReq'
end
function module:messageId()
  return 0x0702
end
----------------------------------------------------------------
local HIUSER_BEARERDELETEREQ_T = Proto('HiUser_BearerDeleteReq_t', 'HIUSER_BEARERDELETEREQ_T')
local HiUser_BearerDeleteReq_t = HIUSER_BEARERDELETEREQ_T.fields
HiUser_BearerDeleteReq_t.ueFsID = ProtoField.uint16('HiUser_BearerDeleteReq_t.ueFsID', 'ueFsID', base.HEX)
HiUser_BearerDeleteReq_t.logicalChannelId = ProtoField.uint8('HiUser_BearerDeleteReq_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiUser_BearerDeleteReq_t.logicalChannelId_padding = ProtoField.int8('HiUser_BearerDeleteReq_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
HiUser_BearerDeleteReq_t.bearerIndex = ProtoField.uint16('HiUser_BearerDeleteReq_t.bearerIndex', 'bearerIndex', base.HEX)
HiUser_BearerDeleteReq_t.bearerGroup = ProtoField.uint16('HiUser_BearerDeleteReq_t.bearerGroup', 'bearerGroup', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_BEARERDELETEREQ_T, buffer())
  subtree:set_text('HiUser_BearerDeleteReq_t')
  subtree:add_le (HiUser_BearerDeleteReq_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerDeleteReq_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerDeleteReq_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerDeleteReq_t.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerDeleteReq_t.bearerGroup, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
