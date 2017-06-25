local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUeBearerResumeInd'
end
function module:messageId()
  return 0x7018
end
----------------------------------------------------------------
local FSHLC_SUEBEARERRESUMEIND = Proto('FsHlC_SUeBearerResumeInd', 'FSHLC_SUEBEARERRESUMEIND')
local FsHlC_SUeBearerResumeInd = FSHLC_SUEBEARERRESUMEIND.fields
FsHlC_SUeBearerResumeInd.messageType = ProtoField.uint16('FsHlC_SUeBearerResumeInd.messageType', 'messageType', base.HEX)
FsHlC_SUeBearerResumeInd.ueFsId = ProtoField.uint16('FsHlC_SUeBearerResumeInd.ueFsId', 'ueFsId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUEBEARERRESUMEIND, buffer())
  subtree:set_text('FsHlC_SUeBearerResumeInd')
  subtree:add_le (FsHlC_SUeBearerResumeInd.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUeBearerResumeInd.ueFsId, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
