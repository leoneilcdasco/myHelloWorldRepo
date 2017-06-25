local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_SSubcellMappingReq'
end
function module:messageId()
  return 0x600a
end
----------------------------------------------------------------
local CPCM_SSUBCELLMAPPINGREQ = Proto('CpCm_SSubcellMappingReq', 'CPCM_SSUBCELLMAPPINGREQ')
local CpCm_SSubcellMappingReq = CPCM_SSUBCELLMAPPINGREQ.fields
CpCm_SSubcellMappingReq.transactionId = ProtoField.uint32('CpCm_SSubcellMappingReq.transactionId', 'transactionId', base.HEX)
local CPCM_SSUBCELLMAPPINGREQ_SUBCELLMAPPING = Proto('CpCm_SSubcellMappingReq_subcellMapping', 'CPCM_SSUBCELLMAPPINGREQ_SUBCELLMAPPING')
local CpCm_SSubcellMappingReq_subcellMapping = CPCM_SSUBCELLMAPPINGREQ_SUBCELLMAPPING.fields
CpCm_SSubcellMappingReq_subcellMapping.subcellMapping_length = ProtoField.uint32('CpCm_SSubcellMappingReq_subcellMapping.subcellMapping_length', 'subcellMapping_length', base.HEX)
CpCm_SSubcellMappingReq_subcellMapping.subcellId = ProtoField.uint32('CpCm_SSubcellMappingReq_subcellMapping.subcellId', 'subcellId', base.DEC)
CpCm_SSubcellMappingReq_subcellMapping.l1pool = ProtoField.uint32('CpCm_SSubcellMappingReq_subcellMapping.l1pool', 'l1pool', base.HEX)
CpCm_SSubcellMappingReq_subcellMapping.l2pool = ProtoField.uint32('CpCm_SSubcellMappingReq_subcellMapping.l2pool', 'l2pool', base.HEX)
CpCm_SSubcellMappingReq_subcellMapping.l3pool = ProtoField.uint32('CpCm_SSubcellMappingReq_subcellMapping.l3pool', 'l3pool', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_SSUBCELLMAPPINGREQ, buffer())
  subtree:set_text('CpCm_SSubcellMappingReq')
  subtree:add_le (CpCm_SSubcellMappingReq.transactionId, buffer(offset, 4))
  offset = offset + 4
  local CpCm_SSubcellMappingReq_subcellMappingTree = subtree:add (CPCM_SSUBCELLMAPPINGREQ_SUBCELLMAPPING, buffer(offset))
  CpCm_SSubcellMappingReq_subcellMappingTree:set_text('CpCm_SSubcellMappingReq_subcellMapping')
  CpCm_SSubcellMappingReq_subcellMappingTree:add_le (CpCm_SSubcellMappingReq_subcellMapping.subcellMapping_length, buffer(offset, 4))
  offset = offset + 4
  CpCm_SSubcellMappingReq_subcellMappingTree:add_le (CpCm_SSubcellMappingReq_subcellMapping.subcellId, buffer(offset, 4))
  offset = offset + 4
  CpCm_SSubcellMappingReq_subcellMappingTree:add_le (CpCm_SSubcellMappingReq_subcellMapping.l1pool, buffer(offset, 4))
  offset = offset + 4
  CpCm_SSubcellMappingReq_subcellMappingTree:add_le (CpCm_SSubcellMappingReq_subcellMapping.l2pool, buffer(offset, 4))
  offset = offset + 4
  CpCm_SSubcellMappingReq_subcellMappingTree:add_le (CpCm_SSubcellMappingReq_subcellMapping.l3pool, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
