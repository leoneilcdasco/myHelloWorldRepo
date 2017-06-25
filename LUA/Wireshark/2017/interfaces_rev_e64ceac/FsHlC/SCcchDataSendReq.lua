local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SCcchDataSendReq'
end
function module:messageId()
  return 0x700f
end
----------------------------------------------------------------
local FSHLC_SCCCHDATASENDREQ = Proto('FsHlC_SCcchDataSendReq', 'FSHLC_SCCCHDATASENDREQ')
local FsHlC_SCcchDataSendReq = FSHLC_SCCCHDATASENDREQ.fields
FsHlC_SCcchDataSendReq.messageType = ProtoField.uint16('FsHlC_SCcchDataSendReq.messageType', 'messageType', base.HEX)
FsHlC_SCcchDataSendReq.cRnti = ProtoField.uint16('FsHlC_SCcchDataSendReq.cRnti', 'cRnti', base.HEX)
FsHlC_SCcchDataSendReq.ngutranCellId = ProtoField.uint32('FsHlC_SCcchDataSendReq.ngutranCellId', 'ngutranCellId', base.HEX)
FsHlC_SCcchDataSendReq.subCellId = ProtoField.uint8('FsHlC_SCcchDataSendReq.subCellId', 'subCellId', base.HEX)
FsHlC_SCcchDataSendReq.subCellId_padding = ProtoField.bytes('FsHlC_SCcchDataSendReq.subCellId_padding', 'subCellId_padding', base.HEX)
local FSHLC_SCCCHDATASENDREQ_RRCMSGDATA = Proto('FsHlC_SCcchDataSendReq_rrcMsgData', 'FSHLC_SCCCHDATASENDREQ_RRCMSGDATA')
local FsHlC_SCcchDataSendReq_rrcMsgData = FSHLC_SCCCHDATASENDREQ_RRCMSGDATA.fields
FsHlC_SCcchDataSendReq_rrcMsgData.rrcMsgData_length = ProtoField.uint32('FsHlC_SCcchDataSendReq_rrcMsgData.rrcMsgData_length', 'rrcMsgData_length', base.HEX)
FsHlC_SCcchDataSendReq_rrcMsgData.rrcMsgData_values = ProtoField.bytes('FsHlC_SCcchDataSendReq_rrcMsgData.rrcMsgData_values', 'rrcMsgData_values', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SCCCHDATASENDREQ, buffer())
  subtree:set_text('FsHlC_SCcchDataSendReq')
  subtree:add_le (FsHlC_SCcchDataSendReq.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCcchDataSendReq.cRnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCcchDataSendReq.ngutranCellId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (FsHlC_SCcchDataSendReq.subCellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (FsHlC_SCcchDataSendReq.subCellId_padding, buffer(offset, 3))
  offset = offset + 3
  local FsHlC_SCcchDataSendReq_rrcMsgDataTree = subtree:add (FSHLC_SCCCHDATASENDREQ_RRCMSGDATA, buffer(offset))
  FsHlC_SCcchDataSendReq_rrcMsgDataTree:set_text('FsHlC_SCcchDataSendReq_rrcMsgData')
  FsHlC_SCcchDataSendReq_rrcMsgDataTree:add_le (FsHlC_SCcchDataSendReq_rrcMsgData.rrcMsgData_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SCcchDataSendReq_rrcMsgDataTree:add_le (FsHlC_SCcchDataSendReq_rrcMsgData.rrcMsgData_values, buffer(offset, ( (msglen >= 232) and 232 or (msglen-offset) )))
  offset = offset + ( (msglen >= 232) and 232 or (msglen-offset) )
end
----------------------------------------------------------------
return module
