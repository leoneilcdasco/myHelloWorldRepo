local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SPoolConfigurationFailure'
end
function module:messageId()
  return 0x7003
end
----------------------------------------------------------------
local FSHLC_SPOOLCONFIGURATIONFAILURE = Proto('FsHlC_SPoolConfigurationFailure', 'FSHLC_SPOOLCONFIGURATIONFAILURE')
local FsHlC_SPoolConfigurationFailure = FSHLC_SPOOLCONFIGURATIONFAILURE.fields
FsHlC_SPoolConfigurationFailure.messageType = ProtoField.uint16('FsHlC_SPoolConfigurationFailure.messageType', 'messageType', base.HEX)
FsHlC_SPoolConfigurationFailure.transactionId = ProtoField.uint16('FsHlC_SPoolConfigurationFailure.transactionId', 'transactionId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SPOOLCONFIGURATIONFAILURE, buffer())
  subtree:set_text('FsHlC_SPoolConfigurationFailure')
  subtree:add_le (FsHlC_SPoolConfigurationFailure.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SPoolConfigurationFailure.transactionId, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
