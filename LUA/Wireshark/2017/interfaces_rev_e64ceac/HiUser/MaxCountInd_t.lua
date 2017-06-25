local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_MaxCountInd'
end
function module:messageId()
  return 0x0713
end
----------------------------------------------------------------
local HIUSER_MAXCOUNTIND_T = Proto('HiUser_MaxCountInd_t', 'HIUSER_MAXCOUNTIND_T')
local HiUser_MaxCountInd_t = HIUSER_MAXCOUNTIND_T.fields
HiUser_MaxCountInd_t.ueFsID = ProtoField.uint16('HiUser_MaxCountInd_t.ueFsID', 'ueFsID', base.HEX)
HiUser_MaxCountInd_t.logicalChannelId = ProtoField.uint8('HiUser_MaxCountInd_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiUser_MaxCountInd_t.logicalChannelId_padding = ProtoField.int8('HiUser_MaxCountInd_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_MAXCOUNTIND_T, buffer())
  subtree:set_text('HiUser_MaxCountInd_t')
  subtree:add_le (HiUser_MaxCountInd_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_MaxCountInd_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_MaxCountInd_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
