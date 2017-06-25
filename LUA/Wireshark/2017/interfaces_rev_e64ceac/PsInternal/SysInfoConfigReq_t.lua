local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_SysInfoConfigReq'
end
function module:messageId()
  return 0x030c
end
----------------------------------------------------------------
local PSINTERNAL_SYSINFOCONFIGREQ_T = Proto('PsInternal_SysInfoConfigReq_t', 'PSINTERNAL_SYSINFOCONFIGREQ_T')
local PsInternal_SysInfoConfigReq_t = PSINTERNAL_SYSINFOCONFIGREQ_T.fields
local PSINTERNAL_SYSINFOCONFIGREQ_T_DATA = Proto('PsInternal_SysInfoConfigReq_t_data', 'PSINTERNAL_SYSINFOCONFIGREQ_T_DATA')
local PsInternal_SysInfoConfigReq_t_data = PSINTERNAL_SYSINFOCONFIGREQ_T_DATA.fields
PsInternal_SysInfoConfigReq_t_data.ngutraCellId = ProtoField.uint32('PsInternal_SysInfoConfigReq_t_data.ngutraCellId', 'ngutraCellId', base.HEX)
PsInternal_SysInfoConfigReq_t_data.subcellGroupId = ProtoField.uint8('PsInternal_SysInfoConfigReq_t_data.subcellGroupId', 'subcellGroupId', base.HEX)
PsInternal_SysInfoConfigReq_t_data.sfnOffset = ProtoField.uint8('PsInternal_SysInfoConfigReq_t_data.sfnOffset', 'sfnOffset', base.HEX)
PsInternal_SysInfoConfigReq_t_data.sfnLength = ProtoField.uint8('PsInternal_SysInfoConfigReq_t_data.sfnLength', 'sfnLength', base.HEX)
PsInternal_SysInfoConfigReq_t_data.ePBCHTransmissionPeriod = ProtoField.bytes('PsInternal_SysInfoConfigReq_t_data.ePBCHTransmissionPeriod', 'ePBCHTransmissionPeriod', base.HEX)
local PSINTERNAL_SYSINFOCONFIGREQ_T_DATA_INFORMATIONBLOCKLIST = Proto('PsInternal_SysInfoConfigReq_t_data_informationBlockList', 'PSINTERNAL_SYSINFOCONFIGREQ_T_DATA_INFORMATIONBLOCKLIST')
local PsInternal_SysInfoConfigReq_t_data_informationBlockList = PSINTERNAL_SYSINFOCONFIGREQ_T_DATA_INFORMATIONBLOCKLIST.fields
PsInternal_SysInfoConfigReq_t_data_informationBlockList.informationBlockList_length = ProtoField.uint32('PsInternal_SysInfoConfigReq_t_data_informationBlockList.informationBlockList_length', 'informationBlockList_length', base.HEX)
PsInternal_SysInfoConfigReq_t_data_informationBlockList.informationBlockType = ProtoField.bytes('PsInternal_SysInfoConfigReq_t_data_informationBlockList.informationBlockType', 'informationBlockType', base.HEX)
PsInternal_SysInfoConfigReq_t_data_informationBlockList.informationBlockType_padding = ProtoField.bytes('PsInternal_SysInfoConfigReq_t_data_informationBlockList.informationBlockType_padding', 'informationBlockType_padding', base.HEX)
local PSINTERNAL_SYSINFOCONFIGREQ_T_DATA_INFORMATIONBLOCKLIST_ENCODEDL3MSGPAYLOAD = Proto('PsInternal_SysInfoConfigReq_t_data_informationBlockList_encodedL3MsgPayload', 'PSINTERNAL_SYSINFOCONFIGREQ_T_DATA_INFORMATIONBLOCKLIST_ENCODEDL3MSGPAYLOAD')
local PsInternal_SysInfoConfigReq_t_data_informationBlockList_encodedL3MsgPayload = PSINTERNAL_SYSINFOCONFIGREQ_T_DATA_INFORMATIONBLOCKLIST_ENCODEDL3MSGPAYLOAD.fields
PsInternal_SysInfoConfigReq_t_data_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_length = ProtoField.uint32('PsInternal_SysInfoConfigReq_t_data_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_length', 'encodedL3MsgPayload_length', base.HEX)
PsInternal_SysInfoConfigReq_t_data_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_values = ProtoField.bytes('PsInternal_SysInfoConfigReq_t_data_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_values', 'encodedL3MsgPayload_values', base.HEX)
PsInternal_SysInfoConfigReq_t.senderAddress = ProtoField.uint32('PsInternal_SysInfoConfigReq_t.senderAddress', 'senderAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_SYSINFOCONFIGREQ_T, buffer())
  subtree:set_text('PsInternal_SysInfoConfigReq_t')
  local PsInternal_SysInfoConfigReq_t_dataTree = subtree:add (PSINTERNAL_SYSINFOCONFIGREQ_T_DATA, buffer(offset))
  PsInternal_SysInfoConfigReq_t_dataTree:set_text('PsInternal_SysInfoConfigReq_t_data')
  PsInternal_SysInfoConfigReq_t_dataTree:add_le (PsInternal_SysInfoConfigReq_t_data.ngutraCellId, buffer(offset, 4))
  offset = offset + 4
  PsInternal_SysInfoConfigReq_t_dataTree:add_le (PsInternal_SysInfoConfigReq_t_data.subcellGroupId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SysInfoConfigReq_t_dataTree:add_le (PsInternal_SysInfoConfigReq_t_data.sfnOffset, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SysInfoConfigReq_t_dataTree:add_le (PsInternal_SysInfoConfigReq_t_data.sfnLength, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SysInfoConfigReq_t_dataTree:add_le (PsInternal_SysInfoConfigReq_t_data.ePBCHTransmissionPeriod, buffer(offset, 1))
  offset = offset + 1
  local PsInternal_SysInfoConfigReq_t_data_informationBlockListTree = PsInternal_SysInfoConfigReq_t_dataTree:add (PSINTERNAL_SYSINFOCONFIGREQ_T_DATA_INFORMATIONBLOCKLIST, buffer(offset))
  PsInternal_SysInfoConfigReq_t_data_informationBlockListTree:set_text('PsInternal_SysInfoConfigReq_t_data_informationBlockList')
  PsInternal_SysInfoConfigReq_t_data_informationBlockListTree:add_le (PsInternal_SysInfoConfigReq_t_data_informationBlockList.informationBlockList_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_SysInfoConfigReq_t_data_informationBlockListTree:add_le (PsInternal_SysInfoConfigReq_t_data_informationBlockList.informationBlockType, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SysInfoConfigReq_t_data_informationBlockListTree:add_le (PsInternal_SysInfoConfigReq_t_data_informationBlockList.informationBlockType_padding, buffer(offset, 3))
  offset = offset + 3
  local PsInternal_SysInfoConfigReq_t_data_informationBlockList_encodedL3MsgPayloadTree = PsInternal_SysInfoConfigReq_t_data_informationBlockListTree:add (PSINTERNAL_SYSINFOCONFIGREQ_T_DATA_INFORMATIONBLOCKLIST_ENCODEDL3MSGPAYLOAD, buffer(offset))
  PsInternal_SysInfoConfigReq_t_data_informationBlockList_encodedL3MsgPayloadTree:set_text('PsInternal_SysInfoConfigReq_t_data_informationBlockList_encodedL3MsgPayload')
  PsInternal_SysInfoConfigReq_t_data_informationBlockList_encodedL3MsgPayloadTree:add_le (PsInternal_SysInfoConfigReq_t_data_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_SysInfoConfigReq_t_data_informationBlockList_encodedL3MsgPayloadTree:add_le (PsInternal_SysInfoConfigReq_t_data_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_values, buffer(offset, ( (msglen >= 20) and 20 or (msglen-offset) )))
  offset = offset + ( (msglen >= 20) and 20 or (msglen-offset) )
  subtree:add_le (PsInternal_SysInfoConfigReq_t.senderAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
