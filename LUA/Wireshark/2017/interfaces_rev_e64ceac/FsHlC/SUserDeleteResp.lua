local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUserDeleteResp'
end
function module:messageId()
  return 0x7015
end
----------------------------------------------------------------
local FSHLC_SUSERDELETERESP = Proto('FsHlC_SUserDeleteResp', 'FSHLC_SUSERDELETERESP')
local FsHlC_SUserDeleteResp = FSHLC_SUSERDELETERESP.fields
FsHlC_SUserDeleteResp.messageType = ProtoField.uint16('FsHlC_SUserDeleteResp.messageType', 'messageType', base.HEX)
FsHlC_SUserDeleteResp.ueFsId = ProtoField.uint16('FsHlC_SUserDeleteResp.ueFsId', 'ueFsId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUSERDELETERESP, buffer())
  subtree:set_text('FsHlC_SUserDeleteResp')
  subtree:add_le (FsHlC_SUserDeleteResp.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUserDeleteResp.ueFsId, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
