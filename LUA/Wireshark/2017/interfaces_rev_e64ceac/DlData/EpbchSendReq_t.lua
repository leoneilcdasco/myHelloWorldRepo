local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'DlData_EpbchSendReq'
end
function module:messageId()
  return 0x010b
end
----------------------------------------------------------------
local DLDATA_EPBCHSENDREQ_T = Proto('DlData_EpbchSendReq_t', 'DLDATA_EPBCHSENDREQ_T')
local DlData_EpbchSendReq_t = DLDATA_EPBCHSENDREQ_T.fields
DlData_EpbchSendReq_t.subcellId = ProtoField.uint8('DlData_EpbchSendReq_t.subcellId', 'subcellId', base.DEC)
DlData_EpbchSendReq_t.subcellId_padding = ProtoField.int8('DlData_EpbchSendReq_t.subcellId_padding', 'subcellId_padding', base.DEC)
DlData_EpbchSendReq_t.sfn = ProtoField.uint16('DlData_EpbchSendReq_t.sfn', 'sfn', base.DEC)
DlData_EpbchSendReq_t.subframeNo = ProtoField.uint8('DlData_EpbchSendReq_t.subframeNo', 'subframeNo', base.HEX)
DlData_EpbchSendReq_t.subframeNo_padding = ProtoField.int8('DlData_EpbchSendReq_t.subframeNo_padding', 'subframeNo_padding', base.DEC)
DlData_EpbchSendReq_t.epbchTransmitPower = ProtoField.int16('DlData_EpbchSendReq_t.epbchTransmitPower', 'epbchTransmitPower', base.DEC)
DlData_EpbchSendReq_t.dataPayload = ProtoField.bytes('DlData_EpbchSendReq_t.dataPayload', 'dataPayload', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (DLDATA_EPBCHSENDREQ_T, buffer())
  subtree:set_text('DlData_EpbchSendReq_t')
  subtree:add_le (DlData_EpbchSendReq_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_EpbchSendReq_t.subcellId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_EpbchSendReq_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_EpbchSendReq_t.subframeNo, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_EpbchSendReq_t.subframeNo_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_EpbchSendReq_t.epbchTransmitPower, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_EpbchSendReq_t.dataPayload, buffer(offset, ( (msglen >= 20) and 20 or (msglen-offset) )))
  offset = offset + ( (msglen >= 20) and 20 or (msglen-offset) )
end
----------------------------------------------------------------
return module
