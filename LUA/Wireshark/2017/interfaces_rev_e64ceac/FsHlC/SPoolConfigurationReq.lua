local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SPoolConfigurationReq'
end
function module:messageId()
  return 0x7001
end
----------------------------------------------------------------
local FSHLC_SPOOLCONFIGURATIONREQ = Proto('FsHlC_SPoolConfigurationReq', 'FSHLC_SPOOLCONFIGURATIONREQ')
local FsHlC_SPoolConfigurationReq = FSHLC_SPOOLCONFIGURATIONREQ.fields
FsHlC_SPoolConfigurationReq.messageType = ProtoField.uint16('FsHlC_SPoolConfigurationReq.messageType', 'messageType', base.HEX)
FsHlC_SPoolConfigurationReq.transactionId = ProtoField.uint16('FsHlC_SPoolConfigurationReq.transactionId', 'transactionId', base.HEX)
local FSHLC_SPOOLCONFIGURATIONREQ_L3CENNODEADDRESS = Proto('FsHlC_SPoolConfigurationReq_l3CenNodeAddress', 'FSHLC_SPOOLCONFIGURATIONREQ_L3CENNODEADDRESS')
local FsHlC_SPoolConfigurationReq_l3CenNodeAddress = FSHLC_SPOOLCONFIGURATIONREQ_L3CENNODEADDRESS.fields
FsHlC_SPoolConfigurationReq_l3CenNodeAddress.l3CenNodeAddress_length = ProtoField.uint32('FsHlC_SPoolConfigurationReq_l3CenNodeAddress.l3CenNodeAddress_length', 'l3CenNodeAddress_length', base.HEX)
FsHlC_SPoolConfigurationReq_l3CenNodeAddress.l3CenNodeAddress_values = ProtoField.uint8('FsHlC_SPoolConfigurationReq_l3CenNodeAddress.l3CenNodeAddress_values', 'l3CenNodeAddress_values', base.HEX)
local FSHLC_SPOOLCONFIGURATIONREQ_POOLS = Proto('FsHlC_SPoolConfigurationReq_pools', 'FSHLC_SPOOLCONFIGURATIONREQ_POOLS')
local FsHlC_SPoolConfigurationReq_pools = FSHLC_SPOOLCONFIGURATIONREQ_POOLS.fields
FsHlC_SPoolConfigurationReq_pools.pools_length = ProtoField.uint32('FsHlC_SPoolConfigurationReq_pools.pools_length', 'pools_length', base.HEX)
FsHlC_SPoolConfigurationReq_pools.poolId = ProtoField.uint32('FsHlC_SPoolConfigurationReq_pools.poolId', 'poolId', base.HEX)
FsHlC_SPoolConfigurationReq_pools.poolType = ProtoField.bytes('FsHlC_SPoolConfigurationReq_pools.poolType', 'poolType', base.HEX)
FsHlC_SPoolConfigurationReq_pools.poolType_padding = ProtoField.bytes('FsHlC_SPoolConfigurationReq_pools.poolType_padding', 'poolType_padding', base.HEX)
local FSHLC_SPOOLCONFIGURATIONREQ_POOLS_DEPLOYABLEUNITS = Proto('FsHlC_SPoolConfigurationReq_pools_deployableUnits', 'FSHLC_SPOOLCONFIGURATIONREQ_POOLS_DEPLOYABLEUNITS')
local FsHlC_SPoolConfigurationReq_pools_deployableUnits = FSHLC_SPOOLCONFIGURATIONREQ_POOLS_DEPLOYABLEUNITS.fields
FsHlC_SPoolConfigurationReq_pools_deployableUnits.deployableUnits_length = ProtoField.uint32('FsHlC_SPoolConfigurationReq_pools_deployableUnits.deployableUnits_length', 'deployableUnits_length', base.HEX)
FsHlC_SPoolConfigurationReq_pools_deployableUnits.nodeAddr = ProtoField.uint16('FsHlC_SPoolConfigurationReq_pools_deployableUnits.nodeAddr', 'nodeAddr', base.HEX)
FsHlC_SPoolConfigurationReq_pools_deployableUnits.nodeType = ProtoField.bytes('FsHlC_SPoolConfigurationReq_pools_deployableUnits.nodeType', 'nodeType', base.HEX)
FsHlC_SPoolConfigurationReq_pools_deployableUnits.nodeType_padding = ProtoField.int8('FsHlC_SPoolConfigurationReq_pools_deployableUnits.nodeType_padding', 'nodeType_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SPOOLCONFIGURATIONREQ, buffer())
  subtree:set_text('FsHlC_SPoolConfigurationReq')
  subtree:add_le (FsHlC_SPoolConfigurationReq.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SPoolConfigurationReq.transactionId, buffer(offset, 2))
  offset = offset + 2
  local FsHlC_SPoolConfigurationReq_l3CenNodeAddressTree = subtree:add (FSHLC_SPOOLCONFIGURATIONREQ_L3CENNODEADDRESS, buffer(offset))
  FsHlC_SPoolConfigurationReq_l3CenNodeAddressTree:set_text('FsHlC_SPoolConfigurationReq_l3CenNodeAddress')
  FsHlC_SPoolConfigurationReq_l3CenNodeAddressTree:add_le (FsHlC_SPoolConfigurationReq_l3CenNodeAddress.l3CenNodeAddress_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SPoolConfigurationReq_l3CenNodeAddressTree:add_le (FsHlC_SPoolConfigurationReq_l3CenNodeAddress.l3CenNodeAddress_values, buffer(offset, ( (msglen >= 4) and 4 or (msglen-offset) )))
  offset = offset + ( (msglen >= 4) and 4 or (msglen-offset) )
  local FsHlC_SPoolConfigurationReq_poolsTree = subtree:add (FSHLC_SPOOLCONFIGURATIONREQ_POOLS, buffer(offset))
  FsHlC_SPoolConfigurationReq_poolsTree:set_text('FsHlC_SPoolConfigurationReq_pools')
  FsHlC_SPoolConfigurationReq_poolsTree:add_le (FsHlC_SPoolConfigurationReq_pools.pools_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SPoolConfigurationReq_poolsTree:add_le (FsHlC_SPoolConfigurationReq_pools.poolId, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SPoolConfigurationReq_poolsTree:add_le (FsHlC_SPoolConfigurationReq_pools.poolType, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SPoolConfigurationReq_poolsTree:add_le (FsHlC_SPoolConfigurationReq_pools.poolType_padding, buffer(offset, 3))
  offset = offset + 3
  local FsHlC_SPoolConfigurationReq_pools_deployableUnitsTree = FsHlC_SPoolConfigurationReq_poolsTree:add (FSHLC_SPOOLCONFIGURATIONREQ_POOLS_DEPLOYABLEUNITS, buffer(offset))
  FsHlC_SPoolConfigurationReq_pools_deployableUnitsTree:set_text('FsHlC_SPoolConfigurationReq_pools_deployableUnits')
  FsHlC_SPoolConfigurationReq_pools_deployableUnitsTree:add_le (FsHlC_SPoolConfigurationReq_pools_deployableUnits.deployableUnits_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SPoolConfigurationReq_pools_deployableUnitsTree:add_le (FsHlC_SPoolConfigurationReq_pools_deployableUnits.nodeAddr, buffer(offset, 2))
  offset = offset + 2
  FsHlC_SPoolConfigurationReq_pools_deployableUnitsTree:add_le (FsHlC_SPoolConfigurationReq_pools_deployableUnits.nodeType, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SPoolConfigurationReq_pools_deployableUnitsTree:add_le (FsHlC_SPoolConfigurationReq_pools_deployableUnits.nodeType_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
