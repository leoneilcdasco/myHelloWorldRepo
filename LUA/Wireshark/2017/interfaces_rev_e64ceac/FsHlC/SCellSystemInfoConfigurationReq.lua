local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SCellSystemInfoConfigurationReq'
end
function module:messageId()
  return 0x7007
end
----------------------------------------------------------------
local FSHLC_SCELLSYSTEMINFOCONFIGURATIONREQ = Proto('FsHlC_SCellSystemInfoConfigurationReq', 'FSHLC_SCELLSYSTEMINFOCONFIGURATIONREQ')
local FsHlC_SCellSystemInfoConfigurationReq = FSHLC_SCELLSYSTEMINFOCONFIGURATIONREQ.fields
FsHlC_SCellSystemInfoConfigurationReq.messageType = ProtoField.uint16('FsHlC_SCellSystemInfoConfigurationReq.messageType', 'messageType', base.HEX)
FsHlC_SCellSystemInfoConfigurationReq.messageType_padding = ProtoField.bytes('FsHlC_SCellSystemInfoConfigurationReq.messageType_padding', 'messageType_padding', base.HEX)
FsHlC_SCellSystemInfoConfigurationReq.ngutranCellId = ProtoField.uint32('FsHlC_SCellSystemInfoConfigurationReq.ngutranCellId', 'ngutranCellId', base.HEX)
FsHlC_SCellSystemInfoConfigurationReq.sfnOffset = ProtoField.uint8('FsHlC_SCellSystemInfoConfigurationReq.sfnOffset', 'sfnOffset', base.HEX)
FsHlC_SCellSystemInfoConfigurationReq.sfnLength = ProtoField.uint8('FsHlC_SCellSystemInfoConfigurationReq.sfnLength', 'sfnLength', base.HEX)
FsHlC_SCellSystemInfoConfigurationReq.sfnLength_padding = ProtoField.bytes('FsHlC_SCellSystemInfoConfigurationReq.sfnLength_padding', 'sfnLength_padding', base.HEX)
local FSHLC_SCELLSYSTEMINFOCONFIGURATIONREQ_INFORMATIONBLOCKLIST = Proto('FsHlC_SCellSystemInfoConfigurationReq_informationBlockList', 'FSHLC_SCELLSYSTEMINFOCONFIGURATIONREQ_INFORMATIONBLOCKLIST')
local FsHlC_SCellSystemInfoConfigurationReq_informationBlockList = FSHLC_SCELLSYSTEMINFOCONFIGURATIONREQ_INFORMATIONBLOCKLIST.fields
FsHlC_SCellSystemInfoConfigurationReq_informationBlockList.informationBlockList_length = ProtoField.uint32('FsHlC_SCellSystemInfoConfigurationReq_informationBlockList.informationBlockList_length', 'informationBlockList_length', base.HEX)
FsHlC_SCellSystemInfoConfigurationReq_informationBlockList.informationBlockType = ProtoField.bytes('FsHlC_SCellSystemInfoConfigurationReq_informationBlockList.informationBlockType', 'informationBlockType', base.HEX)
FsHlC_SCellSystemInfoConfigurationReq_informationBlockList.informationBlockType_padding = ProtoField.bytes('FsHlC_SCellSystemInfoConfigurationReq_informationBlockList.informationBlockType_padding', 'informationBlockType_padding', base.HEX)
local FSHLC_SCELLSYSTEMINFOCONFIGURATIONREQ_INFORMATIONBLOCKLIST_ENCODEDL3MSGPAYLOAD = Proto('FsHlC_SCellSystemInfoConfigurationReq_informationBlockList_encodedL3MsgPayload', 'FSHLC_SCELLSYSTEMINFOCONFIGURATIONREQ_INFORMATIONBLOCKLIST_ENCODEDL3MSGPAYLOAD')
local FsHlC_SCellSystemInfoConfigurationReq_informationBlockList_encodedL3MsgPayload = FSHLC_SCELLSYSTEMINFOCONFIGURATIONREQ_INFORMATIONBLOCKLIST_ENCODEDL3MSGPAYLOAD.fields
FsHlC_SCellSystemInfoConfigurationReq_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_length = ProtoField.uint32('FsHlC_SCellSystemInfoConfigurationReq_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_length', 'encodedL3MsgPayload_length', base.HEX)
FsHlC_SCellSystemInfoConfigurationReq_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_values = ProtoField.bytes('FsHlC_SCellSystemInfoConfigurationReq_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_values', 'encodedL3MsgPayload_values', base.HEX)
FsHlC_SCellSystemInfoConfigurationReq.ePBCHTransmissionPeriod = ProtoField.bytes('FsHlC_SCellSystemInfoConfigurationReq.ePBCHTransmissionPeriod', 'ePBCHTransmissionPeriod', base.HEX)
FsHlC_SCellSystemInfoConfigurationReq.ePBCHTransmissionPeriod_padding = ProtoField.bytes('FsHlC_SCellSystemInfoConfigurationReq.ePBCHTransmissionPeriod_padding', 'ePBCHTransmissionPeriod_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SCELLSYSTEMINFOCONFIGURATIONREQ, buffer())
  subtree:set_text('FsHlC_SCellSystemInfoConfigurationReq')
  subtree:add_le (FsHlC_SCellSystemInfoConfigurationReq.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCellSystemInfoConfigurationReq.messageType_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCellSystemInfoConfigurationReq.ngutranCellId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (FsHlC_SCellSystemInfoConfigurationReq.sfnOffset, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (FsHlC_SCellSystemInfoConfigurationReq.sfnLength, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (FsHlC_SCellSystemInfoConfigurationReq.sfnLength_padding, buffer(offset, 2))
  offset = offset + 2
  local FsHlC_SCellSystemInfoConfigurationReq_informationBlockListTree = subtree:add (FSHLC_SCELLSYSTEMINFOCONFIGURATIONREQ_INFORMATIONBLOCKLIST, buffer(offset))
  FsHlC_SCellSystemInfoConfigurationReq_informationBlockListTree:set_text('FsHlC_SCellSystemInfoConfigurationReq_informationBlockList')
  FsHlC_SCellSystemInfoConfigurationReq_informationBlockListTree:add_le (FsHlC_SCellSystemInfoConfigurationReq_informationBlockList.informationBlockList_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SCellSystemInfoConfigurationReq_informationBlockListTree:add_le (FsHlC_SCellSystemInfoConfigurationReq_informationBlockList.informationBlockType, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SCellSystemInfoConfigurationReq_informationBlockListTree:add_le (FsHlC_SCellSystemInfoConfigurationReq_informationBlockList.informationBlockType_padding, buffer(offset, 3))
  offset = offset + 3
  local FsHlC_SCellSystemInfoConfigurationReq_informationBlockList_encodedL3MsgPayloadTree = FsHlC_SCellSystemInfoConfigurationReq_informationBlockListTree:add (FSHLC_SCELLSYSTEMINFOCONFIGURATIONREQ_INFORMATIONBLOCKLIST_ENCODEDL3MSGPAYLOAD, buffer(offset))
  FsHlC_SCellSystemInfoConfigurationReq_informationBlockList_encodedL3MsgPayloadTree:set_text('FsHlC_SCellSystemInfoConfigurationReq_informationBlockList_encodedL3MsgPayload')
  FsHlC_SCellSystemInfoConfigurationReq_informationBlockList_encodedL3MsgPayloadTree:add_le (FsHlC_SCellSystemInfoConfigurationReq_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SCellSystemInfoConfigurationReq_informationBlockList_encodedL3MsgPayloadTree:add_le (FsHlC_SCellSystemInfoConfigurationReq_informationBlockList_encodedL3MsgPayload.encodedL3MsgPayload_values, buffer(offset, ( (msglen >= 20) and 20 or (msglen-offset) )))
  offset = offset + ( (msglen >= 20) and 20 or (msglen-offset) )
  subtree:add_le (FsHlC_SCellSystemInfoConfigurationReq.ePBCHTransmissionPeriod, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (FsHlC_SCellSystemInfoConfigurationReq.ePBCHTransmissionPeriod_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
