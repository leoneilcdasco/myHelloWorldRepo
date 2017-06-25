local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_STrswConfigurationReq'
end
function module:messageId()
  return 0x6006
end
----------------------------------------------------------------
local CPCM_STRSWCONFIGURATIONREQ = Proto('CpCm_STrswConfigurationReq', 'CPCM_STRSWCONFIGURATIONREQ')
local CpCm_STrswConfigurationReq = CPCM_STRSWCONFIGURATIONREQ.fields
local CPCM_STRSWCONFIGURATIONREQ_CPLANEIPADDRESS = Proto('CpCm_STrswConfigurationReq_cplaneIpAddress', 'CPCM_STRSWCONFIGURATIONREQ_CPLANEIPADDRESS')
local CpCm_STrswConfigurationReq_cplaneIpAddress = CPCM_STRSWCONFIGURATIONREQ_CPLANEIPADDRESS.fields
local CPCM_STRSWCONFIGURATIONREQ_CPLANEIPADDRESS_TRANSPORTADDRESS = Proto('CpCm_STrswConfigurationReq_cplaneIpAddress_transportAddress', 'CPCM_STRSWCONFIGURATIONREQ_CPLANEIPADDRESS_TRANSPORTADDRESS')
local CpCm_STrswConfigurationReq_cplaneIpAddress_transportAddress = CPCM_STRSWCONFIGURATIONREQ_CPLANEIPADDRESS_TRANSPORTADDRESS.fields
CpCm_STrswConfigurationReq_cplaneIpAddress_transportAddress.transportAddress_length = ProtoField.uint32('CpCm_STrswConfigurationReq_cplaneIpAddress_transportAddress.transportAddress_length', 'transportAddress_length', base.HEX)
CpCm_STrswConfigurationReq_cplaneIpAddress_transportAddress.transportAddress_values = ProtoField.bytes('CpCm_STrswConfigurationReq_cplaneIpAddress_transportAddress.transportAddress_values', 'transportAddress_values', base.HEX)
local CPCM_STRSWCONFIGURATIONREQ_UPLANEIPADDRESSES = Proto('CpCm_STrswConfigurationReq_uplaneIpAddresses', 'CPCM_STRSWCONFIGURATIONREQ_UPLANEIPADDRESSES')
local CpCm_STrswConfigurationReq_uplaneIpAddresses = CPCM_STRSWCONFIGURATIONREQ_UPLANEIPADDRESSES.fields
CpCm_STrswConfigurationReq_uplaneIpAddresses.uplaneIpAddresses_length = ProtoField.uint32('CpCm_STrswConfigurationReq_uplaneIpAddresses.uplaneIpAddresses_length', 'uplaneIpAddresses_length', base.HEX)
CpCm_STrswConfigurationReq_uplaneIpAddresses.poolId = ProtoField.uint32('CpCm_STrswConfigurationReq_uplaneIpAddresses.poolId', 'poolId', base.HEX)
local CPCM_STRSWCONFIGURATIONREQ_UPLANEIPADDRESSES_IPADDR = Proto('CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr', 'CPCM_STRSWCONFIGURATIONREQ_UPLANEIPADDRESSES_IPADDR')
local CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr = CPCM_STRSWCONFIGURATIONREQ_UPLANEIPADDRESSES_IPADDR.fields
local CPCM_STRSWCONFIGURATIONREQ_UPLANEIPADDRESSES_IPADDR_TRANSPORTADDRESS = Proto('CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr_transportAddress', 'CPCM_STRSWCONFIGURATIONREQ_UPLANEIPADDRESSES_IPADDR_TRANSPORTADDRESS')
local CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr_transportAddress = CPCM_STRSWCONFIGURATIONREQ_UPLANEIPADDRESSES_IPADDR_TRANSPORTADDRESS.fields
CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr_transportAddress.transportAddress_length = ProtoField.uint32('CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr_transportAddress.transportAddress_length', 'transportAddress_length', base.HEX)
CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr_transportAddress.transportAddress_values = ProtoField.bytes('CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr_transportAddress.transportAddress_values', 'transportAddress_values', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_STRSWCONFIGURATIONREQ, buffer())
  subtree:set_text('CpCm_STrswConfigurationReq')
  local CpCm_STrswConfigurationReq_cplaneIpAddressTree = subtree:add (CPCM_STRSWCONFIGURATIONREQ_CPLANEIPADDRESS, buffer(offset))
  CpCm_STrswConfigurationReq_cplaneIpAddressTree:set_text('CpCm_STrswConfigurationReq_cplaneIpAddress')
  local CpCm_STrswConfigurationReq_cplaneIpAddress_transportAddressTree = CpCm_STrswConfigurationReq_cplaneIpAddressTree:add (CPCM_STRSWCONFIGURATIONREQ_CPLANEIPADDRESS_TRANSPORTADDRESS, buffer(offset))
  CpCm_STrswConfigurationReq_cplaneIpAddress_transportAddressTree:set_text('CpCm_STrswConfigurationReq_cplaneIpAddress_transportAddress')
  CpCm_STrswConfigurationReq_cplaneIpAddress_transportAddressTree:add_le (CpCm_STrswConfigurationReq_cplaneIpAddress_transportAddress.transportAddress_length, buffer(offset, 4))
  offset = offset + 4
  CpCm_STrswConfigurationReq_cplaneIpAddress_transportAddressTree:add_le (CpCm_STrswConfigurationReq_cplaneIpAddress_transportAddress.transportAddress_values, buffer(offset, ( (msglen >= 20) and 20 or (msglen-offset) )))
  offset = offset + ( (msglen >= 20) and 20 or (msglen-offset) )
  local CpCm_STrswConfigurationReq_uplaneIpAddressesTree = subtree:add (CPCM_STRSWCONFIGURATIONREQ_UPLANEIPADDRESSES, buffer(offset))
  CpCm_STrswConfigurationReq_uplaneIpAddressesTree:set_text('CpCm_STrswConfigurationReq_uplaneIpAddresses')
  CpCm_STrswConfigurationReq_uplaneIpAddressesTree:add_le (CpCm_STrswConfigurationReq_uplaneIpAddresses.uplaneIpAddresses_length, buffer(offset, 4))
  offset = offset + 4
  CpCm_STrswConfigurationReq_uplaneIpAddressesTree:add_le (CpCm_STrswConfigurationReq_uplaneIpAddresses.poolId, buffer(offset, 4))
  offset = offset + 4
  local CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddrTree = CpCm_STrswConfigurationReq_uplaneIpAddressesTree:add (CPCM_STRSWCONFIGURATIONREQ_UPLANEIPADDRESSES_IPADDR, buffer(offset))
  CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddrTree:set_text('CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr')
  local CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr_transportAddressTree = CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddrTree:add (CPCM_STRSWCONFIGURATIONREQ_UPLANEIPADDRESSES_IPADDR_TRANSPORTADDRESS, buffer(offset))
  CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr_transportAddressTree:set_text('CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr_transportAddress')
  CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr_transportAddressTree:add_le (CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr_transportAddress.transportAddress_length, buffer(offset, 4))
  offset = offset + 4
  CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr_transportAddressTree:add_le (CpCm_STrswConfigurationReq_uplaneIpAddresses_ipAddr_transportAddress.transportAddress_values, buffer(offset, ( (msglen >= 20) and 20 or (msglen-offset) )))
  offset = offset + ( (msglen >= 20) and 20 or (msglen-offset) )
end
----------------------------------------------------------------
return module
