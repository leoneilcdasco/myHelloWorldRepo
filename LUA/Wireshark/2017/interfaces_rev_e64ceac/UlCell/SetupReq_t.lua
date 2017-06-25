local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlCell_SetupReq'
end
function module:messageId()
  return 0x0200
end
----------------------------------------------------------------
local ULCELL_SETUPREQ_T = Proto('UlCell_SetupReq_t', 'ULCELL_SETUPREQ_T')
local UlCell_SetupReq_t = ULCELL_SETUPREQ_T.fields
UlCell_SetupReq_t.subcellId = ProtoField.uint8('UlCell_SetupReq_t.subcellId', 'subcellId', base.DEC)
UlCell_SetupReq_t.subcellId_padding = ProtoField.int8('UlCell_SetupReq_t.subcellId_padding', 'subcellId_padding', base.DEC)
UlCell_SetupReq_t.physCellId = ProtoField.uint16('UlCell_SetupReq_t.physCellId', 'physCellId', base.HEX)
UlCell_SetupReq_t.subcellBfGroupId = ProtoField.uint8('UlCell_SetupReq_t.subcellBfGroupId', 'subcellBfGroupId', base.HEX)
UlCell_SetupReq_t.ccPosId = ProtoField.uint8('UlCell_SetupReq_t.ccPosId', 'ccPosId', base.HEX)
UlCell_SetupReq_t.prachuRoot = ProtoField.uint8('UlCell_SetupReq_t.prachuRoot', 'prachuRoot', base.HEX)
UlCell_SetupReq_t.prachConfigIndex = ProtoField.uint8('UlCell_SetupReq_t.prachConfigIndex', 'prachConfigIndex', base.HEX)
UlCell_SetupReq_t.preambleFormat = ProtoField.uint8('UlCell_SetupReq_t.preambleFormat', 'preambleFormat', base.HEX)
UlCell_SetupReq_t.preambleFormat_padding = ProtoField.int8('UlCell_SetupReq_t.preambleFormat_padding', 'preambleFormat_padding', base.DEC)
UlCell_SetupReq_t.dtxThresholdPrach = ProtoField.int16('UlCell_SetupReq_t.dtxThresholdPrach', 'dtxThresholdPrach', base.DEC)
UlCell_SetupReq_t.rxScalingFactor = ProtoField.int16('UlCell_SetupReq_t.rxScalingFactor', 'rxScalingFactor', base.DEC)
UlCell_SetupReq_t.rxScalingFactor_padding = ProtoField.bytes('UlCell_SetupReq_t.rxScalingFactor_padding', 'rxScalingFactor_padding', base.HEX)
UlCell_SetupReq_t.pneRbgThreshold = ProtoField.bytes('UlCell_SetupReq_t.pneRbgThreshold', 'pneRbgThreshold', base.HEX)
UlCell_SetupReq_t.dtxThresholdPuschSingleLayerList = ProtoField.bytes('UlCell_SetupReq_t.dtxThresholdPuschSingleLayerList', 'dtxThresholdPuschSingleLayerList', base.HEX)
UlCell_SetupReq_t.dtxThresholdPuschTwoLayerList = ProtoField.bytes('UlCell_SetupReq_t.dtxThresholdPuschTwoLayerList', 'dtxThresholdPuschTwoLayerList', base.HEX)
UlCell_SetupReq_t.dtxThresholdPucchSingleLayerList = ProtoField.bytes('UlCell_SetupReq_t.dtxThresholdPucchSingleLayerList', 'dtxThresholdPucchSingleLayerList', base.HEX)
UlCell_SetupReq_t.dtxThresholdPucchTwoLayerList = ProtoField.bytes('UlCell_SetupReq_t.dtxThresholdPucchTwoLayerList', 'dtxThresholdPucchTwoLayerList', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULCELL_SETUPREQ_T, buffer())
  subtree:set_text('UlCell_SetupReq_t')
  subtree:add_le (UlCell_SetupReq_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlCell_SetupReq_t.subcellId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlCell_SetupReq_t.physCellId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlCell_SetupReq_t.subcellBfGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlCell_SetupReq_t.ccPosId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlCell_SetupReq_t.prachuRoot, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlCell_SetupReq_t.prachConfigIndex, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlCell_SetupReq_t.preambleFormat, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlCell_SetupReq_t.preambleFormat_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlCell_SetupReq_t.dtxThresholdPrach, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlCell_SetupReq_t.rxScalingFactor, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlCell_SetupReq_t.rxScalingFactor_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlCell_SetupReq_t.pneRbgThreshold, buffer(offset, ( (msglen >= 16) and 16 or (msglen-offset) )))
  offset = offset + ( (msglen >= 16) and 16 or (msglen-offset) )
  subtree:add_le (UlCell_SetupReq_t.dtxThresholdPuschSingleLayerList, buffer(offset, ( (msglen >= 52) and 52 or (msglen-offset) )))
  offset = offset + ( (msglen >= 52) and 52 or (msglen-offset) )
  subtree:add_le (UlCell_SetupReq_t.dtxThresholdPuschTwoLayerList, buffer(offset, ( (msglen >= 52) and 52 or (msglen-offset) )))
  offset = offset + ( (msglen >= 52) and 52 or (msglen-offset) )
  subtree:add_le (UlCell_SetupReq_t.dtxThresholdPucchSingleLayerList, buffer(offset, ( (msglen >= 44) and 44 or (msglen-offset) )))
  offset = offset + ( (msglen >= 44) and 44 or (msglen-offset) )
  subtree:add_le (UlCell_SetupReq_t.dtxThresholdPucchTwoLayerList, buffer(offset, ( (msglen >= 44) and 44 or (msglen-offset) )))
  offset = offset + ( (msglen >= 44) and 44 or (msglen-offset) )
end
----------------------------------------------------------------
return module
