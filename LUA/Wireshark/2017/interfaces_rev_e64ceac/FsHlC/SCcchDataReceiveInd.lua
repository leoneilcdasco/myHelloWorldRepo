local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SCcchDataReceiveInd'
end
function module:messageId()
  return 0x7010
end
----------------------------------------------------------------
local FSHLC_SCCCHDATARECEIVEIND = Proto('FsHlC_SCcchDataReceiveInd', 'FSHLC_SCCCHDATARECEIVEIND')
local FsHlC_SCcchDataReceiveInd = FSHLC_SCCCHDATARECEIVEIND.fields
FsHlC_SCcchDataReceiveInd.messageType = ProtoField.uint16('FsHlC_SCcchDataReceiveInd.messageType', 'messageType', base.HEX)
FsHlC_SCcchDataReceiveInd.cRnti = ProtoField.uint16('FsHlC_SCcchDataReceiveInd.cRnti', 'cRnti', base.HEX)
FsHlC_SCcchDataReceiveInd.ngutranCellId = ProtoField.uint32('FsHlC_SCcchDataReceiveInd.ngutranCellId', 'ngutranCellId', base.HEX)
FsHlC_SCcchDataReceiveInd.subCellId = ProtoField.uint8('FsHlC_SCcchDataReceiveInd.subCellId', 'subCellId', base.HEX)
FsHlC_SCcchDataReceiveInd.subCellId_padding = ProtoField.bytes('FsHlC_SCcchDataReceiveInd.subCellId_padding', 'subCellId_padding', base.HEX)
local FSHLC_SCCCHDATARECEIVEIND_RRCMSGDATA = Proto('FsHlC_SCcchDataReceiveInd_rrcMsgData', 'FSHLC_SCCCHDATARECEIVEIND_RRCMSGDATA')
local FsHlC_SCcchDataReceiveInd_rrcMsgData = FSHLC_SCCCHDATARECEIVEIND_RRCMSGDATA.fields
FsHlC_SCcchDataReceiveInd_rrcMsgData.rrcMsgData_length = ProtoField.uint32('FsHlC_SCcchDataReceiveInd_rrcMsgData.rrcMsgData_length', 'rrcMsgData_length', base.HEX)
FsHlC_SCcchDataReceiveInd_rrcMsgData.rrcMsgData_values = ProtoField.bytes('FsHlC_SCcchDataReceiveInd_rrcMsgData.rrcMsgData_values', 'rrcMsgData_values', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SCCCHDATARECEIVEIND, buffer())
  subtree:set_text('FsHlC_SCcchDataReceiveInd')
  subtree:add_le (FsHlC_SCcchDataReceiveInd.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCcchDataReceiveInd.cRnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCcchDataReceiveInd.ngutranCellId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (FsHlC_SCcchDataReceiveInd.subCellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (FsHlC_SCcchDataReceiveInd.subCellId_padding, buffer(offset, 3))
  offset = offset + 3
  local FsHlC_SCcchDataReceiveInd_rrcMsgDataTree = subtree:add (FSHLC_SCCCHDATARECEIVEIND_RRCMSGDATA, buffer(offset))
  FsHlC_SCcchDataReceiveInd_rrcMsgDataTree:set_text('FsHlC_SCcchDataReceiveInd_rrcMsgData')
  FsHlC_SCcchDataReceiveInd_rrcMsgDataTree:add_le (FsHlC_SCcchDataReceiveInd_rrcMsgData.rrcMsgData_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SCcchDataReceiveInd_rrcMsgDataTree:add_le (FsHlC_SCcchDataReceiveInd_rrcMsgData.rrcMsgData_values, buffer(offset, ( (msglen >= 8) and 8 or (msglen-offset) )))
  offset = offset + ( (msglen >= 8) and 8 or (msglen-offset) )
end
----------------------------------------------------------------
return module
