local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'DlData_PdschSendReq'
end
function module:messageId()
  return 0x010a
end
----------------------------------------------------------------
local DLDATA_PDSCHSENDREQ_T = Proto('DlData_PdschSendReq_t', 'DLDATA_PDSCHSENDREQ_T')
local DlData_PdschSendReq_t = DLDATA_PDSCHSENDREQ_T.fields
DlData_PdschSendReq_t.subCellId = ProtoField.uint8('DlData_PdschSendReq_t.subCellId', 'subCellId', base.HEX)
DlData_PdschSendReq_t.subCellId_padding = ProtoField.int8('DlData_PdschSendReq_t.subCellId_padding', 'subCellId_padding', base.DEC)
DlData_PdschSendReq_t.sfn = ProtoField.uint16('DlData_PdschSendReq_t.sfn', 'sfn', base.DEC)
DlData_PdschSendReq_t.subframeNumber = ProtoField.uint8('DlData_PdschSendReq_t.subframeNumber', 'subframeNumber', base.DEC)
DlData_PdschSendReq_t.subframeNumber_padding = ProtoField.int8('DlData_PdschSendReq_t.subframeNumber_padding', 'subframeNumber_padding', base.DEC)
DlData_PdschSendReq_t.rnti = ProtoField.uint16('DlData_PdschSendReq_t.rnti', 'rnti', base.HEX)
DlData_PdschSendReq_t.dmrsScramblingSequenceInt = ProtoField.uint16('DlData_PdschSendReq_t.dmrsScramblingSequenceInt', 'dmrsScramblingSequenceInt', base.HEX)
DlData_PdschSendReq_t.nscId = ProtoField.uint8('DlData_PdschSendReq_t.nscId', 'nscId', base.HEX)
DlData_PdschSendReq_t.numOfPdschSymbols = ProtoField.bytes('DlData_PdschSendReq_t.numOfPdschSymbols', 'numOfPdschSymbols', base.HEX)
DlData_PdschSendReq_t.antPortLayer = ProtoField.bytes('DlData_PdschSendReq_t.antPortLayer', 'antPortLayer', base.HEX)
DlData_PdschSendReq_t.mcs = ProtoField.uint8('DlData_PdschSendReq_t.mcs', 'mcs', base.HEX)
DlData_PdschSendReq_t.spatialMode = ProtoField.bytes('DlData_PdschSendReq_t.spatialMode', 'spatialMode', base.HEX)
DlData_PdschSendReq_t.codebookIndex = ProtoField.bytes('DlData_PdschSendReq_t.codebookIndex', 'codebookIndex', base.HEX)
DlData_PdschSendReq_t.startPrbGroup = ProtoField.uint8('DlData_PdschSendReq_t.startPrbGroup', 'startPrbGroup', base.HEX)
DlData_PdschSendReq_t.numOfPrbGroups = ProtoField.uint8('DlData_PdschSendReq_t.numOfPrbGroups', 'numOfPrbGroups', base.HEX)
DlData_PdschSendReq_t.dlPcrsConfig = ProtoField.bytes('DlData_PdschSendReq_t.dlPcrsConfig', 'dlPcrsConfig', base.HEX)
DlData_PdschSendReq_t.dlPcrsConfig_padding = ProtoField.int8('DlData_PdschSendReq_t.dlPcrsConfig_padding', 'dlPcrsConfig_padding', base.DEC)
DlData_PdschSendReq_t.dlPcrsScramblingSequenceInt = ProtoField.uint16('DlData_PdschSendReq_t.dlPcrsScramblingSequenceInt', 'dlPcrsScramblingSequenceInt', base.HEX)
DlData_PdschSendReq_t.pdschTbTransmitPower = ProtoField.int16('DlData_PdschSendReq_t.pdschTbTransmitPower', 'pdschTbTransmitPower', base.DEC)
DlData_PdschSendReq_t.tbIndex = ProtoField.uint32('DlData_PdschSendReq_t.tbIndex', 'tbIndex', base.HEX)
DlData_PdschSendReq_t.tbStartOffset = ProtoField.uint32('DlData_PdschSendReq_t.tbStartOffset', 'tbStartOffset', base.HEX)
DlData_PdschSendReq_t.tbSize = ProtoField.uint32('DlData_PdschSendReq_t.tbSize', 'tbSize', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (DLDATA_PDSCHSENDREQ_T, buffer())
  subtree:set_text('DlData_PdschSendReq_t')
  subtree:add_le (DlData_PdschSendReq_t.subCellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.subCellId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_PdschSendReq_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.subframeNumber_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.rnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_PdschSendReq_t.dmrsScramblingSequenceInt, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_PdschSendReq_t.nscId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.numOfPdschSymbols, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.antPortLayer, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.mcs, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.spatialMode, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.codebookIndex, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.startPrbGroup, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.numOfPrbGroups, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.dlPcrsConfig, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.dlPcrsConfig_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschSendReq_t.dlPcrsScramblingSequenceInt, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_PdschSendReq_t.pdschTbTransmitPower, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_PdschSendReq_t.tbIndex, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (DlData_PdschSendReq_t.tbStartOffset, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (DlData_PdschSendReq_t.tbSize, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
