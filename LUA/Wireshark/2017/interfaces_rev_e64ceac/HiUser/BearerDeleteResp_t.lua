local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_BearerDeleteResp'
end
function module:messageId()
  return 0x0703
end
----------------------------------------------------------------
local HIUSER_BEARERDELETERESP_T = Proto('HiUser_BearerDeleteResp_t', 'HIUSER_BEARERDELETERESP_T')
local HiUser_BearerDeleteResp_t = HIUSER_BEARERDELETERESP_T.fields
HiUser_BearerDeleteResp_t.ueFsID = ProtoField.uint16('HiUser_BearerDeleteResp_t.ueFsID', 'ueFsID', base.HEX)
HiUser_BearerDeleteResp_t.logicalChannelId = ProtoField.uint8('HiUser_BearerDeleteResp_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiUser_BearerDeleteResp_t.logicalChannelId_padding = ProtoField.int8('HiUser_BearerDeleteResp_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_BEARERDELETERESP_T, buffer())
  subtree:set_text('HiUser_BearerDeleteResp_t')
  subtree:add_le (HiUser_BearerDeleteResp_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerDeleteResp_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerDeleteResp_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
