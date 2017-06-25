local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_BeamStateInd'
end
function module:messageId()
  return 0x0319
end
----------------------------------------------------------------
local PSINTERNAL_BEAMSTATEIND_T = Proto('PsInternal_BeamStateInd_t', 'PSINTERNAL_BEAMSTATEIND_T')
local PsInternal_BeamStateInd_t = PSINTERNAL_BEAMSTATEIND_T.fields
local PSINTERNAL_BEAMSTATEIND_T_DATA = Proto('PsInternal_BeamStateInd_t_data', 'PSINTERNAL_BEAMSTATEIND_T_DATA')
local PsInternal_BeamStateInd_t_data = PSINTERNAL_BEAMSTATEIND_T_DATA.fields
PsInternal_BeamStateInd_t_data.ueFsId = ProtoField.uint16('PsInternal_BeamStateInd_t_data.ueFsId', 'ueFsId', base.HEX)
PsInternal_BeamStateInd_t_data.brsAntennaPortIndex = ProtoField.uint8('PsInternal_BeamStateInd_t_data.brsAntennaPortIndex', 'brsAntennaPortIndex', base.HEX)
PsInternal_BeamStateInd_t_data.brsAntennaPortIndex_padding = ProtoField.int8('PsInternal_BeamStateInd_t_data.brsAntennaPortIndex_padding', 'brsAntennaPortIndex_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_BEAMSTATEIND_T, buffer())
  subtree:set_text('PsInternal_BeamStateInd_t')
  local PsInternal_BeamStateInd_t_dataTree = subtree:add (PSINTERNAL_BEAMSTATEIND_T_DATA, buffer(offset))
  PsInternal_BeamStateInd_t_dataTree:set_text('PsInternal_BeamStateInd_t_data')
  PsInternal_BeamStateInd_t_dataTree:add_le (PsInternal_BeamStateInd_t_data.ueFsId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_BeamStateInd_t_dataTree:add_le (PsInternal_BeamStateInd_t_data.brsAntennaPortIndex, buffer(offset, 1))
  offset = offset + 1
  PsInternal_BeamStateInd_t_dataTree:add_le (PsInternal_BeamStateInd_t_data.brsAntennaPortIndex_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
