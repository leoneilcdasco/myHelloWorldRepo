local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_PrachReceiveInd'
end
function module:messageId()
  return 0x020c
end
----------------------------------------------------------------
local ULDATA_PRACHRECEIVEIND_T = Proto('UlData_PrachReceiveInd_t', 'ULDATA_PRACHRECEIVEIND_T')
local UlData_PrachReceiveInd_t = ULDATA_PRACHRECEIVEIND_T.fields
UlData_PrachReceiveInd_t.sfn = ProtoField.uint16('UlData_PrachReceiveInd_t.sfn', 'sfn', base.DEC)
UlData_PrachReceiveInd_t.subframeNumber = ProtoField.uint8('UlData_PrachReceiveInd_t.subframeNumber', 'subframeNumber', base.DEC)
UlData_PrachReceiveInd_t.subcellId = ProtoField.uint8('UlData_PrachReceiveInd_t.subcellId', 'subcellId', base.DEC)
UlData_PrachReceiveInd_t.numOfRachPreambles = ProtoField.uint8('UlData_PrachReceiveInd_t.numOfRachPreambles', 'numOfRachPreambles', base.HEX)
UlData_PrachReceiveInd_t.numOfRachPreambles_padding = ProtoField.bytes('UlData_PrachReceiveInd_t.numOfRachPreambles_padding', 'numOfRachPreambles_padding', base.HEX)
local ULDATA_PRACHRECEIVEIND_T_DETECTEDRACHPREAMBLES = Proto('UlData_PrachReceiveInd_t_detectedRachPreambles', 'ULDATA_PRACHRECEIVEIND_T_DETECTEDRACHPREAMBLES')
local UlData_PrachReceiveInd_t_detectedRachPreambles = ULDATA_PRACHRECEIVEIND_T_DETECTEDRACHPREAMBLES.fields
UlData_PrachReceiveInd_t_detectedRachPreambles.detectedRachPreambles_offset = ProtoField.uint32('UlData_PrachReceiveInd_t_detectedRachPreambles.detectedRachPreambles_offset', 'detectedRachPreambles_offset', base.HEX)
UlData_PrachReceiveInd_t_detectedRachPreambles.detectedRachPreambles_length = ProtoField.uint32('UlData_PrachReceiveInd_t_detectedRachPreambles.detectedRachPreambles_length', 'detectedRachPreambles_length', base.HEX)
UlData_PrachReceiveInd_t_detectedRachPreambles.rachPreambleIndex = ProtoField.uint8('UlData_PrachReceiveInd_t_detectedRachPreambles.rachPreambleIndex', 'rachPreambleIndex', base.HEX)
UlData_PrachReceiveInd_t_detectedRachPreambles.startSymbol = ProtoField.bytes('UlData_PrachReceiveInd_t_detectedRachPreambles.startSymbol', 'startSymbol', base.HEX)
UlData_PrachReceiveInd_t_detectedRachPreambles.initialTa = ProtoField.uint16('UlData_PrachReceiveInd_t_detectedRachPreambles.initialTa', 'initialTa', base.HEX)
UlData_PrachReceiveInd_t_detectedRachPreambles.peakMetric = ProtoField.bytes('UlData_PrachReceiveInd_t_detectedRachPreambles.peakMetric', 'peakMetric', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_PRACHRECEIVEIND_T, buffer())
  subtree:set_text('UlData_PrachReceiveInd_t')
  subtree:add_le (UlData_PrachReceiveInd_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_PrachReceiveInd_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PrachReceiveInd_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PrachReceiveInd_t.numOfRachPreambles, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PrachReceiveInd_t.numOfRachPreambles_padding, buffer(offset, 3))
  offset = offset + 3
  local UlData_PrachReceiveInd_t_detectedRachPreamblesTree = subtree:add (ULDATA_PRACHRECEIVEIND_T_DETECTEDRACHPREAMBLES, buffer(offset))
  UlData_PrachReceiveInd_t_detectedRachPreamblesTree:set_text('UlData_PrachReceiveInd_t_detectedRachPreambles')
  UlData_PrachReceiveInd_t_detectedRachPreamblesTree:add_le (UlData_PrachReceiveInd_t_detectedRachPreambles.detectedRachPreambles_offset, buffer(offset, 4))
  offset = offset + 4
  UlData_PrachReceiveInd_t_detectedRachPreamblesTree:add_le (UlData_PrachReceiveInd_t_detectedRachPreambles.detectedRachPreambles_length, buffer(offset, 4))
  offset = offset + 4
  UlData_PrachReceiveInd_t_detectedRachPreamblesTree:add_le (UlData_PrachReceiveInd_t_detectedRachPreambles.rachPreambleIndex, buffer(offset, 1))
  offset = offset + 1
  UlData_PrachReceiveInd_t_detectedRachPreamblesTree:add_le (UlData_PrachReceiveInd_t_detectedRachPreambles.startSymbol, buffer(offset, 1))
  offset = offset + 1
  UlData_PrachReceiveInd_t_detectedRachPreamblesTree:add_le (UlData_PrachReceiveInd_t_detectedRachPreambles.initialTa, buffer(offset, 2))
  offset = offset + 2
  UlData_PrachReceiveInd_t_detectedRachPreamblesTree:add_le (UlData_PrachReceiveInd_t_detectedRachPreambles.peakMetric, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
