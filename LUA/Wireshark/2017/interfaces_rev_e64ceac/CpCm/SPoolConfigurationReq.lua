local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_SPoolConfigurationReq'
end
function module:messageId()
  return 0x6008
end
----------------------------------------------------------------
local CPCM_SPOOLCONFIGURATIONREQ = Proto('CpCm_SPoolConfigurationReq', 'CPCM_SPOOLCONFIGURATIONREQ')
local CpCm_SPoolConfigurationReq = CPCM_SPOOLCONFIGURATIONREQ.fields
CpCm_SPoolConfigurationReq.transactionId = ProtoField.uint32('CpCm_SPoolConfigurationReq.transactionId', 'transactionId', base.HEX)
local CPCM_SPOOLCONFIGURATIONREQ_POOLS = Proto('CpCm_SPoolConfigurationReq_pools', 'CPCM_SPOOLCONFIGURATIONREQ_POOLS')
local CpCm_SPoolConfigurationReq_pools = CPCM_SPOOLCONFIGURATIONREQ_POOLS.fields
CpCm_SPoolConfigurationReq_pools.pools_length = ProtoField.uint32('CpCm_SPoolConfigurationReq_pools.pools_length', 'pools_length', base.HEX)
CpCm_SPoolConfigurationReq_pools.poolId = ProtoField.uint32('CpCm_SPoolConfigurationReq_pools.poolId', 'poolId', base.HEX)
CpCm_SPoolConfigurationReq_pools.poolType = ProtoField.bytes('CpCm_SPoolConfigurationReq_pools.poolType', 'poolType', base.HEX)
CpCm_SPoolConfigurationReq_pools.poolType_padding = ProtoField.bytes('CpCm_SPoolConfigurationReq_pools.poolType_padding', 'poolType_padding', base.HEX)
local CPCM_SPOOLCONFIGURATIONREQ_POOLS_DEPLOYABLEUNITS = Proto('CpCm_SPoolConfigurationReq_pools_deployableUnits', 'CPCM_SPOOLCONFIGURATIONREQ_POOLS_DEPLOYABLEUNITS')
local CpCm_SPoolConfigurationReq_pools_deployableUnits = CPCM_SPOOLCONFIGURATIONREQ_POOLS_DEPLOYABLEUNITS.fields
CpCm_SPoolConfigurationReq_pools_deployableUnits.deployableUnits_length = ProtoField.uint32('CpCm_SPoolConfigurationReq_pools_deployableUnits.deployableUnits_length', 'deployableUnits_length', base.HEX)
CpCm_SPoolConfigurationReq_pools_deployableUnits.nodeAddr = ProtoField.uint16('CpCm_SPoolConfigurationReq_pools_deployableUnits.nodeAddr', 'nodeAddr', base.HEX)
CpCm_SPoolConfigurationReq_pools_deployableUnits.nodeType = ProtoField.bytes('CpCm_SPoolConfigurationReq_pools_deployableUnits.nodeType', 'nodeType', base.HEX)
CpCm_SPoolConfigurationReq_pools_deployableUnits.nodeType_padding = ProtoField.int8('CpCm_SPoolConfigurationReq_pools_deployableUnits.nodeType_padding', 'nodeType_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_SPOOLCONFIGURATIONREQ, buffer())
  subtree:set_text('CpCm_SPoolConfigurationReq')
  subtree:add_le (CpCm_SPoolConfigurationReq.transactionId, buffer(offset, 4))
  offset = offset + 4
  local CpCm_SPoolConfigurationReq_poolsTree = subtree:add (CPCM_SPOOLCONFIGURATIONREQ_POOLS, buffer(offset))
  CpCm_SPoolConfigurationReq_poolsTree:set_text('CpCm_SPoolConfigurationReq_pools')
  CpCm_SPoolConfigurationReq_poolsTree:add_le (CpCm_SPoolConfigurationReq_pools.pools_length, buffer(offset, 4))
  offset = offset + 4
  CpCm_SPoolConfigurationReq_poolsTree:add_le (CpCm_SPoolConfigurationReq_pools.poolId, buffer(offset, 4))
  offset = offset + 4
  CpCm_SPoolConfigurationReq_poolsTree:add_le (CpCm_SPoolConfigurationReq_pools.poolType, buffer(offset, 1))
  offset = offset + 1
  CpCm_SPoolConfigurationReq_poolsTree:add_le (CpCm_SPoolConfigurationReq_pools.poolType_padding, buffer(offset, 3))
  offset = offset + 3
  local CpCm_SPoolConfigurationReq_pools_deployableUnitsTree = CpCm_SPoolConfigurationReq_poolsTree:add (CPCM_SPOOLCONFIGURATIONREQ_POOLS_DEPLOYABLEUNITS, buffer(offset))
  CpCm_SPoolConfigurationReq_pools_deployableUnitsTree:set_text('CpCm_SPoolConfigurationReq_pools_deployableUnits')
  CpCm_SPoolConfigurationReq_pools_deployableUnitsTree:add_le (CpCm_SPoolConfigurationReq_pools_deployableUnits.deployableUnits_length, buffer(offset, 4))
  offset = offset + 4
  CpCm_SPoolConfigurationReq_pools_deployableUnitsTree:add_le (CpCm_SPoolConfigurationReq_pools_deployableUnits.nodeAddr, buffer(offset, 2))
  offset = offset + 2
  CpCm_SPoolConfigurationReq_pools_deployableUnitsTree:add_le (CpCm_SPoolConfigurationReq_pools_deployableUnits.nodeType, buffer(offset, 1))
  offset = offset + 1
  CpCm_SPoolConfigurationReq_pools_deployableUnitsTree:add_le (CpCm_SPoolConfigurationReq_pools_deployableUnits.nodeType_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
