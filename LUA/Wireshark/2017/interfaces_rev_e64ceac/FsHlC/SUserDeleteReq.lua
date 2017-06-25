local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUserDeleteReq'
end
function module:messageId()
  return 0x7014
end
----------------------------------------------------------------
local FSHLC_SUSERDELETEREQ = Proto('FsHlC_SUserDeleteReq', 'FSHLC_SUSERDELETEREQ')
local FsHlC_SUserDeleteReq = FSHLC_SUSERDELETEREQ.fields
FsHlC_SUserDeleteReq.messageType = ProtoField.uint16('FsHlC_SUserDeleteReq.messageType', 'messageType', base.HEX)
FsHlC_SUserDeleteReq.ueFsId = ProtoField.uint16('FsHlC_SUserDeleteReq.ueFsId', 'ueFsId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUSERDELETEREQ, buffer())
  subtree:set_text('FsHlC_SUserDeleteReq')
  subtree:add_le (FsHlC_SUserDeleteReq.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUserDeleteReq.ueFsId, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
