local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_PuschReceiveRespLo'
end
function module:messageId()
  return 0x0208
end
----------------------------------------------------------------
local ULDATA_PUSCHRECEIVERESPLO_T = Proto('UlData_PuschReceiveRespLo_t', 'ULDATA_PUSCHRECEIVERESPLO_T')
local UlData_PuschReceiveRespLo_t = ULDATA_PUSCHRECEIVERESPLO_T.fields
UlData_PuschReceiveRespLo_t.sfn = ProtoField.uint16('UlData_PuschReceiveRespLo_t.sfn', 'sfn', base.DEC)
UlData_PuschReceiveRespLo_t.subframeNumber = ProtoField.uint8('UlData_PuschReceiveRespLo_t.subframeNumber', 'subframeNumber', base.DEC)
UlData_PuschReceiveRespLo_t.subcellId = ProtoField.uint8('UlData_PuschReceiveRespLo_t.subcellId', 'subcellId', base.DEC)
UlData_PuschReceiveRespLo_t.rnti = ProtoField.uint16('UlData_PuschReceiveRespLo_t.rnti', 'rnti', base.HEX)
UlData_PuschReceiveRespLo_t.rnti_padding = ProtoField.bytes('UlData_PuschReceiveRespLo_t.rnti_padding', 'rnti_padding', base.HEX)
UlData_PuschReceiveRespLo_t.tbSize = ProtoField.uint32('UlData_PuschReceiveRespLo_t.tbSize', 'tbSize', base.HEX)
local ULDATA_PUSCHRECEIVERESPLO_T_DATA = Proto('UlData_PuschReceiveRespLo_t_data', 'ULDATA_PUSCHRECEIVERESPLO_T_DATA')
local UlData_PuschReceiveRespLo_t_data = ULDATA_PUSCHRECEIVERESPLO_T_DATA.fields
UlData_PuschReceiveRespLo_t_data.data_offset = ProtoField.uint32('UlData_PuschReceiveRespLo_t_data.data_offset', 'data_offset', base.HEX)
UlData_PuschReceiveRespLo_t_data.data_length = ProtoField.uint32('UlData_PuschReceiveRespLo_t_data.data_length', 'data_length', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_PUSCHRECEIVERESPLO_T, buffer())
  subtree:set_text('UlData_PuschReceiveRespLo_t')
  subtree:add_le (UlData_PuschReceiveRespLo_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_PuschReceiveRespLo_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveRespLo_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveRespLo_t.rnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_PuschReceiveRespLo_t.rnti_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_PuschReceiveRespLo_t.tbSize, buffer(offset, 4))
  offset = offset + 4
  local UlData_PuschReceiveRespLo_t_dataTree = subtree:add (ULDATA_PUSCHRECEIVERESPLO_T_DATA, buffer(offset))
  UlData_PuschReceiveRespLo_t_dataTree:set_text('UlData_PuschReceiveRespLo_t_data')
  UlData_PuschReceiveRespLo_t_dataTree:add_le (UlData_PuschReceiveRespLo_t_data.data_offset, buffer(offset, 4))
  offset = offset + 4
  UlData_PuschReceiveRespLo_t_dataTree:add_le (UlData_PuschReceiveRespLo_t_data.data_length, buffer(offset, 4))
  offset = offset + 4
  local tb_size = buffer():len() - offset
  Dissector.get("5g_ul_mac"):call(buffer(offset, tb_size):tvb(), pinfo, subtree)
end
----------------------------------------------------------------
return module
