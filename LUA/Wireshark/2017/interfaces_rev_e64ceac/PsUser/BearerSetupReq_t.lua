local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_BearerSetupReq'
end
function module:messageId()
  return 0x0967
end
----------------------------------------------------------------
local PSUSER_BEARERSETUPREQ_T = Proto('PsUser_BearerSetupReq_t', 'PSUSER_BEARERSETUPREQ_T')
local PsUser_BearerSetupReq_t = PSUSER_BEARERSETUPREQ_T.fields
PsUser_BearerSetupReq_t.ueFsId = ProtoField.uint16('PsUser_BearerSetupReq_t.ueFsId', 'ueFsId', base.HEX)
PsUser_BearerSetupReq_t.logicalChannelId = ProtoField.uint8('PsUser_BearerSetupReq_t.logicalChannelId', 'logicalChannelId', base.HEX)
PsUser_BearerSetupReq_t.logicalChannelGrp = ProtoField.uint8('PsUser_BearerSetupReq_t.logicalChannelGrp', 'logicalChannelGrp', base.HEX)
PsUser_BearerSetupReq_t.priority = ProtoField.uint8('PsUser_BearerSetupReq_t.priority', 'priority', base.HEX)
PsUser_BearerSetupReq_t.priority_padding = ProtoField.int8('PsUser_BearerSetupReq_t.priority_padding', 'priority_padding', base.DEC)
PsUser_BearerSetupReq_t.bucketSizeDuration = ProtoField.bytes('PsUser_BearerSetupReq_t.bucketSizeDuration', 'bucketSizeDuration', base.HEX)
PsUser_BearerSetupReq_t.prioritisedBitRate = ProtoField.bytes('PsUser_BearerSetupReq_t.prioritisedBitRate', 'prioritisedBitRate', base.HEX)
PsUser_BearerSetupReq_t.prioritisedBitRate_padding = ProtoField.bytes('PsUser_BearerSetupReq_t.prioritisedBitRate_padding', 'prioritisedBitRate_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_BEARERSETUPREQ_T, buffer())
  subtree:set_text('PsUser_BearerSetupReq_t')
  subtree:add_le (PsUser_BearerSetupReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_BearerSetupReq_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_BearerSetupReq_t.logicalChannelGrp, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_BearerSetupReq_t.priority, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_BearerSetupReq_t.priority_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_BearerSetupReq_t.bucketSizeDuration, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_BearerSetupReq_t.prioritisedBitRate, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_BearerSetupReq_t.prioritisedBitRate_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
