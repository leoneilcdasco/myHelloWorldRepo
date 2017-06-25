local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUeBearerSuspendInd'
end
function module:messageId()
  return 0x7019
end
----------------------------------------------------------------
local FSHLC_SUEBEARERSUSPENDIND = Proto('FsHlC_SUeBearerSuspendInd', 'FSHLC_SUEBEARERSUSPENDIND')
local FsHlC_SUeBearerSuspendInd = FSHLC_SUEBEARERSUSPENDIND.fields
FsHlC_SUeBearerSuspendInd.messageType = ProtoField.uint16('FsHlC_SUeBearerSuspendInd.messageType', 'messageType', base.HEX)
FsHlC_SUeBearerSuspendInd.ueFsId = ProtoField.uint16('FsHlC_SUeBearerSuspendInd.ueFsId', 'ueFsId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUEBEARERSUSPENDIND, buffer())
  subtree:set_text('FsHlC_SUeBearerSuspendInd')
  subtree:add_le (FsHlC_SUeBearerSuspendInd.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUeBearerSuspendInd.ueFsId, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
