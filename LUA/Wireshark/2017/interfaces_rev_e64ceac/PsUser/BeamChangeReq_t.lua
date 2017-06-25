local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_BeamChangeReq'
end
function module:messageId()
  return 0x0972
end
----------------------------------------------------------------
local PSUSER_BEAMCHANGEREQ_T = Proto('PsUser_BeamChangeReq_t', 'PSUSER_BEAMCHANGEREQ_T')
local PsUser_BeamChangeReq_t = PSUSER_BEAMCHANGEREQ_T.fields
PsUser_BeamChangeReq_t.ueFsId = ProtoField.uint16('PsUser_BeamChangeReq_t.ueFsId', 'ueFsId', base.HEX)
PsUser_BeamChangeReq_t.brsAntennaPortIndex = ProtoField.uint8('PsUser_BeamChangeReq_t.brsAntennaPortIndex', 'brsAntennaPortIndex', base.HEX)
PsUser_BeamChangeReq_t.brsAntennaPortIndex_padding = ProtoField.int8('PsUser_BeamChangeReq_t.brsAntennaPortIndex_padding', 'brsAntennaPortIndex_padding', base.DEC)
PsUser_BeamChangeReq_t.psPeerAddress = ProtoField.uint32('PsUser_BeamChangeReq_t.psPeerAddress', 'psPeerAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_BEAMCHANGEREQ_T, buffer())
  subtree:set_text('PsUser_BeamChangeReq_t')
  subtree:add_le (PsUser_BeamChangeReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_BeamChangeReq_t.brsAntennaPortIndex, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_BeamChangeReq_t.brsAntennaPortIndex_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_BeamChangeReq_t.psPeerAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
