local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'DlData_PatternConfigReq'
end
function module:messageId()
  return 0x010c
end
----------------------------------------------------------------
local DLDATA_PATTERNCONFIGREQ_T = Proto('DlData_PatternConfigReq_t', 'DLDATA_PATTERNCONFIGREQ_T')
local DlData_PatternConfigReq_t = DLDATA_PATTERNCONFIGREQ_T.fields
DlData_PatternConfigReq_t.subcellBfGroupId = ProtoField.uint8('DlData_PatternConfigReq_t.subcellBfGroupId', 'subcellBfGroupId', base.HEX)
DlData_PatternConfigReq_t.subcellBfGroupId_padding = ProtoField.int8('DlData_PatternConfigReq_t.subcellBfGroupId_padding', 'subcellBfGroupId_padding', base.DEC)
DlData_PatternConfigReq_t.sfn = ProtoField.uint16('DlData_PatternConfigReq_t.sfn', 'sfn', base.DEC)
DlData_PatternConfigReq_t.subframeNumber = ProtoField.uint8('DlData_PatternConfigReq_t.subframeNumber', 'subframeNumber', base.DEC)
DlData_PatternConfigReq_t.subframeNumber_padding = ProtoField.int8('DlData_PatternConfigReq_t.subframeNumber_padding', 'subframeNumber_padding', base.DEC)
DlData_PatternConfigReq_t.txRxBitmapPol = ProtoField.uint16('DlData_PatternConfigReq_t.txRxBitmapPol', 'txRxBitmapPol', base.HEX)
DlData_PatternConfigReq_t.numOfPatternIdPol = ProtoField.uint8('DlData_PatternConfigReq_t.numOfPatternIdPol', 'numOfPatternIdPol', base.HEX)
DlData_PatternConfigReq_t.numOfPatternIdPol_padding = ProtoField.bytes('DlData_PatternConfigReq_t.numOfPatternIdPol_padding', 'numOfPatternIdPol_padding', base.HEX)
DlData_PatternConfigReq_t.patternIdPol0List = ProtoField.bytes('DlData_PatternConfigReq_t.patternIdPol0List', 'patternIdPol0List', base.HEX)
DlData_PatternConfigReq_t.patternIdPol1List = ProtoField.bytes('DlData_PatternConfigReq_t.patternIdPol1List', 'patternIdPol1List', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (DLDATA_PATTERNCONFIGREQ_T, buffer())
  subtree:set_text('DlData_PatternConfigReq_t')
  subtree:add_le (DlData_PatternConfigReq_t.subcellBfGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PatternConfigReq_t.subcellBfGroupId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PatternConfigReq_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_PatternConfigReq_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PatternConfigReq_t.subframeNumber_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PatternConfigReq_t.txRxBitmapPol, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_PatternConfigReq_t.numOfPatternIdPol, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PatternConfigReq_t.numOfPatternIdPol_padding, buffer(offset, 3))
  offset = offset + 3
  subtree:add_le (DlData_PatternConfigReq_t.patternIdPol0List, buffer(offset, ( (msglen >= 28) and 28 or (msglen-offset) )))
  offset = offset + ( (msglen >= 28) and 28 or (msglen-offset) )
  subtree:add_le (DlData_PatternConfigReq_t.patternIdPol1List, buffer(offset, ( (msglen >= 28) and 28 or (msglen-offset) )))
  offset = offset + ( (msglen >= 28) and 28 or (msglen-offset) )
end
----------------------------------------------------------------
return module
