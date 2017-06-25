local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'DlCell_SetupReq'
end
function module:messageId()
  return 0x0100
end
----------------------------------------------------------------
local DLCELL_SETUPREQ_T = Proto('DlCell_SetupReq_t', 'DLCELL_SETUPREQ_T')
local DlCell_SetupReq_t = DLCELL_SETUPREQ_T.fields
DlCell_SetupReq_t.subcellId = ProtoField.uint8('DlCell_SetupReq_t.subcellId', 'subcellId', base.DEC)
DlCell_SetupReq_t.subcellId_padding = ProtoField.int8('DlCell_SetupReq_t.subcellId_padding', 'subcellId_padding', base.DEC)
DlCell_SetupReq_t.physCellId = ProtoField.uint16('DlCell_SetupReq_t.physCellId', 'physCellId', base.HEX)
DlCell_SetupReq_t.subcellBfGroupId = ProtoField.uint8('DlCell_SetupReq_t.subcellBfGroupId', 'subcellBfGroupId', base.HEX)
DlCell_SetupReq_t.ccPosId = ProtoField.uint8('DlCell_SetupReq_t.ccPosId', 'ccPosId', base.HEX)
DlCell_SetupReq_t.brsTransmissionPeriod = ProtoField.bytes('DlCell_SetupReq_t.brsTransmissionPeriod', 'brsTransmissionPeriod', base.HEX)
DlCell_SetupReq_t.tEpbch = ProtoField.bytes('DlCell_SetupReq_t.tEpbch', 'tEpbch', base.HEX)
DlCell_SetupReq_t.numOfBrsAntPorts = ProtoField.bytes('DlCell_SetupReq_t.numOfBrsAntPorts', 'numOfBrsAntPorts', base.HEX)
DlCell_SetupReq_t.numOfBrsAntPorts_padding = ProtoField.int8('DlCell_SetupReq_t.numOfBrsAntPorts_padding', 'numOfBrsAntPorts_padding', base.DEC)
DlCell_SetupReq_t.beamReferenceSignalPower = ProtoField.int16('DlCell_SetupReq_t.beamReferenceSignalPower', 'beamReferenceSignalPower', base.DEC)
DlCell_SetupReq_t.pssSssEssxPbchPower = ProtoField.int16('DlCell_SetupReq_t.pssSssEssxPbchPower', 'pssSssEssxPbchPower', base.DEC)
DlCell_SetupReq_t.pssSssEssxPbchPower_padding = ProtoField.bytes('DlCell_SetupReq_t.pssSssEssxPbchPower_padding', 'pssSssEssxPbchPower_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (DLCELL_SETUPREQ_T, buffer())
  subtree:set_text('DlCell_SetupReq_t')
  subtree:add_le (DlCell_SetupReq_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlCell_SetupReq_t.subcellId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlCell_SetupReq_t.physCellId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlCell_SetupReq_t.subcellBfGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlCell_SetupReq_t.ccPosId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlCell_SetupReq_t.brsTransmissionPeriod, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlCell_SetupReq_t.tEpbch, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlCell_SetupReq_t.numOfBrsAntPorts, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlCell_SetupReq_t.numOfBrsAntPorts_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlCell_SetupReq_t.beamReferenceSignalPower, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlCell_SetupReq_t.pssSssEssxPbchPower, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlCell_SetupReq_t.pssSssEssxPbchPower_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
