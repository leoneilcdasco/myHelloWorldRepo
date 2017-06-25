local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoUser_BearerDeleteResp'
end
function module:messageId()
  return 0x0607
end
----------------------------------------------------------------
local LOUSER_BEARERDELETERESP_T = Proto('LoUser_BearerDeleteResp_t', 'LOUSER_BEARERDELETERESP_T')
local LoUser_BearerDeleteResp_t = LOUSER_BEARERDELETERESP_T.fields
LoUser_BearerDeleteResp_t.ueFsId = ProtoField.uint16('LoUser_BearerDeleteResp_t.ueFsId', 'ueFsId', base.HEX)
LoUser_BearerDeleteResp_t.logicalChannelId = ProtoField.uint8('LoUser_BearerDeleteResp_t.logicalChannelId', 'logicalChannelId', base.HEX)
LoUser_BearerDeleteResp_t.logicalChannelId_padding = ProtoField.int8('LoUser_BearerDeleteResp_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOUSER_BEARERDELETERESP_T, buffer())
  subtree:set_text('LoUser_BearerDeleteResp_t')
  subtree:add_le (LoUser_BearerDeleteResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoUser_BearerDeleteResp_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoUser_BearerDeleteResp_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
