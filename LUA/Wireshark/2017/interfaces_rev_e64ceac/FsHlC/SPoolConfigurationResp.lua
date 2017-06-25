local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SPoolConfigurationResp'
end
function module:messageId()
  return 0x7002
end
----------------------------------------------------------------
local FSHLC_SPOOLCONFIGURATIONRESP = Proto('FsHlC_SPoolConfigurationResp', 'FSHLC_SPOOLCONFIGURATIONRESP')
local FsHlC_SPoolConfigurationResp = FSHLC_SPOOLCONFIGURATIONRESP.fields
FsHlC_SPoolConfigurationResp.messageType = ProtoField.uint16('FsHlC_SPoolConfigurationResp.messageType', 'messageType', base.HEX)
FsHlC_SPoolConfigurationResp.transactionId = ProtoField.uint16('FsHlC_SPoolConfigurationResp.transactionId', 'transactionId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SPOOLCONFIGURATIONRESP, buffer())
  subtree:set_text('FsHlC_SPoolConfigurationResp')
  subtree:add_le (FsHlC_SPoolConfigurationResp.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SPoolConfigurationResp.transactionId, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
