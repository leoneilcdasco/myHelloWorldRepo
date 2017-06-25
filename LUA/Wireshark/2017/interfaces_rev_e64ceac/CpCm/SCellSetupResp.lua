local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_SCellSetupResp'
end
function module:messageId()
  return 0x6012
end
----------------------------------------------------------------
local CPCM_SCELLSETUPRESP = Proto('CpCm_SCellSetupResp', 'CPCM_SCELLSETUPRESP')
local CpCm_SCellSetupResp = CPCM_SCELLSETUPRESP.fields
CpCm_SCellSetupResp.status = ProtoField.bytes('CpCm_SCellSetupResp.status', 'status', base.HEX)
CpCm_SCellSetupResp.status_padding = ProtoField.bytes('CpCm_SCellSetupResp.status_padding', 'status_padding', base.HEX)
CpCm_SCellSetupResp.ngutrancellId = ProtoField.uint32('CpCm_SCellSetupResp.ngutrancellId', 'ngutrancellId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_SCELLSETUPRESP, buffer())
  subtree:set_text('CpCm_SCellSetupResp')
  subtree:add_le (CpCm_SCellSetupResp.status, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (CpCm_SCellSetupResp.status_padding, buffer(offset, 3))
  offset = offset + 3
  subtree:add_le (CpCm_SCellSetupResp.ngutrancellId, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
