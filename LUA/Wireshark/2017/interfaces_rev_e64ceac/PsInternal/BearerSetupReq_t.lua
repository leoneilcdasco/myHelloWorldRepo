local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_BearerSetupReq'
end
function module:messageId()
  return 0x0313
end
----------------------------------------------------------------
local PSINTERNAL_BEARERSETUPREQ_T = Proto('PsInternal_BearerSetupReq_t', 'PSINTERNAL_BEARERSETUPREQ_T')
local PsInternal_BearerSetupReq_t = PSINTERNAL_BEARERSETUPREQ_T.fields
PsInternal_BearerSetupReq_t.senderAddress = ProtoField.uint32('PsInternal_BearerSetupReq_t.senderAddress', 'senderAddress', base.HEX)
local PSINTERNAL_BEARERSETUPREQ_T_REQUEST = Proto('PsInternal_BearerSetupReq_t_request', 'PSINTERNAL_BEARERSETUPREQ_T_REQUEST')
local PsInternal_BearerSetupReq_t_request = PSINTERNAL_BEARERSETUPREQ_T_REQUEST.fields
PsInternal_BearerSetupReq_t_request.ueFsId = ProtoField.uint16('PsInternal_BearerSetupReq_t_request.ueFsId', 'ueFsId', base.HEX)
PsInternal_BearerSetupReq_t_request.logicalChannelId = ProtoField.uint8('PsInternal_BearerSetupReq_t_request.logicalChannelId', 'logicalChannelId', base.HEX)
PsInternal_BearerSetupReq_t_request.logicalChannelGrp = ProtoField.uint8('PsInternal_BearerSetupReq_t_request.logicalChannelGrp', 'logicalChannelGrp', base.HEX)
PsInternal_BearerSetupReq_t_request.priority = ProtoField.uint8('PsInternal_BearerSetupReq_t_request.priority', 'priority', base.HEX)
PsInternal_BearerSetupReq_t_request.priority_padding = ProtoField.int8('PsInternal_BearerSetupReq_t_request.priority_padding', 'priority_padding', base.DEC)
PsInternal_BearerSetupReq_t_request.bucketSizeDuration = ProtoField.bytes('PsInternal_BearerSetupReq_t_request.bucketSizeDuration', 'bucketSizeDuration', base.HEX)
PsInternal_BearerSetupReq_t_request.prioritisedBitRate = ProtoField.bytes('PsInternal_BearerSetupReq_t_request.prioritisedBitRate', 'prioritisedBitRate', base.HEX)
PsInternal_BearerSetupReq_t_request.prioritisedBitRate_padding = ProtoField.bytes('PsInternal_BearerSetupReq_t_request.prioritisedBitRate_padding', 'prioritisedBitRate_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_BEARERSETUPREQ_T, buffer())
  subtree:set_text('PsInternal_BearerSetupReq_t')
  subtree:add_le (PsInternal_BearerSetupReq_t.senderAddress, buffer(offset, 4))
  offset = offset + 4
  local PsInternal_BearerSetupReq_t_requestTree = subtree:add (PSINTERNAL_BEARERSETUPREQ_T_REQUEST, buffer(offset))
  PsInternal_BearerSetupReq_t_requestTree:set_text('PsInternal_BearerSetupReq_t_request')
  PsInternal_BearerSetupReq_t_requestTree:add_le (PsInternal_BearerSetupReq_t_request.ueFsId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_BearerSetupReq_t_requestTree:add_le (PsInternal_BearerSetupReq_t_request.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_BearerSetupReq_t_requestTree:add_le (PsInternal_BearerSetupReq_t_request.logicalChannelGrp, buffer(offset, 1))
  offset = offset + 1
  PsInternal_BearerSetupReq_t_requestTree:add_le (PsInternal_BearerSetupReq_t_request.priority, buffer(offset, 1))
  offset = offset + 1
  PsInternal_BearerSetupReq_t_requestTree:add_le (PsInternal_BearerSetupReq_t_request.priority_padding, buffer(offset, 1))
  offset = offset + 1
  PsInternal_BearerSetupReq_t_requestTree:add_le (PsInternal_BearerSetupReq_t_request.bucketSizeDuration, buffer(offset, 2))
  offset = offset + 2
  PsInternal_BearerSetupReq_t_requestTree:add_le (PsInternal_BearerSetupReq_t_request.prioritisedBitRate, buffer(offset, 2))
  offset = offset + 2
  PsInternal_BearerSetupReq_t_requestTree:add_le (PsInternal_BearerSetupReq_t_request.prioritisedBitRate_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
