local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoData_DlRlcPduSendReq'
end
function module:messageId()
  return 0x0400
end
----------------------------------------------------------------
local LODATA_DLRLCPDUSENDREQ_T = Proto('LoData_DlRlcPduSendReq_t', 'LODATA_DLRLCPDUSENDREQ_T')
local LoData_DlRlcPduSendReq_t = LODATA_DLRLCPDUSENDREQ_T.fields
local LODATA_DLRLCPDUSENDREQ_T_DATA = Proto('LoData_DlRlcPduSendReq_t_data', 'LODATA_DLRLCPDUSENDREQ_T_DATA')
local LoData_DlRlcPduSendReq_t_data = LODATA_DLRLCPDUSENDREQ_T_DATA.fields
LoData_DlRlcPduSendReq_t_data.data_offset = ProtoField.uint32('LoData_DlRlcPduSendReq_t_data.data_offset', 'data_offset', base.HEX)
LoData_DlRlcPduSendReq_t_data.data_length = ProtoField.uint32('LoData_DlRlcPduSendReq_t_data.data_length', 'data_length', base.HEX)
LoData_DlRlcPduSendReq_t_data.loDataUeId = ProtoField.uint16('LoData_DlRlcPduSendReq_t_data.loDataUeId', 'loDataUeId', base.HEX)
LoData_DlRlcPduSendReq_t_data.logicalChannelId = ProtoField.uint8('LoData_DlRlcPduSendReq_t_data.logicalChannelId', 'logicalChannelId', base.HEX)
LoData_DlRlcPduSendReq_t_data.logicalChannelId_padding = ProtoField.int8('LoData_DlRlcPduSendReq_t_data.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
local LODATA_DLRLCPDUSENDREQ_T_DATA_DATA = Proto('LoData_DlRlcPduSendReq_t_data_data', 'LODATA_DLRLCPDUSENDREQ_T_DATA_DATA')
local LoData_DlRlcPduSendReq_t_data_data = LODATA_DLRLCPDUSENDREQ_T_DATA_DATA.fields
LoData_DlRlcPduSendReq_t_data_data.data_offset = ProtoField.uint32('LoData_DlRlcPduSendReq_t_data_data.data_offset', 'data_offset', base.HEX)
LoData_DlRlcPduSendReq_t_data_data.data_length = ProtoField.uint32('LoData_DlRlcPduSendReq_t_data_data.data_length', 'data_length', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LODATA_DLRLCPDUSENDREQ_T, buffer())
  subtree:set_text('LoData_DlRlcPduSendReq_t')
  local LoData_DlRlcPduSendReq_t_dataTree = subtree:add (LODATA_DLRLCPDUSENDREQ_T_DATA, buffer(offset))
  LoData_DlRlcPduSendReq_t_dataTree:set_text('LoData_DlRlcPduSendReq_t_data')
  LoData_DlRlcPduSendReq_t_dataTree:add_le (LoData_DlRlcPduSendReq_t_data.data_offset, buffer(offset, 4))
  offset = offset + 4
  LoData_DlRlcPduSendReq_t_dataTree:add_le (LoData_DlRlcPduSendReq_t_data.data_length, buffer(offset, 4))
  offset = offset + 4
  LoData_DlRlcPduSendReq_t_dataTree:add_le (LoData_DlRlcPduSendReq_t_data.loDataUeId, buffer(offset, 2))
  offset = offset + 2
  LoData_DlRlcPduSendReq_t_dataTree:add_le (LoData_DlRlcPduSendReq_t_data.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  LoData_DlRlcPduSendReq_t_dataTree:add_le (LoData_DlRlcPduSendReq_t_data.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
  local LoData_DlRlcPduSendReq_t_data_dataTree = LoData_DlRlcPduSendReq_t_dataTree:add (LODATA_DLRLCPDUSENDREQ_T_DATA_DATA, buffer(offset))
  LoData_DlRlcPduSendReq_t_data_dataTree:set_text('LoData_DlRlcPduSendReq_t_data_data')
  LoData_DlRlcPduSendReq_t_data_dataTree:add_le (LoData_DlRlcPduSendReq_t_data_data.data_offset, buffer(offset, 4))
  offset = offset + 4
  LoData_DlRlcPduSendReq_t_data_dataTree:add_le (LoData_DlRlcPduSendReq_t_data_data.data_length, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
