local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoUser_BearerSetupReq'
end
function module:messageId()
  return 0x0604
end
----------------------------------------------------------------
local LOUSER_BEARERSETUPREQ_T = Proto('LoUser_BearerSetupReq_t', 'LOUSER_BEARERSETUPREQ_T')
local LoUser_BearerSetupReq_t = LOUSER_BEARERSETUPREQ_T.fields
LoUser_BearerSetupReq_t.ueFsId = ProtoField.uint16('LoUser_BearerSetupReq_t.ueFsId', 'ueFsId', base.HEX)
LoUser_BearerSetupReq_t.logicalChannelId = ProtoField.uint8('LoUser_BearerSetupReq_t.logicalChannelId', 'logicalChannelId', base.HEX)
LoUser_BearerSetupReq_t.logicalChannelGrId = ProtoField.uint8('LoUser_BearerSetupReq_t.logicalChannelGrId', 'logicalChannelGrId', base.HEX)
LoUser_BearerSetupReq_t.bearerIndex = ProtoField.uint16('LoUser_BearerSetupReq_t.bearerIndex', 'bearerIndex', base.HEX)
LoUser_BearerSetupReq_t.bearerIndex_padding = ProtoField.bytes('LoUser_BearerSetupReq_t.bearerIndex_padding', 'bearerIndex_padding', base.HEX)
LoUser_BearerSetupReq_t.loDataUlRlcPduReceiverClient = ProtoField.uint32('LoUser_BearerSetupReq_t.loDataUlRlcPduReceiverClient', 'loDataUlRlcPduReceiverClient', base.HEX)
LoUser_BearerSetupReq_t.loDataFlowCtrlClient = ProtoField.uint32('LoUser_BearerSetupReq_t.loDataFlowCtrlClient', 'loDataFlowCtrlClient', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOUSER_BEARERSETUPREQ_T, buffer())
  subtree:set_text('LoUser_BearerSetupReq_t')
  subtree:add_le (LoUser_BearerSetupReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoUser_BearerSetupReq_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoUser_BearerSetupReq_t.logicalChannelGrId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoUser_BearerSetupReq_t.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoUser_BearerSetupReq_t.bearerIndex_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoUser_BearerSetupReq_t.loDataUlRlcPduReceiverClient, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoUser_BearerSetupReq_t.loDataFlowCtrlClient, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
