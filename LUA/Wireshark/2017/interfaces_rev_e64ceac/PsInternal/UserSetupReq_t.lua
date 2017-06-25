local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_UserSetupReq'
end
function module:messageId()
  return 0x0324
end
----------------------------------------------------------------
local PSINTERNAL_USERSETUPREQ_T = Proto('PsInternal_UserSetupReq_t', 'PSINTERNAL_USERSETUPREQ_T')
local PsInternal_UserSetupReq_t = PSINTERNAL_USERSETUPREQ_T.fields
local PSINTERNAL_USERSETUPREQ_T_DATA = Proto('PsInternal_UserSetupReq_t_data', 'PSINTERNAL_USERSETUPREQ_T_DATA')
local PsInternal_UserSetupReq_t_data = PSINTERNAL_USERSETUPREQ_T_DATA.fields
PsInternal_UserSetupReq_t_data.ueFsId = ProtoField.uint16('PsInternal_UserSetupReq_t_data.ueFsId', 'ueFsId', base.HEX)
PsInternal_UserSetupReq_t_data.ueFsId_padding = ProtoField.bytes('PsInternal_UserSetupReq_t_data.ueFsId_padding', 'ueFsId_padding', base.HEX)
PsInternal_UserSetupReq_t_data.ngutranCellId = ProtoField.uint32('PsInternal_UserSetupReq_t_data.ngutranCellId', 'ngutranCellId', base.HEX)
PsInternal_UserSetupReq_t_data.cRnti = ProtoField.uint16('PsInternal_UserSetupReq_t_data.cRnti', 'cRnti', base.HEX)
PsInternal_UserSetupReq_t_data.ueAddCause = ProtoField.bytes('PsInternal_UserSetupReq_t_data.ueAddCause', 'ueAddCause', base.HEX)
PsInternal_UserSetupReq_t_data.ueAddCause_padding = ProtoField.int8('PsInternal_UserSetupReq_t_data.ueAddCause_padding', 'ueAddCause_padding', base.DEC)
PsInternal_UserSetupReq_t_data.timeAlignmentTimerDedicated = ProtoField.bytes('PsInternal_UserSetupReq_t_data.timeAlignmentTimerDedicated', 'timeAlignmentTimerDedicated', base.HEX)
PsInternal_UserSetupReq_t_data.maxHARQUI = ProtoField.uint8('PsInternal_UserSetupReq_t_data.maxHARQUI', 'maxHARQUI', base.HEX)
PsInternal_UserSetupReq_t_data.dlTransmissionMode = ProtoField.bytes('PsInternal_UserSetupReq_t_data.dlTransmissionMode', 'dlTransmissionMode', base.HEX)
PsInternal_UserSetupReq_t_data.ulTransmissionMode = ProtoField.bytes('PsInternal_UserSetupReq_t_data.ulTransmissionMode', 'ulTransmissionMode', base.HEX)
PsInternal_UserSetupReq_t_data.ulTransmissionMode_padding = ProtoField.bytes('PsInternal_UserSetupReq_t_data.ulTransmissionMode_padding', 'ulTransmissionMode_padding', base.HEX)
local PSINTERNAL_USERSETUPREQ_T_DATA_SRBADDREQPS = Proto('PsInternal_UserSetupReq_t_data_srbAddReqPs', 'PSINTERNAL_USERSETUPREQ_T_DATA_SRBADDREQPS')
local PsInternal_UserSetupReq_t_data_srbAddReqPs = PSINTERNAL_USERSETUPREQ_T_DATA_SRBADDREQPS.fields
PsInternal_UserSetupReq_t_data_srbAddReqPs.srbAddReqPs_offset = ProtoField.uint32('PsInternal_UserSetupReq_t_data_srbAddReqPs.srbAddReqPs_offset', 'srbAddReqPs_offset', base.HEX)
PsInternal_UserSetupReq_t_data_srbAddReqPs.srbAddReqPs_length = ProtoField.uint32('PsInternal_UserSetupReq_t_data_srbAddReqPs.srbAddReqPs_length', 'srbAddReqPs_length', base.HEX)
PsInternal_UserSetupReq_t_data_srbAddReqPs.logicalChannelIdentity = ProtoField.uint8('PsInternal_UserSetupReq_t_data_srbAddReqPs.logicalChannelIdentity', 'logicalChannelIdentity', base.HEX)
PsInternal_UserSetupReq_t_data_srbAddReqPs.logicalChannelGroup = ProtoField.uint8('PsInternal_UserSetupReq_t_data_srbAddReqPs.logicalChannelGroup', 'logicalChannelGroup', base.HEX)
PsInternal_UserSetupReq_t_data_srbAddReqPs.logicalChannelGroup_padding = ProtoField.bytes('PsInternal_UserSetupReq_t_data_srbAddReqPs.logicalChannelGroup_padding', 'logicalChannelGroup_padding', base.HEX)
local PSINTERNAL_USERSETUPREQ_T_DATA_DRBADDREQPS = Proto('PsInternal_UserSetupReq_t_data_drbAddReqPs', 'PSINTERNAL_USERSETUPREQ_T_DATA_DRBADDREQPS')
local PsInternal_UserSetupReq_t_data_drbAddReqPs = PSINTERNAL_USERSETUPREQ_T_DATA_DRBADDREQPS.fields
PsInternal_UserSetupReq_t_data_drbAddReqPs.drbAddReqPs_offset = ProtoField.uint32('PsInternal_UserSetupReq_t_data_drbAddReqPs.drbAddReqPs_offset', 'drbAddReqPs_offset', base.HEX)
PsInternal_UserSetupReq_t_data_drbAddReqPs.drbAddReqPs_length = ProtoField.uint32('PsInternal_UserSetupReq_t_data_drbAddReqPs.drbAddReqPs_length', 'drbAddReqPs_length', base.HEX)
PsInternal_UserSetupReq_t_data_drbAddReqPs.logicalChannelIdentity = ProtoField.uint8('PsInternal_UserSetupReq_t_data_drbAddReqPs.logicalChannelIdentity', 'logicalChannelIdentity', base.HEX)
PsInternal_UserSetupReq_t_data_drbAddReqPs.logicalChannelGroup = ProtoField.uint8('PsInternal_UserSetupReq_t_data_drbAddReqPs.logicalChannelGroup', 'logicalChannelGroup', base.HEX)
PsInternal_UserSetupReq_t_data_drbAddReqPs.priority = ProtoField.uint8('PsInternal_UserSetupReq_t_data_drbAddReqPs.priority', 'priority', base.HEX)
PsInternal_UserSetupReq_t_data_drbAddReqPs.priority_padding = ProtoField.int8('PsInternal_UserSetupReq_t_data_drbAddReqPs.priority_padding', 'priority_padding', base.DEC)
PsInternal_UserSetupReq_t_data_drbAddReqPs.bucketSizeDuration = ProtoField.bytes('PsInternal_UserSetupReq_t_data_drbAddReqPs.bucketSizeDuration', 'bucketSizeDuration', base.HEX)
PsInternal_UserSetupReq_t_data_drbAddReqPs.prioritisedBitRate = ProtoField.bytes('PsInternal_UserSetupReq_t_data_drbAddReqPs.prioritisedBitRate', 'prioritisedBitRate', base.HEX)
local PSINTERNAL_USERSETUPREQ_T_DATA_CQIPARAMS = Proto('PsInternal_UserSetupReq_t_data_cqiParams', 'PSINTERNAL_USERSETUPREQ_T_DATA_CQIPARAMS')
local PsInternal_UserSetupReq_t_data_cqiParams = PSINTERNAL_USERSETUPREQ_T_DATA_CQIPARAMS.fields
PsInternal_UserSetupReq_t_data_cqiParams.cqiParams_offset = ProtoField.uint32('PsInternal_UserSetupReq_t_data_cqiParams.cqiParams_offset', 'cqiParams_offset', base.HEX)
PsInternal_UserSetupReq_t_data_cqiParams.cqiParams_length = ProtoField.uint32('PsInternal_UserSetupReq_t_data_cqiParams.cqiParams_length', 'cqiParams_length', base.HEX)
PsInternal_UserSetupReq_t_data_cqiParams.pcRatio = ProtoField.int8('PsInternal_UserSetupReq_t_data_cqiParams.pcRatio', 'pcRatio', base.DEC)
PsInternal_UserSetupReq_t_data_cqiParams.pcRatio_padding = ProtoField.int8('PsInternal_UserSetupReq_t_data_cqiParams.pcRatio_padding', 'pcRatio_padding', base.DEC)
PsInternal_UserSetupReq_t_data_cqiParams.resourceConfig = ProtoField.uint16('PsInternal_UserSetupReq_t_data_cqiParams.resourceConfig', 'resourceConfig', base.HEX)
PsInternal_UserSetupReq_t_data_cqiParams.scramblingIdentity = ProtoField.uint16('PsInternal_UserSetupReq_t_data_cqiParams.scramblingIdentity', 'scramblingIdentity', base.HEX)
PsInternal_UserSetupReq_t_data_cqiParams.cqiAperMode = ProtoField.bytes('PsInternal_UserSetupReq_t_data_cqiParams.cqiAperMode', 'cqiAperMode', base.HEX)
PsInternal_UserSetupReq_t_data_cqiParams.cqiAperMode_padding = ProtoField.int8('PsInternal_UserSetupReq_t_data_cqiParams.cqiAperMode_padding', 'cqiAperMode_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_USERSETUPREQ_T, buffer())
  subtree:set_text('PsInternal_UserSetupReq_t')
  local PsInternal_UserSetupReq_t_dataTree = subtree:add (PSINTERNAL_USERSETUPREQ_T_DATA, buffer(offset))
  PsInternal_UserSetupReq_t_dataTree:set_text('PsInternal_UserSetupReq_t_data')
  PsInternal_UserSetupReq_t_dataTree:add_le (PsInternal_UserSetupReq_t_data.ueFsId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserSetupReq_t_dataTree:add_le (PsInternal_UserSetupReq_t_data.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserSetupReq_t_dataTree:add_le (PsInternal_UserSetupReq_t_data.ngutranCellId, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserSetupReq_t_dataTree:add_le (PsInternal_UserSetupReq_t_data.cRnti, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserSetupReq_t_dataTree:add_le (PsInternal_UserSetupReq_t_data.ueAddCause, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_dataTree:add_le (PsInternal_UserSetupReq_t_data.ueAddCause_padding, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_dataTree:add_le (PsInternal_UserSetupReq_t_data.timeAlignmentTimerDedicated, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserSetupReq_t_dataTree:add_le (PsInternal_UserSetupReq_t_data.maxHARQUI, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_dataTree:add_le (PsInternal_UserSetupReq_t_data.dlTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_dataTree:add_le (PsInternal_UserSetupReq_t_data.ulTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_dataTree:add_le (PsInternal_UserSetupReq_t_data.ulTransmissionMode_padding, buffer(offset, 3))
  offset = offset + 3
  local PsInternal_UserSetupReq_t_data_srbAddReqPsTree = PsInternal_UserSetupReq_t_dataTree:add (PSINTERNAL_USERSETUPREQ_T_DATA_SRBADDREQPS, buffer(offset))
  PsInternal_UserSetupReq_t_data_srbAddReqPsTree:set_text('PsInternal_UserSetupReq_t_data_srbAddReqPs')
  PsInternal_UserSetupReq_t_data_srbAddReqPsTree:add_le (PsInternal_UserSetupReq_t_data_srbAddReqPs.srbAddReqPs_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserSetupReq_t_data_srbAddReqPsTree:add_le (PsInternal_UserSetupReq_t_data_srbAddReqPs.srbAddReqPs_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserSetupReq_t_data_srbAddReqPsTree:add_le (PsInternal_UserSetupReq_t_data_srbAddReqPs.logicalChannelIdentity, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_data_srbAddReqPsTree:add_le (PsInternal_UserSetupReq_t_data_srbAddReqPs.logicalChannelGroup, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_data_srbAddReqPsTree:add_le (PsInternal_UserSetupReq_t_data_srbAddReqPs.logicalChannelGroup_padding, buffer(offset, 2))
  offset = offset + 2
  local PsInternal_UserSetupReq_t_data_drbAddReqPsTree = PsInternal_UserSetupReq_t_dataTree:add (PSINTERNAL_USERSETUPREQ_T_DATA_DRBADDREQPS, buffer(offset))
  PsInternal_UserSetupReq_t_data_drbAddReqPsTree:set_text('PsInternal_UserSetupReq_t_data_drbAddReqPs')
  PsInternal_UserSetupReq_t_data_drbAddReqPsTree:add_le (PsInternal_UserSetupReq_t_data_drbAddReqPs.drbAddReqPs_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserSetupReq_t_data_drbAddReqPsTree:add_le (PsInternal_UserSetupReq_t_data_drbAddReqPs.drbAddReqPs_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserSetupReq_t_data_drbAddReqPsTree:add_le (PsInternal_UserSetupReq_t_data_drbAddReqPs.logicalChannelIdentity, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_data_drbAddReqPsTree:add_le (PsInternal_UserSetupReq_t_data_drbAddReqPs.logicalChannelGroup, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_data_drbAddReqPsTree:add_le (PsInternal_UserSetupReq_t_data_drbAddReqPs.priority, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_data_drbAddReqPsTree:add_le (PsInternal_UserSetupReq_t_data_drbAddReqPs.priority_padding, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_data_drbAddReqPsTree:add_le (PsInternal_UserSetupReq_t_data_drbAddReqPs.bucketSizeDuration, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserSetupReq_t_data_drbAddReqPsTree:add_le (PsInternal_UserSetupReq_t_data_drbAddReqPs.prioritisedBitRate, buffer(offset, 2))
  offset = offset + 2
  local PsInternal_UserSetupReq_t_data_cqiParamsTree = PsInternal_UserSetupReq_t_dataTree:add (PSINTERNAL_USERSETUPREQ_T_DATA_CQIPARAMS, buffer(offset))
  PsInternal_UserSetupReq_t_data_cqiParamsTree:set_text('PsInternal_UserSetupReq_t_data_cqiParams')
  PsInternal_UserSetupReq_t_data_cqiParamsTree:add_le (PsInternal_UserSetupReq_t_data_cqiParams.cqiParams_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserSetupReq_t_data_cqiParamsTree:add_le (PsInternal_UserSetupReq_t_data_cqiParams.cqiParams_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserSetupReq_t_data_cqiParamsTree:add_le (PsInternal_UserSetupReq_t_data_cqiParams.pcRatio, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_data_cqiParamsTree:add_le (PsInternal_UserSetupReq_t_data_cqiParams.pcRatio_padding, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_data_cqiParamsTree:add_le (PsInternal_UserSetupReq_t_data_cqiParams.resourceConfig, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserSetupReq_t_data_cqiParamsTree:add_le (PsInternal_UserSetupReq_t_data_cqiParams.scramblingIdentity, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserSetupReq_t_data_cqiParamsTree:add_le (PsInternal_UserSetupReq_t_data_cqiParams.cqiAperMode, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupReq_t_data_cqiParamsTree:add_le (PsInternal_UserSetupReq_t_data_cqiParams.cqiAperMode_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
