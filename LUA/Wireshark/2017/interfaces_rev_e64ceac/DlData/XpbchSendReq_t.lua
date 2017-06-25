local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'DlData_XpbchSendReq'
end
function module:messageId()
  return 0x0106
end
----------------------------------------------------------------
local DLDATA_XPBCHSENDREQ_T = Proto('DlData_XpbchSendReq_t', 'DLDATA_XPBCHSENDREQ_T')
local DlData_XpbchSendReq_t = DLDATA_XPBCHSENDREQ_T.fields
DlData_XpbchSendReq_t.sfn = ProtoField.uint16('DlData_XpbchSendReq_t.sfn', 'sfn', base.DEC)
DlData_XpbchSendReq_t.subCellId = ProtoField.uint8('DlData_XpbchSendReq_t.subCellId', 'subCellId', base.HEX)
DlData_XpbchSendReq_t.subCellId_padding = ProtoField.int8('DlData_XpbchSendReq_t.subCellId_padding', 'subCellId_padding', base.DEC)
local DLDATA_XPBCHSENDREQ_T_DATAPAYLOAD = Proto('DlData_XpbchSendReq_t_dataPayload', 'DLDATA_XPBCHSENDREQ_T_DATAPAYLOAD')
local DlData_XpbchSendReq_t_dataPayload = DLDATA_XPBCHSENDREQ_T_DATAPAYLOAD.fields
DlData_XpbchSendReq_t_dataPayload.dataPayload_length = ProtoField.uint32('DlData_XpbchSendReq_t_dataPayload.dataPayload_length', 'dataPayload_length', base.HEX)
DlData_XpbchSendReq_t_dataPayload.dataPayload_values = ProtoField.uint8('DlData_XpbchSendReq_t_dataPayload.dataPayload_values', 'dataPayload_values', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (DLDATA_XPBCHSENDREQ_T, buffer())
  subtree:set_text('DlData_XpbchSendReq_t')
  subtree:add_le (DlData_XpbchSendReq_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_XpbchSendReq_t.subCellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_XpbchSendReq_t.subCellId_padding, buffer(offset, 1))
  offset = offset + 1
  local DlData_XpbchSendReq_t_dataPayloadTree = subtree:add (DLDATA_XPBCHSENDREQ_T_DATAPAYLOAD, buffer(offset))
  DlData_XpbchSendReq_t_dataPayloadTree:set_text('DlData_XpbchSendReq_t_dataPayload')
  DlData_XpbchSendReq_t_dataPayloadTree:add_le (DlData_XpbchSendReq_t_dataPayload.dataPayload_length, buffer(offset, 4))
  offset = offset + 4
  DlData_XpbchSendReq_t_dataPayloadTree:add_le (DlData_XpbchSendReq_t_dataPayload.dataPayload_values, buffer(offset, ( (msglen >= 4) and 4 or (msglen-offset) )))
  offset = offset + ( (msglen >= 4) and 4 or (msglen-offset) )
end
----------------------------------------------------------------
return module
