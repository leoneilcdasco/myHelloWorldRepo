local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_EoInitInd'
end
function module:messageId()
  return 0x0304
end
----------------------------------------------------------------
local PSINTERNAL_EOINITIND_T = Proto('PsInternal_EoInitInd_t', 'PSINTERNAL_EOINITIND_T')
local PsInternal_EoInitInd_t = PSINTERNAL_EOINITIND_T.fields
PsInternal_EoInitInd_t.eoId = ProtoField.uint32('PsInternal_EoInitInd_t.eoId', 'eoId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_EOINITIND_T, buffer())
  subtree:set_text('PsInternal_EoInitInd_t')
  subtree:add_le (PsInternal_EoInitInd_t.eoId, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
