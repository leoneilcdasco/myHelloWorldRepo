local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_BeamChangeReq'
end
function module:messageId()
  return 0x031a
end
----------------------------------------------------------------
local PSINTERNAL_BEAMCHANGEREQ_T = Proto('PsInternal_BeamChangeReq_t', 'PSINTERNAL_BEAMCHANGEREQ_T')
local PsInternal_BeamChangeReq_t = PSINTERNAL_BEAMCHANGEREQ_T.fields
local PSINTERNAL_BEAMCHANGEREQ_T_DATA = Proto('PsInternal_BeamChangeReq_t_data', 'PSINTERNAL_BEAMCHANGEREQ_T_DATA')
local PsInternal_BeamChangeReq_t_data = PSINTERNAL_BEAMCHANGEREQ_T_DATA.fields
PsInternal_BeamChangeReq_t_data.ueFsId = ProtoField.uint16('PsInternal_BeamChangeReq_t_data.ueFsId', 'ueFsId', base.HEX)
PsInternal_BeamChangeReq_t_data.brsAntennaPortIndex = ProtoField.uint8('PsInternal_BeamChangeReq_t_data.brsAntennaPortIndex', 'brsAntennaPortIndex', base.HEX)
PsInternal_BeamChangeReq_t_data.brsAntennaPortIndex_padding = ProtoField.int8('PsInternal_BeamChangeReq_t_data.brsAntennaPortIndex_padding', 'brsAntennaPortIndex_padding', base.DEC)
PsInternal_BeamChangeReq_t_data.psPeerAddress = ProtoField.uint32('PsInternal_BeamChangeReq_t_data.psPeerAddress', 'psPeerAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_BEAMCHANGEREQ_T, buffer())
  subtree:set_text('PsInternal_BeamChangeReq_t')
  local PsInternal_BeamChangeReq_t_dataTree = subtree:add (PSINTERNAL_BEAMCHANGEREQ_T_DATA, buffer(offset))
  PsInternal_BeamChangeReq_t_dataTree:set_text('PsInternal_BeamChangeReq_t_data')
  PsInternal_BeamChangeReq_t_dataTree:add_le (PsInternal_BeamChangeReq_t_data.ueFsId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_BeamChangeReq_t_dataTree:add_le (PsInternal_BeamChangeReq_t_data.brsAntennaPortIndex, buffer(offset, 1))
  offset = offset + 1
  PsInternal_BeamChangeReq_t_dataTree:add_le (PsInternal_BeamChangeReq_t_data.brsAntennaPortIndex_padding, buffer(offset, 1))
  offset = offset + 1
  PsInternal_BeamChangeReq_t_dataTree:add_le (PsInternal_BeamChangeReq_t_data.psPeerAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
