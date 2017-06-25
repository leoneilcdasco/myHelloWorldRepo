local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_BearerDeleteReq'
end
function module:messageId()
  return 0x0969
end
----------------------------------------------------------------
local PSUSER_BEARERDELETEREQ_T = Proto('PsUser_BearerDeleteReq_t', 'PSUSER_BEARERDELETEREQ_T')
local PsUser_BearerDeleteReq_t = PSUSER_BEARERDELETEREQ_T.fields
PsUser_BearerDeleteReq_t.ueFsId = ProtoField.uint16('PsUser_BearerDeleteReq_t.ueFsId', 'ueFsId', base.HEX)
PsUser_BearerDeleteReq_t.logicalChannelId = ProtoField.uint8('PsUser_BearerDeleteReq_t.logicalChannelId', 'logicalChannelId', base.HEX)
PsUser_BearerDeleteReq_t.logicalChannelId_padding = ProtoField.int8('PsUser_BearerDeleteReq_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_BEARERDELETEREQ_T, buffer())
  subtree:set_text('PsUser_BearerDeleteReq_t')
  subtree:add_le (PsUser_BearerDeleteReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_BearerDeleteReq_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_BearerDeleteReq_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
