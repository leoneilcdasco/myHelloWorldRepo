local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUeDataStopReq'
end
function module:messageId()
  return 0x7016
end
----------------------------------------------------------------
local FSHLC_SUEDATASTOPREQ = Proto('FsHlC_SUeDataStopReq', 'FSHLC_SUEDATASTOPREQ')
local FsHlC_SUeDataStopReq = FSHLC_SUEDATASTOPREQ.fields
FsHlC_SUeDataStopReq.messageType = ProtoField.uint16('FsHlC_SUeDataStopReq.messageType', 'messageType', base.HEX)
FsHlC_SUeDataStopReq.ueFsId = ProtoField.uint16('FsHlC_SUeDataStopReq.ueFsId', 'ueFsId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUEDATASTOPREQ, buffer())
  subtree:set_text('FsHlC_SUeDataStopReq')
  subtree:add_le (FsHlC_SUeDataStopReq.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUeDataStopReq.ueFsId, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
