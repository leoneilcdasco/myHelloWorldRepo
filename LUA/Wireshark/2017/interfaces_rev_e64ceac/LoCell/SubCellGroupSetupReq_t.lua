local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoCell_SubCellGroupSetupReq'
end
function module:messageId()
  return 0x0820
end
----------------------------------------------------------------
local LOCELL_SUBCELLGROUPSETUPREQ_T = Proto('LoCell_SubCellGroupSetupReq_t', 'LOCELL_SUBCELLGROUPSETUPREQ_T')
local LoCell_SubCellGroupSetupReq_t = LOCELL_SUBCELLGROUPSETUPREQ_T.fields
LoCell_SubCellGroupSetupReq_t.subcellGroupId = ProtoField.uint8('LoCell_SubCellGroupSetupReq_t.subcellGroupId', 'subcellGroupId', base.HEX)
LoCell_SubCellGroupSetupReq_t.subcellGroupId_padding = ProtoField.bytes('LoCell_SubCellGroupSetupReq_t.subcellGroupId_padding', 'subcellGroupId_padding', base.HEX)
local LOCELL_SUBCELLGROUPSETUPREQ_T_SUBCELLLIST = Proto('LoCell_SubCellGroupSetupReq_t_subcellList', 'LOCELL_SUBCELLGROUPSETUPREQ_T_SUBCELLLIST')
local LoCell_SubCellGroupSetupReq_t_subcellList = LOCELL_SUBCELLGROUPSETUPREQ_T_SUBCELLLIST.fields
LoCell_SubCellGroupSetupReq_t_subcellList.subcellList_offset = ProtoField.uint32('LoCell_SubCellGroupSetupReq_t_subcellList.subcellList_offset', 'subcellList_offset', base.HEX)
LoCell_SubCellGroupSetupReq_t_subcellList.subcellList_length = ProtoField.uint32('LoCell_SubCellGroupSetupReq_t_subcellList.subcellList_length', 'subcellList_length', base.HEX)
LoCell_SubCellGroupSetupReq_t_subcellList.subcellId = ProtoField.uint8('LoCell_SubCellGroupSetupReq_t_subcellList.subcellId', 'subcellId', base.DEC)
LoCell_SubCellGroupSetupReq_t_subcellList.subcellId_padding = ProtoField.bytes('LoCell_SubCellGroupSetupReq_t_subcellList.subcellId_padding', 'subcellId_padding', base.HEX)
LoCell_SubCellGroupSetupReq_t_subcellList.ngutraCellId = ProtoField.uint32('LoCell_SubCellGroupSetupReq_t_subcellList.ngutraCellId', 'ngutraCellId', base.HEX)
LoCell_SubCellGroupSetupReq_t_subcellList.physCellId = ProtoField.uint16('LoCell_SubCellGroupSetupReq_t_subcellList.physCellId', 'physCellId', base.HEX)
LoCell_SubCellGroupSetupReq_t_subcellList.physCellId_padding = ProtoField.bytes('LoCell_SubCellGroupSetupReq_t_subcellList.physCellId_padding', 'physCellId_padding', base.HEX)
local LOCELL_SUBCELLGROUPSETUPREQ_T_BRSANTENNAPORTLIST = Proto('LoCell_SubCellGroupSetupReq_t_brsAntennaPortList', 'LOCELL_SUBCELLGROUPSETUPREQ_T_BRSANTENNAPORTLIST')
local LoCell_SubCellGroupSetupReq_t_brsAntennaPortList = LOCELL_SUBCELLGROUPSETUPREQ_T_BRSANTENNAPORTLIST.fields
LoCell_SubCellGroupSetupReq_t_brsAntennaPortList.brsAntennaPortList_offset = ProtoField.uint32('LoCell_SubCellGroupSetupReq_t_brsAntennaPortList.brsAntennaPortList_offset', 'brsAntennaPortList_offset', base.HEX)
LoCell_SubCellGroupSetupReq_t_brsAntennaPortList.brsAntennaPortList_length = ProtoField.uint32('LoCell_SubCellGroupSetupReq_t_brsAntennaPortList.brsAntennaPortList_length', 'brsAntennaPortList_length', base.HEX)
LoCell_SubCellGroupSetupReq_t_brsAntennaPortList.brsAntennaPortIndex = ProtoField.uint8('LoCell_SubCellGroupSetupReq_t_brsAntennaPortList.brsAntennaPortIndex', 'brsAntennaPortIndex', base.HEX)
LoCell_SubCellGroupSetupReq_t_brsAntennaPortList.brsAntennaPortIndex_padding = ProtoField.bytes('LoCell_SubCellGroupSetupReq_t_brsAntennaPortList.brsAntennaPortIndex_padding', 'brsAntennaPortIndex_padding', base.HEX)
LoCell_SubCellGroupSetupReq_t.dlRlcEvalPeriod = ProtoField.uint8('LoCell_SubCellGroupSetupReq_t.dlRlcEvalPeriod', 'dlRlcEvalPeriod', base.HEX)
LoCell_SubCellGroupSetupReq_t.dlRlcEvalPeriod_padding = ProtoField.bytes('LoCell_SubCellGroupSetupReq_t.dlRlcEvalPeriod_padding', 'dlRlcEvalPeriod_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOCELL_SUBCELLGROUPSETUPREQ_T, buffer())
  subtree:set_text('LoCell_SubCellGroupSetupReq_t')
  subtree:add_le (LoCell_SubCellGroupSetupReq_t.subcellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCell_SubCellGroupSetupReq_t.subcellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
  local LoCell_SubCellGroupSetupReq_t_subcellListTree = subtree:add (LOCELL_SUBCELLGROUPSETUPREQ_T_SUBCELLLIST, buffer(offset))
  LoCell_SubCellGroupSetupReq_t_subcellListTree:set_text('LoCell_SubCellGroupSetupReq_t_subcellList')
  LoCell_SubCellGroupSetupReq_t_subcellListTree:add_le (LoCell_SubCellGroupSetupReq_t_subcellList.subcellList_offset, buffer(offset, 4))
  offset = offset + 4
  LoCell_SubCellGroupSetupReq_t_subcellListTree:add_le (LoCell_SubCellGroupSetupReq_t_subcellList.subcellList_length, buffer(offset, 4))
  offset = offset + 4
  LoCell_SubCellGroupSetupReq_t_subcellListTree:add_le (LoCell_SubCellGroupSetupReq_t_subcellList.subcellId, buffer(offset, 1))
  offset = offset + 1
  LoCell_SubCellGroupSetupReq_t_subcellListTree:add_le (LoCell_SubCellGroupSetupReq_t_subcellList.subcellId_padding, buffer(offset, 3))
  offset = offset + 3
  LoCell_SubCellGroupSetupReq_t_subcellListTree:add_le (LoCell_SubCellGroupSetupReq_t_subcellList.ngutraCellId, buffer(offset, 4))
  offset = offset + 4
  LoCell_SubCellGroupSetupReq_t_subcellListTree:add_le (LoCell_SubCellGroupSetupReq_t_subcellList.physCellId, buffer(offset, 2))
  offset = offset + 2
  LoCell_SubCellGroupSetupReq_t_subcellListTree:add_le (LoCell_SubCellGroupSetupReq_t_subcellList.physCellId_padding, buffer(offset, 2))
  offset = offset + 2
  local LoCell_SubCellGroupSetupReq_t_brsAntennaPortListTree = subtree:add (LOCELL_SUBCELLGROUPSETUPREQ_T_BRSANTENNAPORTLIST, buffer(offset))
  LoCell_SubCellGroupSetupReq_t_brsAntennaPortListTree:set_text('LoCell_SubCellGroupSetupReq_t_brsAntennaPortList')
  LoCell_SubCellGroupSetupReq_t_brsAntennaPortListTree:add_le (LoCell_SubCellGroupSetupReq_t_brsAntennaPortList.brsAntennaPortList_offset, buffer(offset, 4))
  offset = offset + 4
  LoCell_SubCellGroupSetupReq_t_brsAntennaPortListTree:add_le (LoCell_SubCellGroupSetupReq_t_brsAntennaPortList.brsAntennaPortList_length, buffer(offset, 4))
  offset = offset + 4
  LoCell_SubCellGroupSetupReq_t_brsAntennaPortListTree:add_le (LoCell_SubCellGroupSetupReq_t_brsAntennaPortList.brsAntennaPortIndex, buffer(offset, 1))
  offset = offset + 1
  LoCell_SubCellGroupSetupReq_t_brsAntennaPortListTree:add_le (LoCell_SubCellGroupSetupReq_t_brsAntennaPortList.brsAntennaPortIndex_padding, buffer(offset, 3))
  offset = offset + 3
  subtree:add_le (LoCell_SubCellGroupSetupReq_t.dlRlcEvalPeriod, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCell_SubCellGroupSetupReq_t.dlRlcEvalPeriod_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
