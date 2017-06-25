local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoData_DlRlcStatusPduSendReq'
end
function module:messageId()
  return 0x0404
end
----------------------------------------------------------------
local LODATA_DLRLCSTATUSPDUSENDREQ_T = Proto('LoData_DlRlcStatusPduSendReq_t', 'LODATA_DLRLCSTATUSPDUSENDREQ_T')
local LoData_DlRlcStatusPduSendReq_t = LODATA_DLRLCSTATUSPDUSENDREQ_T.fields
LoData_DlRlcStatusPduSendReq_t.loDataUeId = ProtoField.uint16('LoData_DlRlcStatusPduSendReq_t.loDataUeId', 'loDataUeId', base.HEX)
LoData_DlRlcStatusPduSendReq_t.logicalChannelId = ProtoField.uint8('LoData_DlRlcStatusPduSendReq_t.logicalChannelId', 'logicalChannelId', base.HEX)
LoData_DlRlcStatusPduSendReq_t.logicalChannelId_padding = ProtoField.int8('LoData_DlRlcStatusPduSendReq_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
local LODATA_DLRLCSTATUSPDUSENDREQ_T_DATA = Proto('LoData_DlRlcStatusPduSendReq_t_data', 'LODATA_DLRLCSTATUSPDUSENDREQ_T_DATA')
local LoData_DlRlcStatusPduSendReq_t_data = LODATA_DLRLCSTATUSPDUSENDREQ_T_DATA.fields
LoData_DlRlcStatusPduSendReq_t_data.data_offset = ProtoField.uint32('LoData_DlRlcStatusPduSendReq_t_data.data_offset', 'data_offset', base.HEX)
LoData_DlRlcStatusPduSendReq_t_data.data_length = ProtoField.uint32('LoData_DlRlcStatusPduSendReq_t_data.data_length', 'data_length', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LODATA_DLRLCSTATUSPDUSENDREQ_T, buffer())
  subtree:set_text('LoData_DlRlcStatusPduSendReq_t')
  subtree:add_le (LoData_DlRlcStatusPduSendReq_t.loDataUeId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoData_DlRlcStatusPduSendReq_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoData_DlRlcStatusPduSendReq_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
  local LoData_DlRlcStatusPduSendReq_t_dataTree = subtree:add (LODATA_DLRLCSTATUSPDUSENDREQ_T_DATA, buffer(offset))
  LoData_DlRlcStatusPduSendReq_t_dataTree:set_text('LoData_DlRlcStatusPduSendReq_t_data')
  LoData_DlRlcStatusPduSendReq_t_dataTree:add_le (LoData_DlRlcStatusPduSendReq_t_data.data_offset, buffer(offset, 4))
  offset = offset + 4
  LoData_DlRlcStatusPduSendReq_t_dataTree:add_le (LoData_DlRlcStatusPduSendReq_t_data.data_length, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
