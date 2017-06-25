local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_StartSubcellInd'
end
function module:messageId()
  return 0x0308
end
----------------------------------------------------------------
local PSINTERNAL_STARTSUBCELLIND_T = Proto('PsInternal_StartSubcellInd_t', 'PSINTERNAL_STARTSUBCELLIND_T')
local PsInternal_StartSubcellInd_t = PSINTERNAL_STARTSUBCELLIND_T.fields
PsInternal_StartSubcellInd_t.rrmStartSubcellIndex = ProtoField.uint8('PsInternal_StartSubcellInd_t.rrmStartSubcellIndex', 'rrmStartSubcellIndex', base.HEX)
PsInternal_StartSubcellInd_t.rrmStartSubcellIndex_padding = ProtoField.bytes('PsInternal_StartSubcellInd_t.rrmStartSubcellIndex_padding', 'rrmStartSubcellIndex_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_STARTSUBCELLIND_T, buffer())
  subtree:set_text('PsInternal_StartSubcellInd_t')
  subtree:add_le (PsInternal_StartSubcellInd_t.rrmStartSubcellIndex, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsInternal_StartSubcellInd_t.rrmStartSubcellIndex_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
