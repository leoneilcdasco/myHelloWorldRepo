local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_UserModifyReq'
end
function module:messageId()
  return 0x0954
end
----------------------------------------------------------------
local PSUSER_USERMODIFYREQ_T = Proto('PsUser_UserModifyReq_t', 'PSUSER_USERMODIFYREQ_T')
local PsUser_UserModifyReq_t = PSUSER_USERMODIFYREQ_T.fields
PsUser_UserModifyReq_t.ueFsId = ProtoField.uint16('PsUser_UserModifyReq_t.ueFsId', 'ueFsId', base.HEX)
PsUser_UserModifyReq_t.ueFsId_padding = ProtoField.bytes('PsUser_UserModifyReq_t.ueFsId_padding', 'ueFsId_padding', base.HEX)
local PSUSER_USERMODIFYREQ_T_CELLCONFIGURATION = Proto('PsUser_UserModifyReq_t_cellConfiguration', 'PSUSER_USERMODIFYREQ_T_CELLCONFIGURATION')
local PsUser_UserModifyReq_t_cellConfiguration = PSUSER_USERMODIFYREQ_T_CELLCONFIGURATION.fields
PsUser_UserModifyReq_t_cellConfiguration.cellConfiguration_offset = ProtoField.uint32('PsUser_UserModifyReq_t_cellConfiguration.cellConfiguration_offset', 'cellConfiguration_offset', base.HEX)
PsUser_UserModifyReq_t_cellConfiguration.cellConfiguration_length = ProtoField.uint32('PsUser_UserModifyReq_t_cellConfiguration.cellConfiguration_length', 'cellConfiguration_length', base.HEX)
PsUser_UserModifyReq_t_cellConfiguration.nrUtranCellId = ProtoField.uint32('PsUser_UserModifyReq_t_cellConfiguration.nrUtranCellId', 'nrUtranCellId', base.HEX)
PsUser_UserModifyReq_t_cellConfiguration.subcellId = ProtoField.uint8('PsUser_UserModifyReq_t_cellConfiguration.subcellId', 'subcellId', base.DEC)
PsUser_UserModifyReq_t_cellConfiguration.dlTransmissionMode = ProtoField.bytes('PsUser_UserModifyReq_t_cellConfiguration.dlTransmissionMode', 'dlTransmissionMode', base.HEX)
PsUser_UserModifyReq_t_cellConfiguration.ulTransmissionMode = ProtoField.bytes('PsUser_UserModifyReq_t_cellConfiguration.ulTransmissionMode', 'ulTransmissionMode', base.HEX)
PsUser_UserModifyReq_t_cellConfiguration.ulTransmissionMode_padding = ProtoField.int8('PsUser_UserModifyReq_t_cellConfiguration.ulTransmissionMode_padding', 'ulTransmissionMode_padding', base.DEC)
local PSUSER_USERMODIFYREQ_T_CELLCONFIGURATION_CQIPARAMS = Proto('PsUser_UserModifyReq_t_cellConfiguration_cqiParams', 'PSUSER_USERMODIFYREQ_T_CELLCONFIGURATION_CQIPARAMS')
local PsUser_UserModifyReq_t_cellConfiguration_cqiParams = PSUSER_USERMODIFYREQ_T_CELLCONFIGURATION_CQIPARAMS.fields
PsUser_UserModifyReq_t_cellConfiguration_cqiParams.cqiParams_offset = ProtoField.uint32('PsUser_UserModifyReq_t_cellConfiguration_cqiParams.cqiParams_offset', 'cqiParams_offset', base.HEX)
PsUser_UserModifyReq_t_cellConfiguration_cqiParams.cqiParams_length = ProtoField.uint32('PsUser_UserModifyReq_t_cellConfiguration_cqiParams.cqiParams_length', 'cqiParams_length', base.HEX)
PsUser_UserModifyReq_t_cellConfiguration_cqiParams.pcRatio = ProtoField.int8('PsUser_UserModifyReq_t_cellConfiguration_cqiParams.pcRatio', 'pcRatio', base.DEC)
PsUser_UserModifyReq_t_cellConfiguration_cqiParams.pcRatio_padding = ProtoField.int8('PsUser_UserModifyReq_t_cellConfiguration_cqiParams.pcRatio_padding', 'pcRatio_padding', base.DEC)
PsUser_UserModifyReq_t_cellConfiguration_cqiParams.resourceConfig = ProtoField.uint16('PsUser_UserModifyReq_t_cellConfiguration_cqiParams.resourceConfig', 'resourceConfig', base.HEX)
PsUser_UserModifyReq_t_cellConfiguration_cqiParams.scramblingIdentity = ProtoField.uint16('PsUser_UserModifyReq_t_cellConfiguration_cqiParams.scramblingIdentity', 'scramblingIdentity', base.HEX)
PsUser_UserModifyReq_t_cellConfiguration_cqiParams.cqiAperMode = ProtoField.bytes('PsUser_UserModifyReq_t_cellConfiguration_cqiParams.cqiAperMode', 'cqiAperMode', base.HEX)
PsUser_UserModifyReq_t_cellConfiguration_cqiParams.cqiAperMode_padding = ProtoField.int8('PsUser_UserModifyReq_t_cellConfiguration_cqiParams.cqiAperMode_padding', 'cqiAperMode_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_USERMODIFYREQ_T, buffer())
  subtree:set_text('PsUser_UserModifyReq_t')
  subtree:add_le (PsUser_UserModifyReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserModifyReq_t.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
  local PsUser_UserModifyReq_t_cellConfigurationTree = subtree:add (PSUSER_USERMODIFYREQ_T_CELLCONFIGURATION, buffer(offset))
  PsUser_UserModifyReq_t_cellConfigurationTree:set_text('PsUser_UserModifyReq_t_cellConfiguration')
  PsUser_UserModifyReq_t_cellConfigurationTree:add_le (PsUser_UserModifyReq_t_cellConfiguration.cellConfiguration_offset, buffer(offset, 4))
  offset = offset + 4
  PsUser_UserModifyReq_t_cellConfigurationTree:add_le (PsUser_UserModifyReq_t_cellConfiguration.cellConfiguration_length, buffer(offset, 4))
  offset = offset + 4
  PsUser_UserModifyReq_t_cellConfigurationTree:add_le (PsUser_UserModifyReq_t_cellConfiguration.nrUtranCellId, buffer(offset, 4))
  offset = offset + 4
  PsUser_UserModifyReq_t_cellConfigurationTree:add_le (PsUser_UserModifyReq_t_cellConfiguration.subcellId, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserModifyReq_t_cellConfigurationTree:add_le (PsUser_UserModifyReq_t_cellConfiguration.dlTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserModifyReq_t_cellConfigurationTree:add_le (PsUser_UserModifyReq_t_cellConfiguration.ulTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserModifyReq_t_cellConfigurationTree:add_le (PsUser_UserModifyReq_t_cellConfiguration.ulTransmissionMode_padding, buffer(offset, 1))
  offset = offset + 1
  local PsUser_UserModifyReq_t_cellConfiguration_cqiParamsTree = PsUser_UserModifyReq_t_cellConfigurationTree:add (PSUSER_USERMODIFYREQ_T_CELLCONFIGURATION_CQIPARAMS, buffer(offset))
  PsUser_UserModifyReq_t_cellConfiguration_cqiParamsTree:set_text('PsUser_UserModifyReq_t_cellConfiguration_cqiParams')
  PsUser_UserModifyReq_t_cellConfiguration_cqiParamsTree:add_le (PsUser_UserModifyReq_t_cellConfiguration_cqiParams.cqiParams_offset, buffer(offset, 4))
  offset = offset + 4
  PsUser_UserModifyReq_t_cellConfiguration_cqiParamsTree:add_le (PsUser_UserModifyReq_t_cellConfiguration_cqiParams.cqiParams_length, buffer(offset, 4))
  offset = offset + 4
  PsUser_UserModifyReq_t_cellConfiguration_cqiParamsTree:add_le (PsUser_UserModifyReq_t_cellConfiguration_cqiParams.pcRatio, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserModifyReq_t_cellConfiguration_cqiParamsTree:add_le (PsUser_UserModifyReq_t_cellConfiguration_cqiParams.pcRatio_padding, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserModifyReq_t_cellConfiguration_cqiParamsTree:add_le (PsUser_UserModifyReq_t_cellConfiguration_cqiParams.resourceConfig, buffer(offset, 2))
  offset = offset + 2
  PsUser_UserModifyReq_t_cellConfiguration_cqiParamsTree:add_le (PsUser_UserModifyReq_t_cellConfiguration_cqiParams.scramblingIdentity, buffer(offset, 2))
  offset = offset + 2
  PsUser_UserModifyReq_t_cellConfiguration_cqiParamsTree:add_le (PsUser_UserModifyReq_t_cellConfiguration_cqiParams.cqiAperMode, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserModifyReq_t_cellConfiguration_cqiParamsTree:add_le (PsUser_UserModifyReq_t_cellConfiguration_cqiParams.cqiAperMode_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
