local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_UserModifyReq'
end
function module:messageId()
  return 0x0312
end
----------------------------------------------------------------
local PSINTERNAL_USERMODIFYREQ_T = Proto('PsInternal_UserModifyReq_t', 'PSINTERNAL_USERMODIFYREQ_T')
local PsInternal_UserModifyReq_t = PSINTERNAL_USERMODIFYREQ_T.fields
PsInternal_UserModifyReq_t.senderAddress = ProtoField.uint32('PsInternal_UserModifyReq_t.senderAddress', 'senderAddress', base.HEX)
local PSINTERNAL_USERMODIFYREQ_T_REQUEST = Proto('PsInternal_UserModifyReq_t_request', 'PSINTERNAL_USERMODIFYREQ_T_REQUEST')
local PsInternal_UserModifyReq_t_request = PSINTERNAL_USERMODIFYREQ_T_REQUEST.fields
PsInternal_UserModifyReq_t_request.ueFsId = ProtoField.uint16('PsInternal_UserModifyReq_t_request.ueFsId', 'ueFsId', base.HEX)
PsInternal_UserModifyReq_t_request.ueFsId_padding = ProtoField.bytes('PsInternal_UserModifyReq_t_request.ueFsId_padding', 'ueFsId_padding', base.HEX)
local PSINTERNAL_USERMODIFYREQ_T_REQUEST_CELLCONFIGURATION = Proto('PsInternal_UserModifyReq_t_request_cellConfiguration', 'PSINTERNAL_USERMODIFYREQ_T_REQUEST_CELLCONFIGURATION')
local PsInternal_UserModifyReq_t_request_cellConfiguration = PSINTERNAL_USERMODIFYREQ_T_REQUEST_CELLCONFIGURATION.fields
PsInternal_UserModifyReq_t_request_cellConfiguration.cellConfiguration_offset = ProtoField.uint32('PsInternal_UserModifyReq_t_request_cellConfiguration.cellConfiguration_offset', 'cellConfiguration_offset', base.HEX)
PsInternal_UserModifyReq_t_request_cellConfiguration.cellConfiguration_length = ProtoField.uint32('PsInternal_UserModifyReq_t_request_cellConfiguration.cellConfiguration_length', 'cellConfiguration_length', base.HEX)
PsInternal_UserModifyReq_t_request_cellConfiguration.nrUtranCellId = ProtoField.uint32('PsInternal_UserModifyReq_t_request_cellConfiguration.nrUtranCellId', 'nrUtranCellId', base.HEX)
PsInternal_UserModifyReq_t_request_cellConfiguration.subcellId = ProtoField.uint8('PsInternal_UserModifyReq_t_request_cellConfiguration.subcellId', 'subcellId', base.DEC)
PsInternal_UserModifyReq_t_request_cellConfiguration.dlTransmissionMode = ProtoField.bytes('PsInternal_UserModifyReq_t_request_cellConfiguration.dlTransmissionMode', 'dlTransmissionMode', base.HEX)
PsInternal_UserModifyReq_t_request_cellConfiguration.ulTransmissionMode = ProtoField.bytes('PsInternal_UserModifyReq_t_request_cellConfiguration.ulTransmissionMode', 'ulTransmissionMode', base.HEX)
PsInternal_UserModifyReq_t_request_cellConfiguration.ulTransmissionMode_padding = ProtoField.int8('PsInternal_UserModifyReq_t_request_cellConfiguration.ulTransmissionMode_padding', 'ulTransmissionMode_padding', base.DEC)
local PSINTERNAL_USERMODIFYREQ_T_REQUEST_CELLCONFIGURATION_CQIPARAMS = Proto('PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams', 'PSINTERNAL_USERMODIFYREQ_T_REQUEST_CELLCONFIGURATION_CQIPARAMS')
local PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams = PSINTERNAL_USERMODIFYREQ_T_REQUEST_CELLCONFIGURATION_CQIPARAMS.fields
PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.cqiParams_offset = ProtoField.uint32('PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.cqiParams_offset', 'cqiParams_offset', base.HEX)
PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.cqiParams_length = ProtoField.uint32('PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.cqiParams_length', 'cqiParams_length', base.HEX)
PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.pcRatio = ProtoField.int8('PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.pcRatio', 'pcRatio', base.DEC)
PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.pcRatio_padding = ProtoField.int8('PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.pcRatio_padding', 'pcRatio_padding', base.DEC)
PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.resourceConfig = ProtoField.uint16('PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.resourceConfig', 'resourceConfig', base.HEX)
PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.scramblingIdentity = ProtoField.uint16('PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.scramblingIdentity', 'scramblingIdentity', base.HEX)
PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.cqiAperMode = ProtoField.bytes('PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.cqiAperMode', 'cqiAperMode', base.HEX)
PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.cqiAperMode_padding = ProtoField.int8('PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.cqiAperMode_padding', 'cqiAperMode_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_USERMODIFYREQ_T, buffer())
  subtree:set_text('PsInternal_UserModifyReq_t')
  subtree:add_le (PsInternal_UserModifyReq_t.senderAddress, buffer(offset, 4))
  offset = offset + 4
  local PsInternal_UserModifyReq_t_requestTree = subtree:add (PSINTERNAL_USERMODIFYREQ_T_REQUEST, buffer(offset))
  PsInternal_UserModifyReq_t_requestTree:set_text('PsInternal_UserModifyReq_t_request')
  PsInternal_UserModifyReq_t_requestTree:add_le (PsInternal_UserModifyReq_t_request.ueFsId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserModifyReq_t_requestTree:add_le (PsInternal_UserModifyReq_t_request.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
  local PsInternal_UserModifyReq_t_request_cellConfigurationTree = PsInternal_UserModifyReq_t_requestTree:add (PSINTERNAL_USERMODIFYREQ_T_REQUEST_CELLCONFIGURATION, buffer(offset))
  PsInternal_UserModifyReq_t_request_cellConfigurationTree:set_text('PsInternal_UserModifyReq_t_request_cellConfiguration')
  PsInternal_UserModifyReq_t_request_cellConfigurationTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration.cellConfiguration_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserModifyReq_t_request_cellConfigurationTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration.cellConfiguration_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserModifyReq_t_request_cellConfigurationTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration.nrUtranCellId, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserModifyReq_t_request_cellConfigurationTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration.subcellId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserModifyReq_t_request_cellConfigurationTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration.dlTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserModifyReq_t_request_cellConfigurationTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration.ulTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserModifyReq_t_request_cellConfigurationTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration.ulTransmissionMode_padding, buffer(offset, 1))
  offset = offset + 1
  local PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParamsTree = PsInternal_UserModifyReq_t_request_cellConfigurationTree:add (PSINTERNAL_USERMODIFYREQ_T_REQUEST_CELLCONFIGURATION_CQIPARAMS, buffer(offset))
  PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParamsTree:set_text('PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams')
  PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParamsTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.cqiParams_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParamsTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.cqiParams_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParamsTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.pcRatio, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParamsTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.pcRatio_padding, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParamsTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.resourceConfig, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParamsTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.scramblingIdentity, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParamsTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.cqiAperMode, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParamsTree:add_le (PsInternal_UserModifyReq_t_request_cellConfiguration_cqiParams.cqiAperMode_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
