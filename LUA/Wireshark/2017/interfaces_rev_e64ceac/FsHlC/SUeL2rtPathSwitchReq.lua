local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUeL2rtPathSwitchReq'
end
function module:messageId()
  return 0x701a
end
----------------------------------------------------------------
local FSHLC_SUEL2RTPATHSWITCHREQ = Proto('FsHlC_SUeL2rtPathSwitchReq', 'FSHLC_SUEL2RTPATHSWITCHREQ')
local FsHlC_SUeL2rtPathSwitchReq = FSHLC_SUEL2RTPATHSWITCHREQ.fields
FsHlC_SUeL2rtPathSwitchReq.messageType = ProtoField.uint16('FsHlC_SUeL2rtPathSwitchReq.messageType', 'messageType', base.HEX)
FsHlC_SUeL2rtPathSwitchReq.ueFsId = ProtoField.uint16('FsHlC_SUeL2rtPathSwitchReq.ueFsId', 'ueFsId', base.HEX)
local FSHLC_SUEL2RTPATHSWITCHREQ_SUBCELLIDLIST = Proto('FsHlC_SUeL2rtPathSwitchReq_subCellIdList', 'FSHLC_SUEL2RTPATHSWITCHREQ_SUBCELLIDLIST')
local FsHlC_SUeL2rtPathSwitchReq_subCellIdList = FSHLC_SUEL2RTPATHSWITCHREQ_SUBCELLIDLIST.fields
FsHlC_SUeL2rtPathSwitchReq_subCellIdList.subCellIdList_length = ProtoField.uint32('FsHlC_SUeL2rtPathSwitchReq_subCellIdList.subCellIdList_length', 'subCellIdList_length', base.HEX)
FsHlC_SUeL2rtPathSwitchReq_subCellIdList.subCellIdList_values = ProtoField.bytes('FsHlC_SUeL2rtPathSwitchReq_subCellIdList.subCellIdList_values', 'subCellIdList_values', base.HEX)
FsHlC_SUeL2rtPathSwitchReq.l2RtUeId = ProtoField.uint32('FsHlC_SUeL2rtPathSwitchReq.l2RtUeId', 'l2RtUeId', base.HEX)
FsHlC_SUeL2rtPathSwitchReq.l2RtFronthaulEqId = ProtoField.uint32('FsHlC_SUeL2rtPathSwitchReq.l2RtFronthaulEqId', 'l2RtFronthaulEqId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUEL2RTPATHSWITCHREQ, buffer())
  subtree:set_text('FsHlC_SUeL2rtPathSwitchReq')
  subtree:add_le (FsHlC_SUeL2rtPathSwitchReq.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUeL2rtPathSwitchReq.ueFsId, buffer(offset, 2))
  offset = offset + 2
  local FsHlC_SUeL2rtPathSwitchReq_subCellIdListTree = subtree:add (FSHLC_SUEL2RTPATHSWITCHREQ_SUBCELLIDLIST, buffer(offset))
  FsHlC_SUeL2rtPathSwitchReq_subCellIdListTree:set_text('FsHlC_SUeL2rtPathSwitchReq_subCellIdList')
  FsHlC_SUeL2rtPathSwitchReq_subCellIdListTree:add_le (FsHlC_SUeL2rtPathSwitchReq_subCellIdList.subCellIdList_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SUeL2rtPathSwitchReq_subCellIdListTree:add_le (FsHlC_SUeL2rtPathSwitchReq_subCellIdList.subCellIdList_values, buffer(offset, ( (msglen >= 8) and 8 or (msglen-offset) )))
  offset = offset + ( (msglen >= 8) and 8 or (msglen-offset) )
  subtree:add_le (FsHlC_SUeL2rtPathSwitchReq.l2RtUeId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (FsHlC_SUeL2rtPathSwitchReq.l2RtFronthaulEqId, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
