local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_SSubCellGroupSetupResp'
end
function module:messageId()
  return 0x600e
end
----------------------------------------------------------------
local CPCM_SSUBCELLGROUPSETUPRESP = Proto('CpCm_SSubCellGroupSetupResp', 'CPCM_SSUBCELLGROUPSETUPRESP')
local CpCm_SSubCellGroupSetupResp = CPCM_SSUBCELLGROUPSETUPRESP.fields
CpCm_SSubCellGroupSetupResp.subcellGroupId = ProtoField.uint8('CpCm_SSubCellGroupSetupResp.subcellGroupId', 'subcellGroupId', base.HEX)
CpCm_SSubCellGroupSetupResp.status = ProtoField.bytes('CpCm_SSubCellGroupSetupResp.status', 'status', base.HEX)
CpCm_SSubCellGroupSetupResp.status_padding = ProtoField.bytes('CpCm_SSubCellGroupSetupResp.status_padding', 'status_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_SSUBCELLGROUPSETUPRESP, buffer())
  subtree:set_text('CpCm_SSubCellGroupSetupResp')
  subtree:add_le (CpCm_SSubCellGroupSetupResp.subcellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (CpCm_SSubCellGroupSetupResp.status, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (CpCm_SSubCellGroupSetupResp.status_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
