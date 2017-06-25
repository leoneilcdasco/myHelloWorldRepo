local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUeDataStopResp'
end
function module:messageId()
  return 0x7017
end
----------------------------------------------------------------
local FSHLC_SUEDATASTOPRESP = Proto('FsHlC_SUeDataStopResp', 'FSHLC_SUEDATASTOPRESP')
local FsHlC_SUeDataStopResp = FSHLC_SUEDATASTOPRESP.fields
FsHlC_SUeDataStopResp.messageType = ProtoField.uint16('FsHlC_SUeDataStopResp.messageType', 'messageType', base.HEX)
FsHlC_SUeDataStopResp.ueFsId = ProtoField.uint16('FsHlC_SUeDataStopResp.ueFsId', 'ueFsId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUEDATASTOPRESP, buffer())
  subtree:set_text('FsHlC_SUeDataStopResp')
  subtree:add_le (FsHlC_SUeDataStopResp.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUeDataStopResp.ueFsId, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
