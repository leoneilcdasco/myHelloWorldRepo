local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoCtrl_UlBufferStatusInd'
end
function module:messageId()
  return 0x0502
end
----------------------------------------------------------------
local LOCTRL_ULBUFFERSTATUSIND_T = Proto('LoCtrl_UlBufferStatusInd_t', 'LOCTRL_ULBUFFERSTATUSIND_T')
local LoCtrl_UlBufferStatusInd_t = LOCTRL_ULBUFFERSTATUSIND_T.fields
LoCtrl_UlBufferStatusInd_t.sfn = ProtoField.uint16('LoCtrl_UlBufferStatusInd_t.sfn', 'sfn', base.DEC)
LoCtrl_UlBufferStatusInd_t.subFrame = ProtoField.uint8('LoCtrl_UlBufferStatusInd_t.subFrame', 'subFrame', base.HEX)
LoCtrl_UlBufferStatusInd_t.subFrame_padding = ProtoField.int8('LoCtrl_UlBufferStatusInd_t.subFrame_padding', 'subFrame_padding', base.DEC)
local LOCTRL_ULBUFFERSTATUSIND_T_UEULBUFFERINFO = Proto('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo', 'LOCTRL_ULBUFFERSTATUSIND_T_UEULBUFFERINFO')
local LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo = LOCTRL_ULBUFFERSTATUSIND_T_UEULBUFFERINFO.fields
LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.ueUlBufferInfo_offset = ProtoField.uint32('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.ueUlBufferInfo_offset', 'ueUlBufferInfo_offset', base.HEX)
LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.ueUlBufferInfo_length = ProtoField.uint32('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.ueUlBufferInfo_length', 'ueUlBufferInfo_length', base.HEX)
LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.subcellId = ProtoField.uint8('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.subcellId', 'subcellId', base.DEC)
LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.subcellId_padding = ProtoField.int8('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.subcellId_padding', 'subcellId_padding', base.DEC)
LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.crnti = ProtoField.uint16('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.crnti', 'crnti', base.HEX)
LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.powerHeadRoomLevel = ProtoField.uint8('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.powerHeadRoomLevel', 'powerHeadRoomLevel', base.HEX)
LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.powerHeadRoomLevel_padding = ProtoField.bytes('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.powerHeadRoomLevel_padding', 'powerHeadRoomLevel_padding', base.HEX)
local LOCTRL_ULBUFFERSTATUSIND_T_UEULBUFFERINFO_UEBSRLIST = Proto('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_ueBsrList', 'LOCTRL_ULBUFFERSTATUSIND_T_UEULBUFFERINFO_UEBSRLIST')
local LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_ueBsrList = LOCTRL_ULBUFFERSTATUSIND_T_UEULBUFFERINFO_UEBSRLIST.fields
LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_ueBsrList.bufferSizeIndex = ProtoField.uint8('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_ueBsrList.bufferSizeIndex', 'bufferSizeIndex', base.HEX)
LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_ueBsrList.bufferSizeIndex_padding = ProtoField.bytes('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_ueBsrList.bufferSizeIndex_padding', 'bufferSizeIndex_padding', base.HEX)
local LOCTRL_ULBUFFERSTATUSIND_T_UEULBUFFERINFO_BEARERLIST = Proto('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList', 'LOCTRL_ULBUFFERSTATUSIND_T_UEULBUFFERINFO_BEARERLIST')
local LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList = LOCTRL_ULBUFFERSTATUSIND_T_UEULBUFFERINFO_BEARERLIST.fields
LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList.bearerList_length = ProtoField.uint32('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList.bearerList_length', 'bearerList_length', base.HEX)
LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList.logicalChannelId = ProtoField.uint8('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList.logicalChannelId', 'logicalChannelId', base.HEX)
LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList.logicalChannelId_padding = ProtoField.bytes('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList.logicalChannelId_padding', 'logicalChannelId_padding', base.HEX)
LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList.receivedDataAmount = ProtoField.uint32('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList.receivedDataAmount', 'receivedDataAmount', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOCTRL_ULBUFFERSTATUSIND_T, buffer())
  subtree:set_text('LoCtrl_UlBufferStatusInd_t')
  subtree:add_le (LoCtrl_UlBufferStatusInd_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoCtrl_UlBufferStatusInd_t.subFrame, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCtrl_UlBufferStatusInd_t.subFrame_padding, buffer(offset, 1))
  offset = offset + 1
  local LoCtrl_UlBufferStatusInd_t_ueUlBufferInfoTree = subtree:add (LOCTRL_ULBUFFERSTATUSIND_T_UEULBUFFERINFO, buffer(offset))
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfoTree:set_text('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo')
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfoTree:add_le (LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.ueUlBufferInfo_offset, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfoTree:add_le (LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.ueUlBufferInfo_length, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfoTree:add_le (LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.subcellId, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfoTree:add_le (LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.subcellId_padding, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfoTree:add_le (LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.crnti, buffer(offset, 2))
  offset = offset + 2
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfoTree:add_le (LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.powerHeadRoomLevel, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfoTree:add_le (LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo.powerHeadRoomLevel_padding, buffer(offset, 3))
  offset = offset + 3
  local LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_ueBsrListTree = LoCtrl_UlBufferStatusInd_t_ueUlBufferInfoTree:add (LOCTRL_ULBUFFERSTATUSIND_T_UEULBUFFERINFO_UEBSRLIST, buffer(offset))
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_ueBsrListTree:set_text('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_ueBsrList')
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_ueBsrListTree:add_le (LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_ueBsrList.bufferSizeIndex, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_ueBsrListTree:add_le (LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_ueBsrList.bufferSizeIndex_padding, buffer(offset, 3))
  offset = offset + 3
  local LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerListTree = LoCtrl_UlBufferStatusInd_t_ueUlBufferInfoTree:add (LOCTRL_ULBUFFERSTATUSIND_T_UEULBUFFERINFO_BEARERLIST, buffer(offset))
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerListTree:set_text('LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList')
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerListTree:add_le (LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList.bearerList_length, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerListTree:add_le (LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerListTree:add_le (LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList.logicalChannelId_padding, buffer(offset, 3))
  offset = offset + 3
  LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerListTree:add_le (LoCtrl_UlBufferStatusInd_t_ueUlBufferInfo_bearerList.receivedDataAmount, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
