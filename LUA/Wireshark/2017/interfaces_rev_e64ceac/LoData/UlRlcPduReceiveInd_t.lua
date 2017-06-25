local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoData_UlRlcPduReceiveInd'
end
function module:messageId()
  return 0x0401
end
----------------------------------------------------------------
local LODATA_ULRLCPDURECEIVEIND_T = Proto('LoData_UlRlcPduReceiveInd_t', 'LODATA_ULRLCPDURECEIVEIND_T')
local LoData_UlRlcPduReceiveInd_t = LODATA_ULRLCPDURECEIVEIND_T.fields
local LODATA_ULRLCPDURECEIVEIND_T_DATA = Proto('LoData_UlRlcPduReceiveInd_t_data', 'LODATA_ULRLCPDURECEIVEIND_T_DATA')
local LoData_UlRlcPduReceiveInd_t_data = LODATA_ULRLCPDURECEIVEIND_T_DATA.fields
LoData_UlRlcPduReceiveInd_t_data.data_offset = ProtoField.uint32('LoData_UlRlcPduReceiveInd_t_data.data_offset', 'data_offset', base.HEX)
LoData_UlRlcPduReceiveInd_t_data.data_length = ProtoField.uint32('LoData_UlRlcPduReceiveInd_t_data.data_length', 'data_length', base.HEX)
LoData_UlRlcPduReceiveInd_t_data.bearerIndex = ProtoField.uint16('LoData_UlRlcPduReceiveInd_t_data.bearerIndex', 'bearerIndex', base.HEX)
LoData_UlRlcPduReceiveInd_t_data.bearerIndex_padding = ProtoField.bytes('LoData_UlRlcPduReceiveInd_t_data.bearerIndex_padding', 'bearerIndex_padding', base.HEX)
local LODATA_ULRLCPDURECEIVEIND_T_DATA_DATA = Proto('LoData_UlRlcPduReceiveInd_t_data_data', 'LODATA_ULRLCPDURECEIVEIND_T_DATA_DATA')
local LoData_UlRlcPduReceiveInd_t_data_data = LODATA_ULRLCPDURECEIVEIND_T_DATA_DATA.fields
LoData_UlRlcPduReceiveInd_t_data_data.data_offset = ProtoField.uint32('LoData_UlRlcPduReceiveInd_t_data_data.data_offset', 'data_offset', base.HEX)
LoData_UlRlcPduReceiveInd_t_data_data.data_length = ProtoField.uint32('LoData_UlRlcPduReceiveInd_t_data_data.data_length', 'data_length', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LODATA_ULRLCPDURECEIVEIND_T, buffer())
  subtree:set_text('LoData_UlRlcPduReceiveInd_t')
  local LoData_UlRlcPduReceiveInd_t_dataTree = subtree:add (LODATA_ULRLCPDURECEIVEIND_T_DATA, buffer(offset))
  LoData_UlRlcPduReceiveInd_t_dataTree:set_text('LoData_UlRlcPduReceiveInd_t_data')
  LoData_UlRlcPduReceiveInd_t_dataTree:add_le (LoData_UlRlcPduReceiveInd_t_data.data_offset, buffer(offset, 4))
  offset = offset + 4
  LoData_UlRlcPduReceiveInd_t_dataTree:add_le (LoData_UlRlcPduReceiveInd_t_data.data_length, buffer(offset, 4))
  offset = offset + 4
  LoData_UlRlcPduReceiveInd_t_dataTree:add_le (LoData_UlRlcPduReceiveInd_t_data.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  LoData_UlRlcPduReceiveInd_t_dataTree:add_le (LoData_UlRlcPduReceiveInd_t_data.bearerIndex_padding, buffer(offset, 2))
  offset = offset + 2
  local LoData_UlRlcPduReceiveInd_t_data_dataTree = LoData_UlRlcPduReceiveInd_t_dataTree:add (LODATA_ULRLCPDURECEIVEIND_T_DATA_DATA, buffer(offset))
  LoData_UlRlcPduReceiveInd_t_data_dataTree:set_text('LoData_UlRlcPduReceiveInd_t_data_data')
  LoData_UlRlcPduReceiveInd_t_data_dataTree:add_le (LoData_UlRlcPduReceiveInd_t_data_data.data_offset, buffer(offset, 4))
  offset = offset + 4
  LoData_UlRlcPduReceiveInd_t_data_dataTree:add_le (LoData_UlRlcPduReceiveInd_t_data_data.data_length, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
