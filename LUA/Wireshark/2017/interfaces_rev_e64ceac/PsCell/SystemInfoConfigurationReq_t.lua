local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCell_SystemInfoConfigurationReq'
end
function module:messageId()
  return 0x092a
end
----------------------------------------------------------------
local PSCELL_SYSTEMINFOCONFIGURATIONREQ_T = Proto('PsCell_SystemInfoConfigurationReq_t', 'PSCELL_SYSTEMINFOCONFIGURATIONREQ_T')
local PsCell_SystemInfoConfigurationReq_t = PSCELL_SYSTEMINFOCONFIGURATIONREQ_T.fields
PsCell_SystemInfoConfigurationReq_t.ngutraCellId = ProtoField.uint32('PsCell_SystemInfoConfigurationReq_t.ngutraCellId', 'ngutraCellId', base.HEX)
PsCell_SystemInfoConfigurationReq_t.subcellGroupId = ProtoField.uint8('PsCell_SystemInfoConfigurationReq_t.subcellGroupId', 'subcellGroupId', base.HEX)
PsCell_SystemInfoConfigurationReq_t.sfnOffset = ProtoField.uint8('PsCell_SystemInfoConfigurationReq_t.sfnOffset', 'sfnOffset', base.HEX)
PsCell_SystemInfoConfigurationReq_t.sfnLength = ProtoField.uint8('PsCell_SystemInfoConfigurationReq_t.sfnLength', 'sfnLength', base.HEX)
PsCell_SystemInfoConfigurationReq_t.ePBCHTransmissionPeriod = ProtoField.bytes('PsCell_SystemInfoConfigurationReq_t.ePBCHTransmissionPeriod', 'ePBCHTransmissionPeriod', base.HEX)
local PSCELL_SYSTEMINFOCONFIGURATIONREQ_T_INFORMATIONBLOCKLIST = Proto('PsCell_SystemInfoConfigurationReq_t_informationBlockList', 'PSCELL_SYSTEMINFOCONFIGURATIONREQ_T_INFORMATIONBLOCKLIST')
local PsCell_SystemInfoConfigurationReq_t_informationBlockList = PSCELL_SYSTEMINFOCONFIGURATIONREQ_T_INFORMATIONBLOCKLIST.fields
PsCell_SystemInfoConfigurationReq_t_informationBlockList.informationBlockList_length = ProtoField.uint32('PsCell_SystemInfoConfigurationReq_t_informationBlockList.informationBlockList_length', 'informationBlockList_length', base.HEX)
PsCell_SystemInfoConfigurationReq_t_informationBlockList.informationBlockType = ProtoField.bytes('PsCell_SystemInfoConfigurationReq_t_informationBlockList.informationBlockType', 'informationBlockType', base.HEX)
PsCell_SystemInfoConfigurationReq_t_informationBlockList.informationBlockType_padding = ProtoField.bytes('PsCell_SystemInfoConfigurationReq_t_informationBlockList.informationBlockType_padding', 'informationBlockType_padding', base.HEX)
local PSCELL_SYSTEMINFOCONFIGURATIONREQ_T_INFORMATIONBLOCKLIST_ENCODEDL3MSGPAYLOAD = Proto('PsCell_SystemInfoConfigurationReq_t_informationBlockList_encodedL3MsgPayload', 'PSCELL_SYSTEMINFOCONFIGURATIONREQ_T_INFORMATIONBLOCKLIST_ENCODEDL3MSGPAYLOAD')
local PsCell_SystemInfoConfigurationReq_t_informationBlockList_encodedL3MsgPayload = PSCELL_SYSTEMINFOCONFIGURATIONREQ_T_INFORMATIONBLOCKLIST_ENCODEDL3MSGPAYLOAD.fields
PsCell_SystemInfoConfigurationReq_t_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_length = ProtoField.uint32('PsCell_SystemInfoConfigurationReq_t_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_length', 'encodedL3MsgPayload_length', base.HEX)
PsCell_SystemInfoConfigurationReq_t_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_values = ProtoField.bytes('PsCell_SystemInfoConfigurationReq_t_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_values', 'encodedL3MsgPayload_values', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCELL_SYSTEMINFOCONFIGURATIONREQ_T, buffer())
  subtree:set_text('PsCell_SystemInfoConfigurationReq_t')
  subtree:add_le (PsCell_SystemInfoConfigurationReq_t.ngutraCellId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsCell_SystemInfoConfigurationReq_t.subcellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SystemInfoConfigurationReq_t.sfnOffset, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SystemInfoConfigurationReq_t.sfnLength, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SystemInfoConfigurationReq_t.ePBCHTransmissionPeriod, buffer(offset, 1))
  offset = offset + 1
  local PsCell_SystemInfoConfigurationReq_t_informationBlockListTree = subtree:add (PSCELL_SYSTEMINFOCONFIGURATIONREQ_T_INFORMATIONBLOCKLIST, buffer(offset))
  PsCell_SystemInfoConfigurationReq_t_informationBlockListTree:set_text('PsCell_SystemInfoConfigurationReq_t_informationBlockList')
  PsCell_SystemInfoConfigurationReq_t_informationBlockListTree:add_le (PsCell_SystemInfoConfigurationReq_t_informationBlockList.informationBlockList_length, buffer(offset, 4))
  offset = offset + 4
  PsCell_SystemInfoConfigurationReq_t_informationBlockListTree:add_le (PsCell_SystemInfoConfigurationReq_t_informationBlockList.informationBlockType, buffer(offset, 1))
  offset = offset + 1
  PsCell_SystemInfoConfigurationReq_t_informationBlockListTree:add_le (PsCell_SystemInfoConfigurationReq_t_informationBlockList.informationBlockType_padding, buffer(offset, 3))
  offset = offset + 3
  local PsCell_SystemInfoConfigurationReq_t_informationBlockList_encodedL3MsgPayloadTree = PsCell_SystemInfoConfigurationReq_t_informationBlockListTree:add (PSCELL_SYSTEMINFOCONFIGURATIONREQ_T_INFORMATIONBLOCKLIST_ENCODEDL3MSGPAYLOAD, buffer(offset))
  PsCell_SystemInfoConfigurationReq_t_informationBlockList_encodedL3MsgPayloadTree:set_text('PsCell_SystemInfoConfigurationReq_t_informationBlockList_encodedL3MsgPayload')
  PsCell_SystemInfoConfigurationReq_t_informationBlockList_encodedL3MsgPayloadTree:add_le (PsCell_SystemInfoConfigurationReq_t_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_length, buffer(offset, 4))
  offset = offset + 4
  PsCell_SystemInfoConfigurationReq_t_informationBlockList_encodedL3MsgPayloadTree:add_le (PsCell_SystemInfoConfigurationReq_t_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_values, buffer(offset, ( (msglen >= 20) and 20 or (msglen-offset) )))
  offset = offset + ( (msglen >= 20) and 20 or (msglen-offset) )
end
----------------------------------------------------------------
return module
