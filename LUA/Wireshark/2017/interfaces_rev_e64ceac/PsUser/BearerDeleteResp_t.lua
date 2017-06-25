local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_BearerDeleteResp'
end
function module:messageId()
  return 0x0970
end
----------------------------------------------------------------
local PSUSER_BEARERDELETERESP_T = Proto('PsUser_BearerDeleteResp_t', 'PSUSER_BEARERDELETERESP_T')
local PsUser_BearerDeleteResp_t = PSUSER_BEARERDELETERESP_T.fields
PsUser_BearerDeleteResp_t.ueFsId = ProtoField.uint16('PsUser_BearerDeleteResp_t.ueFsId', 'ueFsId', base.HEX)
PsUser_BearerDeleteResp_t.logicalChannelId = ProtoField.uint8('PsUser_BearerDeleteResp_t.logicalChannelId', 'logicalChannelId', base.HEX)
PsUser_BearerDeleteResp_t.logicalChannelId_padding = ProtoField.int8('PsUser_BearerDeleteResp_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_BEARERDELETERESP_T, buffer())
  subtree:set_text('PsUser_BearerDeleteResp_t')
  subtree:add_le (PsUser_BearerDeleteResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_BearerDeleteResp_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_BearerDeleteResp_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
