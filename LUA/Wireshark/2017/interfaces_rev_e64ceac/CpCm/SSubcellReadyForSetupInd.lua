local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_SSubcellReadyForSetupInd'
end
function module:messageId()
  return 0x600c
end
----------------------------------------------------------------
local CPCM_SSUBCELLREADYFORSETUPIND = Proto('CpCm_SSubcellReadyForSetupInd', 'CPCM_SSUBCELLREADYFORSETUPIND')
local CpCm_SSubcellReadyForSetupInd = CPCM_SSUBCELLREADYFORSETUPIND.fields
CpCm_SSubcellReadyForSetupInd.subcellId = ProtoField.uint32('CpCm_SSubcellReadyForSetupInd.subcellId', 'subcellId', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_SSUBCELLREADYFORSETUPIND, buffer())
  subtree:set_text('CpCm_SSubcellReadyForSetupInd')
  subtree:add_le (CpCm_SSubcellReadyForSetupInd.subcellId, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
