local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_BearerErrorInd'
end
function module:messageId()
  return 0x0708
end
----------------------------------------------------------------
local HIUSER_BEARERERRORIND_T = Proto('HiUser_BearerErrorInd_t', 'HIUSER_BEARERERRORIND_T')
local HiUser_BearerErrorInd_t = HIUSER_BEARERERRORIND_T.fields
HiUser_BearerErrorInd_t.ueFsID = ProtoField.uint16('HiUser_BearerErrorInd_t.ueFsID', 'ueFsID', base.HEX)
HiUser_BearerErrorInd_t.logicalChannelId = ProtoField.uint8('HiUser_BearerErrorInd_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiUser_BearerErrorInd_t.bearerErrorCause = ProtoField.bytes('HiUser_BearerErrorInd_t.bearerErrorCause', 'bearerErrorCause', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_BEARERERRORIND_T, buffer())
  subtree:set_text('HiUser_BearerErrorInd_t')
  subtree:add_le (HiUser_BearerErrorInd_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerErrorInd_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerErrorInd_t.bearerErrorCause, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
