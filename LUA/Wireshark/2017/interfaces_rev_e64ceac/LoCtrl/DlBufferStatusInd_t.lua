local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoCtrl_DlBufferStatusInd'
end
function module:messageId()
  return 0x0501
end
----------------------------------------------------------------
local LOCTRL_DLBUFFERSTATUSIND_T = Proto('LoCtrl_DlBufferStatusInd_t', 'LOCTRL_DLBUFFERSTATUSIND_T')
local LoCtrl_DlBufferStatusInd_t = LOCTRL_DLBUFFERSTATUSIND_T.fields
LoCtrl_DlBufferStatusInd_t.sfn = ProtoField.uint16('LoCtrl_DlBufferStatusInd_t.sfn', 'sfn', base.DEC)
LoCtrl_DlBufferStatusInd_t.subFrame = ProtoField.uint8('LoCtrl_DlBufferStatusInd_t.subFrame', 'subFrame', base.HEX)
LoCtrl_DlBufferStatusInd_t.subFrame_padding = ProtoField.int8('LoCtrl_DlBufferStatusInd_t.subFrame_padding', 'subFrame_padding', base.DEC)
local LOCTRL_DLBUFFERSTATUSIND_T_RBDLBUFFERINFO = Proto('LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo', 'LOCTRL_DLBUFFERSTATUSIND_T_RBDLBUFFERINFO')
local LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo = LOCTRL_DLBUFFERSTATUSIND_T_RBDLBUFFERINFO.fields
LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.rbDlBufferInfo_offset = ProtoField.uint32('LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.rbDlBufferInfo_offset', 'rbDlBufferInfo_offset', base.HEX)
LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.rbDlBufferInfo_length = ProtoField.uint32('LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.rbDlBufferInfo_length', 'rbDlBufferInfo_length', base.HEX)
LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.cellId = ProtoField.uint16('LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.cellId', 'cellId', base.HEX)
LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.crnti = ProtoField.uint16('LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.crnti', 'crnti', base.HEX)
LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.logicalChannelId = ProtoField.uint8('LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.logicalChannelId', 'logicalChannelId', base.HEX)
LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.logicalChannelId_padding = ProtoField.bytes('LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.logicalChannelId_padding', 'logicalChannelId_padding', base.HEX)
LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.bufferedBytes = ProtoField.uint32('LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.bufferedBytes', 'bufferedBytes', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOCTRL_DLBUFFERSTATUSIND_T, buffer())
  subtree:set_text('LoCtrl_DlBufferStatusInd_t')
  subtree:add_le (LoCtrl_DlBufferStatusInd_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoCtrl_DlBufferStatusInd_t.subFrame, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCtrl_DlBufferStatusInd_t.subFrame_padding, buffer(offset, 1))
  offset = offset + 1
  local LoCtrl_DlBufferStatusInd_t_rbDlBufferInfoTree = subtree:add (LOCTRL_DLBUFFERSTATUSIND_T_RBDLBUFFERINFO, buffer(offset))
  LoCtrl_DlBufferStatusInd_t_rbDlBufferInfoTree:set_text('LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo')
  LoCtrl_DlBufferStatusInd_t_rbDlBufferInfoTree:add_le (LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.rbDlBufferInfo_offset, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_DlBufferStatusInd_t_rbDlBufferInfoTree:add_le (LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.rbDlBufferInfo_length, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_DlBufferStatusInd_t_rbDlBufferInfoTree:add_le (LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.cellId, buffer(offset, 2))
  offset = offset + 2
  LoCtrl_DlBufferStatusInd_t_rbDlBufferInfoTree:add_le (LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.crnti, buffer(offset, 2))
  offset = offset + 2
  LoCtrl_DlBufferStatusInd_t_rbDlBufferInfoTree:add_le (LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_DlBufferStatusInd_t_rbDlBufferInfoTree:add_le (LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.logicalChannelId_padding, buffer(offset, 3))
  offset = offset + 3
  LoCtrl_DlBufferStatusInd_t_rbDlBufferInfoTree:add_le (LoCtrl_DlBufferStatusInd_t_rbDlBufferInfo.bufferedBytes, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
