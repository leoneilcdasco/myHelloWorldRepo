local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_BeamStateInd'
end
function module:messageId()
  return 0x0971
end
----------------------------------------------------------------
local PSUSER_BEAMSTATEIND_T = Proto('PsUser_BeamStateInd_t', 'PSUSER_BEAMSTATEIND_T')
local PsUser_BeamStateInd_t = PSUSER_BEAMSTATEIND_T.fields
PsUser_BeamStateInd_t.ueFsId = ProtoField.uint16('PsUser_BeamStateInd_t.ueFsId', 'ueFsId', base.HEX)
PsUser_BeamStateInd_t.brsAntennaPortIndex = ProtoField.uint8('PsUser_BeamStateInd_t.brsAntennaPortIndex', 'brsAntennaPortIndex', base.HEX)
PsUser_BeamStateInd_t.brsAntennaPortIndex_padding = ProtoField.int8('PsUser_BeamStateInd_t.brsAntennaPortIndex_padding', 'brsAntennaPortIndex_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_BEAMSTATEIND_T, buffer())
  subtree:set_text('PsUser_BeamStateInd_t')
  subtree:add_le (PsUser_BeamStateInd_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_BeamStateInd_t.brsAntennaPortIndex, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_BeamStateInd_t.brsAntennaPortIndex_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
