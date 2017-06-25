local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_DlToUlBeamChangeInd'
end
function module:messageId()
  return 0x0318
end
----------------------------------------------------------------
local PSINTERNAL_DLTOULBEAMCHANGEIND_T = Proto('PsInternal_DlToUlBeamChangeInd_t', 'PSINTERNAL_DLTOULBEAMCHANGEIND_T')
local PsInternal_DlToUlBeamChangeInd_t = PSINTERNAL_DLTOULBEAMCHANGEIND_T.fields
PsInternal_DlToUlBeamChangeInd_t.indType = ProtoField.bytes('PsInternal_DlToUlBeamChangeInd_t.indType', 'indType', base.HEX)
PsInternal_DlToUlBeamChangeInd_t.indType_padding = ProtoField.int8('PsInternal_DlToUlBeamChangeInd_t.indType_padding', 'indType_padding', base.DEC)
PsInternal_DlToUlBeamChangeInd_t.rnti = ProtoField.uint16('PsInternal_DlToUlBeamChangeInd_t.rnti', 'rnti', base.HEX)
PsInternal_DlToUlBeamChangeInd_t.beamId = ProtoField.uint8('PsInternal_DlToUlBeamChangeInd_t.beamId', 'beamId', base.HEX)
PsInternal_DlToUlBeamChangeInd_t.beamId_padding = ProtoField.bytes('PsInternal_DlToUlBeamChangeInd_t.beamId_padding', 'beamId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_DLTOULBEAMCHANGEIND_T, buffer())
  subtree:set_text('PsInternal_DlToUlBeamChangeInd_t')
  subtree:add_le (PsInternal_DlToUlBeamChangeInd_t.indType, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsInternal_DlToUlBeamChangeInd_t.indType_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsInternal_DlToUlBeamChangeInd_t.rnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsInternal_DlToUlBeamChangeInd_t.beamId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsInternal_DlToUlBeamChangeInd_t.beamId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
