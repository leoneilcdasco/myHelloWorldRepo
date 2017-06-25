local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_UserContextMoveReq'
end
function module:messageId()
  return 0x0316
end
----------------------------------------------------------------
local PSINTERNAL_USERCONTEXTMOVEREQ_T = Proto('PsInternal_UserContextMoveReq_t', 'PSINTERNAL_USERCONTEXTMOVEREQ_T')
local PsInternal_UserContextMoveReq_t = PSINTERNAL_USERCONTEXTMOVEREQ_T.fields
local PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA = Proto('PsInternal_UserContextMoveReq_t_data', 'PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA')
local PsInternal_UserContextMoveReq_t_data = PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA.fields
PsInternal_UserContextMoveReq_t_data.ueFsId = ProtoField.uint16('PsInternal_UserContextMoveReq_t_data.ueFsId', 'ueFsId', base.HEX)
PsInternal_UserContextMoveReq_t_data.commitSfn = ProtoField.uint16('PsInternal_UserContextMoveReq_t_data.commitSfn', 'commitSfn', base.HEX)
PsInternal_UserContextMoveReq_t_data.commitSubframe = ProtoField.uint8('PsInternal_UserContextMoveReq_t_data.commitSubframe', 'commitSubframe', base.HEX)
PsInternal_UserContextMoveReq_t_data.beamId = ProtoField.uint8('PsInternal_UserContextMoveReq_t_data.beamId', 'beamId', base.HEX)
PsInternal_UserContextMoveReq_t_data.ta = ProtoField.bytes('PsInternal_UserContextMoveReq_t_data.ta', 'ta', base.HEX)
PsInternal_UserContextMoveReq_t_data.numCells = ProtoField.uint8('PsInternal_UserContextMoveReq_t_data.numCells', 'numCells', base.HEX)
PsInternal_UserContextMoveReq_t_data.numCells_padding = ProtoField.bytes('PsInternal_UserContextMoveReq_t_data.numCells_padding', 'numCells_padding', base.HEX)
local PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST = Proto('PsInternal_UserContextMoveReq_t_data_parameterChangeList', 'PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST')
local PsInternal_UserContextMoveReq_t_data_parameterChangeList = PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST.fields
PsInternal_UserContextMoveReq_t_data_parameterChangeList.parameterChangeList_offset = ProtoField.uint32('PsInternal_UserContextMoveReq_t_data_parameterChangeList.parameterChangeList_offset', 'parameterChangeList_offset', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList.parameterChangeList_length = ProtoField.uint32('PsInternal_UserContextMoveReq_t_data_parameterChangeList.parameterChangeList_length', 'parameterChangeList_length', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList.ngutraCellId = ProtoField.uint32('PsInternal_UserContextMoveReq_t_data_parameterChangeList.ngutraCellId', 'ngutraCellId', base.HEX)
local PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST_NDIDL = Proto('PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiDl', 'PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST_NDIDL')
local PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiDl = PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST_NDIDL.fields
PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiDl.ndiDl_length = ProtoField.uint32('PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiDl.ndiDl_length', 'ndiDl_length', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiDl.ndiDl_values = ProtoField.bytes('PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiDl.ndiDl_values', 'ndiDl_values', base.HEX)
local PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST_NDIUL = Proto('PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiUl', 'PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST_NDIUL')
local PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiUl = PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST_NDIUL.fields
PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiUl.ndiUl_length = ProtoField.uint32('PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiUl.ndiUl_length', 'ndiUl_length', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiUl.ndiUl_values = ProtoField.bytes('PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiUl.ndiUl_values', 'ndiUl_values', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList.mimoStateMachine = ProtoField.uint16('PsInternal_UserContextMoveReq_t_data_parameterChangeList.mimoStateMachine', 'mimoStateMachine', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList.csi = ProtoField.uint16('PsInternal_UserContextMoveReq_t_data_parameterChangeList.csi', 'csi', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList.mcsDl = ProtoField.uint8('PsInternal_UserContextMoveReq_t_data_parameterChangeList.mcsDl', 'mcsDl', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList.mcsUl = ProtoField.uint8('PsInternal_UserContextMoveReq_t_data_parameterChangeList.mcsUl', 'mcsUl', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList.dlTransmissionMode = ProtoField.bytes('PsInternal_UserContextMoveReq_t_data_parameterChangeList.dlTransmissionMode', 'dlTransmissionMode', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList.ulTransmissionMode = ProtoField.bytes('PsInternal_UserContextMoveReq_t_data_parameterChangeList.ulTransmissionMode', 'ulTransmissionMode', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList.numCqiParams = ProtoField.uint16('PsInternal_UserContextMoveReq_t_data_parameterChangeList.numCqiParams', 'numCqiParams', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList.numCqiParams_padding = ProtoField.bytes('PsInternal_UserContextMoveReq_t_data_parameterChangeList.numCqiParams_padding', 'numCqiParams_padding', base.HEX)
local PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST_CQIPARAMS = Proto('PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams', 'PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST_CQIPARAMS')
local PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams = PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST_CQIPARAMS.fields
PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.cqiParams_offset = ProtoField.uint32('PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.cqiParams_offset', 'cqiParams_offset', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.cqiParams_length = ProtoField.uint32('PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.cqiParams_length', 'cqiParams_length', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.pcRatio = ProtoField.int8('PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.pcRatio', 'pcRatio', base.DEC)
PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.pcRatio_padding = ProtoField.int8('PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.pcRatio_padding', 'pcRatio_padding', base.DEC)
PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.resourceConfig = ProtoField.uint16('PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.resourceConfig', 'resourceConfig', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.scramblingIdentity = ProtoField.uint16('PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.scramblingIdentity', 'scramblingIdentity', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.cqiAperMode = ProtoField.bytes('PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.cqiAperMode', 'cqiAperMode', base.HEX)
PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.cqiAperMode_padding = ProtoField.int8('PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.cqiAperMode_padding', 'cqiAperMode_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_USERCONTEXTMOVEREQ_T, buffer())
  subtree:set_text('PsInternal_UserContextMoveReq_t')
  local PsInternal_UserContextMoveReq_t_dataTree = subtree:add (PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA, buffer(offset))
  PsInternal_UserContextMoveReq_t_dataTree:set_text('PsInternal_UserContextMoveReq_t_data')
  PsInternal_UserContextMoveReq_t_dataTree:add_le (PsInternal_UserContextMoveReq_t_data.ueFsId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserContextMoveReq_t_dataTree:add_le (PsInternal_UserContextMoveReq_t_data.commitSfn, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserContextMoveReq_t_dataTree:add_le (PsInternal_UserContextMoveReq_t_data.commitSubframe, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserContextMoveReq_t_dataTree:add_le (PsInternal_UserContextMoveReq_t_data.beamId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserContextMoveReq_t_dataTree:add_le (PsInternal_UserContextMoveReq_t_data.ta, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserContextMoveReq_t_dataTree:add_le (PsInternal_UserContextMoveReq_t_data.numCells, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserContextMoveReq_t_dataTree:add_le (PsInternal_UserContextMoveReq_t_data.numCells_padding, buffer(offset, 3))
  offset = offset + 3
  local PsInternal_UserContextMoveReq_t_data_parameterChangeListTree = PsInternal_UserContextMoveReq_t_dataTree:add (PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST, buffer(offset))
  PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:set_text('PsInternal_UserContextMoveReq_t_data_parameterChangeList')
  PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList.parameterChangeList_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList.parameterChangeList_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList.ngutraCellId, buffer(offset, 4))
  offset = offset + 4
  local PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiDlTree = PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add (PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST_NDIDL, buffer(offset))
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiDlTree:set_text('PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiDl')
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiDlTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiDl.ndiDl_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiDlTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiDl.ndiDl_values, buffer(offset, ( (msglen >= 12) and 12 or (msglen-offset) )))
  offset = offset + ( (msglen >= 12) and 12 or (msglen-offset) )
  local PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiUlTree = PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add (PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST_NDIUL, buffer(offset))
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiUlTree:set_text('PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiUl')
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiUlTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiUl.ndiUl_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiUlTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList_ndiUl.ndiUl_values, buffer(offset, ( (msglen >= 12) and 12 or (msglen-offset) )))
  offset = offset + ( (msglen >= 12) and 12 or (msglen-offset) )
  PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList.mimoStateMachine, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList.csi, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList.mcsDl, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList.mcsUl, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList.dlTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList.ulTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList.numCqiParams, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList.numCqiParams_padding, buffer(offset, 2))
  offset = offset + 2
  local PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParamsTree = PsInternal_UserContextMoveReq_t_data_parameterChangeListTree:add (PSINTERNAL_USERCONTEXTMOVEREQ_T_DATA_PARAMETERCHANGELIST_CQIPARAMS, buffer(offset))
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParamsTree:set_text('PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams')
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParamsTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.cqiParams_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParamsTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.cqiParams_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParamsTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.pcRatio, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParamsTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.pcRatio_padding, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParamsTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.resourceConfig, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParamsTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.scramblingIdentity, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParamsTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.cqiAperMode, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParamsTree:add_le (PsInternal_UserContextMoveReq_t_data_parameterChangeList_cqiParams.cqiAperMode_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
