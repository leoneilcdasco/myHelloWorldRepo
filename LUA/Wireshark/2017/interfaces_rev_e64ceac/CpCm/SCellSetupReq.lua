local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_SCellSetupReq'
end
function module:messageId()
  return 0x6011
end
----------------------------------------------------------------
local CPCM_SCELLSETUPREQ = Proto('CpCm_SCellSetupReq', 'CPCM_SCELLSETUPREQ')
local CpCm_SCellSetupReq = CPCM_SCELLSETUPREQ.fields
CpCm_SCellSetupReq.ngutrancellId = ProtoField.uint32('CpCm_SCellSetupReq.ngutrancellId', 'ngutrancellId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_SCELLSETUPREQ, buffer())
  subtree:set_text('CpCm_SCellSetupReq')
  subtree:add_le (CpCm_SCellSetupReq.ngutrancellId, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
