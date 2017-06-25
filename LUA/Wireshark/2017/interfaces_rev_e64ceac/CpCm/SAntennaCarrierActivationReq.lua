local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_SAntennaCarrierActivationReq'
end
function module:messageId()
  return 0x600f
end
----------------------------------------------------------------
local CPCM_SANTENNACARRIERACTIVATIONREQ = Proto('CpCm_SAntennaCarrierActivationReq', 'CPCM_SANTENNACARRIERACTIVATIONREQ')
local CpCm_SAntennaCarrierActivationReq = CPCM_SANTENNACARRIERACTIVATIONREQ.fields
CpCm_SAntennaCarrierActivationReq.subcellGroupId = ProtoField.uint8('CpCm_SAntennaCarrierActivationReq.subcellGroupId', 'subcellGroupId', base.HEX)
CpCm_SAntennaCarrierActivationReq.subcellGroupId_padding = ProtoField.bytes('CpCm_SAntennaCarrierActivationReq.subcellGroupId_padding', 'subcellGroupId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_SANTENNACARRIERACTIVATIONREQ, buffer())
  subtree:set_text('CpCm_SAntennaCarrierActivationReq')
  subtree:add_le (CpCm_SAntennaCarrierActivationReq.subcellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (CpCm_SAntennaCarrierActivationReq.subcellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
