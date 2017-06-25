local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_UserReconfigReq'
end
function module:messageId()
  return 0x0956
end
----------------------------------------------------------------
local PSUSER_USERRECONFIGREQ_T = Proto('PsUser_UserReconfigReq_t', 'PSUSER_USERRECONFIGREQ_T')
local PsUser_UserReconfigReq_t = PSUSER_USERRECONFIGREQ_T.fields
PsUser_UserReconfigReq_t.ueFsId = ProtoField.uint16('PsUser_UserReconfigReq_t.ueFsId', 'ueFsId', base.HEX)
PsUser_UserReconfigReq_t.dlTransmissionMode = ProtoField.bytes('PsUser_UserReconfigReq_t.dlTransmissionMode', 'dlTransmissionMode', base.HEX)
PsUser_UserReconfigReq_t.ulTransmissionMode = ProtoField.bytes('PsUser_UserReconfigReq_t.ulTransmissionMode', 'ulTransmissionMode', base.HEX)
PsUser_UserReconfigReq_t.numCqiParams = ProtoField.uint16('PsUser_UserReconfigReq_t.numCqiParams', 'numCqiParams', base.HEX)
PsUser_UserReconfigReq_t.numCqiParams_padding = ProtoField.bytes('PsUser_UserReconfigReq_t.numCqiParams_padding', 'numCqiParams_padding', base.HEX)
local PSUSER_USERRECONFIGREQ_T_CQIPARAMS = Proto('PsUser_UserReconfigReq_t_cqiParams', 'PSUSER_USERRECONFIGREQ_T_CQIPARAMS')
local PsUser_UserReconfigReq_t_cqiParams = PSUSER_USERRECONFIGREQ_T_CQIPARAMS.fields
PsUser_UserReconfigReq_t_cqiParams.cqiParams_offset = ProtoField.uint32('PsUser_UserReconfigReq_t_cqiParams.cqiParams_offset', 'cqiParams_offset', base.HEX)
PsUser_UserReconfigReq_t_cqiParams.cqiParams_length = ProtoField.uint32('PsUser_UserReconfigReq_t_cqiParams.cqiParams_length', 'cqiParams_length', base.HEX)
PsUser_UserReconfigReq_t_cqiParams.pcRatio = ProtoField.int8('PsUser_UserReconfigReq_t_cqiParams.pcRatio', 'pcRatio', base.DEC)
PsUser_UserReconfigReq_t_cqiParams.pcRatio_padding = ProtoField.int8('PsUser_UserReconfigReq_t_cqiParams.pcRatio_padding', 'pcRatio_padding', base.DEC)
PsUser_UserReconfigReq_t_cqiParams.resourceConfig = ProtoField.uint16('PsUser_UserReconfigReq_t_cqiParams.resourceConfig', 'resourceConfig', base.HEX)
PsUser_UserReconfigReq_t_cqiParams.scramblingIdentity = ProtoField.uint16('PsUser_UserReconfigReq_t_cqiParams.scramblingIdentity', 'scramblingIdentity', base.HEX)
PsUser_UserReconfigReq_t_cqiParams.cqiAperMode = ProtoField.bytes('PsUser_UserReconfigReq_t_cqiParams.cqiAperMode', 'cqiAperMode', base.HEX)
PsUser_UserReconfigReq_t_cqiParams.cqiAperMode_padding = ProtoField.int8('PsUser_UserReconfigReq_t_cqiParams.cqiAperMode_padding', 'cqiAperMode_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_USERRECONFIGREQ_T, buffer())
  subtree:set_text('PsUser_UserReconfigReq_t')
  subtree:add_le (PsUser_UserReconfigReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserReconfigReq_t.dlTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_UserReconfigReq_t.ulTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_UserReconfigReq_t.numCqiParams, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserReconfigReq_t.numCqiParams_padding, buffer(offset, 2))
  offset = offset + 2
  local PsUser_UserReconfigReq_t_cqiParamsTree = subtree:add (PSUSER_USERRECONFIGREQ_T_CQIPARAMS, buffer(offset))
  PsUser_UserReconfigReq_t_cqiParamsTree:set_text('PsUser_UserReconfigReq_t_cqiParams')
  PsUser_UserReconfigReq_t_cqiParamsTree:add_le (PsUser_UserReconfigReq_t_cqiParams.cqiParams_offset, buffer(offset, 4))
  offset = offset + 4
  PsUser_UserReconfigReq_t_cqiParamsTree:add_le (PsUser_UserReconfigReq_t_cqiParams.cqiParams_length, buffer(offset, 4))
  offset = offset + 4
  PsUser_UserReconfigReq_t_cqiParamsTree:add_le (PsUser_UserReconfigReq_t_cqiParams.pcRatio, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserReconfigReq_t_cqiParamsTree:add_le (PsUser_UserReconfigReq_t_cqiParams.pcRatio_padding, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserReconfigReq_t_cqiParamsTree:add_le (PsUser_UserReconfigReq_t_cqiParams.resourceConfig, buffer(offset, 2))
  offset = offset + 2
  PsUser_UserReconfigReq_t_cqiParamsTree:add_le (PsUser_UserReconfigReq_t_cqiParams.scramblingIdentity, buffer(offset, 2))
  offset = offset + 2
  PsUser_UserReconfigReq_t_cqiParamsTree:add_le (PsUser_UserReconfigReq_t_cqiParams.cqiAperMode, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserReconfigReq_t_cqiParamsTree:add_le (PsUser_UserReconfigReq_t_cqiParams.cqiAperMode_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
