local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUserSetupReject'
end
function module:messageId()
  return 0x7013
end
----------------------------------------------------------------
local FSHLC_SUSERSETUPREJECT = Proto('FsHlC_SUserSetupReject', 'FSHLC_SUSERSETUPREJECT')
local FsHlC_SUserSetupReject = FSHLC_SUSERSETUPREJECT.fields
FsHlC_SUserSetupReject.messageType = ProtoField.uint16('FsHlC_SUserSetupReject.messageType', 'messageType', base.HEX)
FsHlC_SUserSetupReject.ueFsId = ProtoField.uint16('FsHlC_SUserSetupReject.ueFsId', 'ueFsId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUSERSETUPREJECT, buffer())
  subtree:set_text('FsHlC_SUserSetupReject')
  subtree:add_le (FsHlC_SUserSetupReject.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUserSetupReject.ueFsId, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
