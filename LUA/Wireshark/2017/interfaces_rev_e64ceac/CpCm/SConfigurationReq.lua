local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_SConfigurationReq'
end
function module:messageId()
  return 0x6001
end
----------------------------------------------------------------
local CPCM_SCONFIGURATIONREQ = Proto('CpCm_SConfigurationReq', 'CPCM_SCONFIGURATIONREQ')
local CpCm_SConfigurationReq = CPCM_SCONFIGURATIONREQ.fields
CpCm_SConfigurationReq.cpcmIndicationAddress = ProtoField.uint32('CpCm_SConfigurationReq.cpcmIndicationAddress', 'cpcmIndicationAddress', base.HEX)
CpCm_SConfigurationReq.cpcmFailureIndicationAddress = ProtoField.uint32('CpCm_SConfigurationReq.cpcmFailureIndicationAddress', 'cpcmFailureIndicationAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_SCONFIGURATIONREQ, buffer())
  subtree:set_text('CpCm_SConfigurationReq')
  subtree:add_le (CpCm_SConfigurationReq.cpcmIndicationAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (CpCm_SConfigurationReq.cpcmFailureIndicationAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
