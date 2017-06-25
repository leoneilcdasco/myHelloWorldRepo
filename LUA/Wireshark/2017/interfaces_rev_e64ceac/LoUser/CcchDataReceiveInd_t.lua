local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoUser_CcchDataReceiveInd'
end
function module:messageId()
  return 0x0608
end
----------------------------------------------------------------
local LOUSER_CCCHDATARECEIVEIND_T = Proto('LoUser_CcchDataReceiveInd_t', 'LOUSER_CCCHDATARECEIVEIND_T')
local LoUser_CcchDataReceiveInd_t = LOUSER_CCCHDATARECEIVEIND_T.fields
LoUser_CcchDataReceiveInd_t.subCellId = ProtoField.uint8('LoUser_CcchDataReceiveInd_t.subCellId', 'subCellId', base.HEX)
LoUser_CcchDataReceiveInd_t.subCellId_padding = ProtoField.int8('LoUser_CcchDataReceiveInd_t.subCellId_padding', 'subCellId_padding', base.DEC)
LoUser_CcchDataReceiveInd_t.rnti = ProtoField.uint16('LoUser_CcchDataReceiveInd_t.rnti', 'rnti', base.HEX)
local LOUSER_CCCHDATARECEIVEIND_T_DATA = Proto('LoUser_CcchDataReceiveInd_t_data', 'LOUSER_CCCHDATARECEIVEIND_T_DATA')
local LoUser_CcchDataReceiveInd_t_data = LOUSER_CCCHDATARECEIVEIND_T_DATA.fields
LoUser_CcchDataReceiveInd_t_data.data_offset = ProtoField.uint32('LoUser_CcchDataReceiveInd_t_data.data_offset', 'data_offset', base.HEX)
LoUser_CcchDataReceiveInd_t_data.data_length = ProtoField.uint32('LoUser_CcchDataReceiveInd_t_data.data_length', 'data_length', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOUSER_CCCHDATARECEIVEIND_T, buffer())
  subtree:set_text('LoUser_CcchDataReceiveInd_t')
  subtree:add_le (LoUser_CcchDataReceiveInd_t.subCellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoUser_CcchDataReceiveInd_t.subCellId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoUser_CcchDataReceiveInd_t.rnti, buffer(offset, 2))
  offset = offset + 2
  local LoUser_CcchDataReceiveInd_t_dataTree = subtree:add (LOUSER_CCCHDATARECEIVEIND_T_DATA, buffer(offset))
  LoUser_CcchDataReceiveInd_t_dataTree:set_text('LoUser_CcchDataReceiveInd_t_data')
  LoUser_CcchDataReceiveInd_t_dataTree:add_le (LoUser_CcchDataReceiveInd_t_data.data_offset, buffer(offset, 4))
  offset = offset + 4
  LoUser_CcchDataReceiveInd_t_dataTree:add_le (LoUser_CcchDataReceiveInd_t_data.data_length, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
