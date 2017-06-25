local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_UserSetupReq'
end
function module:messageId()
  return 0x0950
end
----------------------------------------------------------------
local PSUSER_USERSETUPREQ_T = Proto('PsUser_UserSetupReq_t', 'PSUSER_USERSETUPREQ_T')
local PsUser_UserSetupReq_t = PSUSER_USERSETUPREQ_T.fields
PsUser_UserSetupReq_t.ueFsId = ProtoField.uint16('PsUser_UserSetupReq_t.ueFsId', 'ueFsId', base.HEX)
PsUser_UserSetupReq_t.ueFsId_padding = ProtoField.bytes('PsUser_UserSetupReq_t.ueFsId_padding', 'ueFsId_padding', base.HEX)
PsUser_UserSetupReq_t.ngutranCellId = ProtoField.uint32('PsUser_UserSetupReq_t.ngutranCellId', 'ngutranCellId', base.HEX)
PsUser_UserSetupReq_t.cRnti = ProtoField.uint16('PsUser_UserSetupReq_t.cRnti', 'cRnti', base.HEX)
PsUser_UserSetupReq_t.ueAddCause = ProtoField.bytes('PsUser_UserSetupReq_t.ueAddCause', 'ueAddCause', base.HEX)
PsUser_UserSetupReq_t.ueAddCause_padding = ProtoField.int8('PsUser_UserSetupReq_t.ueAddCause_padding', 'ueAddCause_padding', base.DEC)
PsUser_UserSetupReq_t.timeAlignmentTimerDedicated = ProtoField.bytes('PsUser_UserSetupReq_t.timeAlignmentTimerDedicated', 'timeAlignmentTimerDedicated', base.HEX)
PsUser_UserSetupReq_t.maxHARQUI = ProtoField.uint8('PsUser_UserSetupReq_t.maxHARQUI', 'maxHARQUI', base.HEX)
PsUser_UserSetupReq_t.dlTransmissionMode = ProtoField.bytes('PsUser_UserSetupReq_t.dlTransmissionMode', 'dlTransmissionMode', base.HEX)
PsUser_UserSetupReq_t.ulTransmissionMode = ProtoField.bytes('PsUser_UserSetupReq_t.ulTransmissionMode', 'ulTransmissionMode', base.HEX)
PsUser_UserSetupReq_t.ulTransmissionMode_padding = ProtoField.bytes('PsUser_UserSetupReq_t.ulTransmissionMode_padding', 'ulTransmissionMode_padding', base.HEX)
local PSUSER_USERSETUPREQ_T_SRBADDREQPS = Proto('PsUser_UserSetupReq_t_srbAddReqPs', 'PSUSER_USERSETUPREQ_T_SRBADDREQPS')
local PsUser_UserSetupReq_t_srbAddReqPs = PSUSER_USERSETUPREQ_T_SRBADDREQPS.fields
PsUser_UserSetupReq_t_srbAddReqPs.srbAddReqPs_offset = ProtoField.uint32('PsUser_UserSetupReq_t_srbAddReqPs.srbAddReqPs_offset', 'srbAddReqPs_offset', base.HEX)
PsUser_UserSetupReq_t_srbAddReqPs.srbAddReqPs_length = ProtoField.uint32('PsUser_UserSetupReq_t_srbAddReqPs.srbAddReqPs_length', 'srbAddReqPs_length', base.HEX)
PsUser_UserSetupReq_t_srbAddReqPs.logicalChannelIdentity = ProtoField.uint8('PsUser_UserSetupReq_t_srbAddReqPs.logicalChannelIdentity', 'logicalChannelIdentity', base.HEX)
PsUser_UserSetupReq_t_srbAddReqPs.logicalChannelGroup = ProtoField.uint8('PsUser_UserSetupReq_t_srbAddReqPs.logicalChannelGroup', 'logicalChannelGroup', base.HEX)
PsUser_UserSetupReq_t_srbAddReqPs.logicalChannelGroup_padding = ProtoField.bytes('PsUser_UserSetupReq_t_srbAddReqPs.logicalChannelGroup_padding', 'logicalChannelGroup_padding', base.HEX)
local PSUSER_USERSETUPREQ_T_DRBADDREQPS = Proto('PsUser_UserSetupReq_t_drbAddReqPs', 'PSUSER_USERSETUPREQ_T_DRBADDREQPS')
local PsUser_UserSetupReq_t_drbAddReqPs = PSUSER_USERSETUPREQ_T_DRBADDREQPS.fields
PsUser_UserSetupReq_t_drbAddReqPs.drbAddReqPs_offset = ProtoField.uint32('PsUser_UserSetupReq_t_drbAddReqPs.drbAddReqPs_offset', 'drbAddReqPs_offset', base.HEX)
PsUser_UserSetupReq_t_drbAddReqPs.drbAddReqPs_length = ProtoField.uint32('PsUser_UserSetupReq_t_drbAddReqPs.drbAddReqPs_length', 'drbAddReqPs_length', base.HEX)
PsUser_UserSetupReq_t_drbAddReqPs.logicalChannelIdentity = ProtoField.uint8('PsUser_UserSetupReq_t_drbAddReqPs.logicalChannelIdentity', 'logicalChannelIdentity', base.HEX)
PsUser_UserSetupReq_t_drbAddReqPs.logicalChannelGroup = ProtoField.uint8('PsUser_UserSetupReq_t_drbAddReqPs.logicalChannelGroup', 'logicalChannelGroup', base.HEX)
PsUser_UserSetupReq_t_drbAddReqPs.priority = ProtoField.uint8('PsUser_UserSetupReq_t_drbAddReqPs.priority', 'priority', base.HEX)
PsUser_UserSetupReq_t_drbAddReqPs.priority_padding = ProtoField.int8('PsUser_UserSetupReq_t_drbAddReqPs.priority_padding', 'priority_padding', base.DEC)
PsUser_UserSetupReq_t_drbAddReqPs.bucketSizeDuration = ProtoField.bytes('PsUser_UserSetupReq_t_drbAddReqPs.bucketSizeDuration', 'bucketSizeDuration', base.HEX)
PsUser_UserSetupReq_t_drbAddReqPs.prioritisedBitRate = ProtoField.bytes('PsUser_UserSetupReq_t_drbAddReqPs.prioritisedBitRate', 'prioritisedBitRate', base.HEX)
local PSUSER_USERSETUPREQ_T_CQIPARAMS = Proto('PsUser_UserSetupReq_t_cqiParams', 'PSUSER_USERSETUPREQ_T_CQIPARAMS')
local PsUser_UserSetupReq_t_cqiParams = PSUSER_USERSETUPREQ_T_CQIPARAMS.fields
PsUser_UserSetupReq_t_cqiParams.cqiParams_offset = ProtoField.uint32('PsUser_UserSetupReq_t_cqiParams.cqiParams_offset', 'cqiParams_offset', base.HEX)
PsUser_UserSetupReq_t_cqiParams.cqiParams_length = ProtoField.uint32('PsUser_UserSetupReq_t_cqiParams.cqiParams_length', 'cqiParams_length', base.HEX)
PsUser_UserSetupReq_t_cqiParams.pcRatio = ProtoField.int8('PsUser_UserSetupReq_t_cqiParams.pcRatio', 'pcRatio', base.DEC)
PsUser_UserSetupReq_t_cqiParams.pcRatio_padding = ProtoField.int8('PsUser_UserSetupReq_t_cqiParams.pcRatio_padding', 'pcRatio_padding', base.DEC)
PsUser_UserSetupReq_t_cqiParams.resourceConfig = ProtoField.uint16('PsUser_UserSetupReq_t_cqiParams.resourceConfig', 'resourceConfig', base.HEX)
PsUser_UserSetupReq_t_cqiParams.scramblingIdentity = ProtoField.uint16('PsUser_UserSetupReq_t_cqiParams.scramblingIdentity', 'scramblingIdentity', base.HEX)
PsUser_UserSetupReq_t_cqiParams.cqiAperMode = ProtoField.bytes('PsUser_UserSetupReq_t_cqiParams.cqiAperMode', 'cqiAperMode', base.HEX)
PsUser_UserSetupReq_t_cqiParams.cqiAperMode_padding = ProtoField.int8('PsUser_UserSetupReq_t_cqiParams.cqiAperMode_padding', 'cqiAperMode_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_USERSETUPREQ_T, buffer())
  subtree:set_text('PsUser_UserSetupReq_t')
  subtree:add_le (PsUser_UserSetupReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserSetupReq_t.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserSetupReq_t.ngutranCellId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsUser_UserSetupReq_t.cRnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserSetupReq_t.ueAddCause, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_UserSetupReq_t.ueAddCause_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_UserSetupReq_t.timeAlignmentTimerDedicated, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_UserSetupReq_t.maxHARQUI, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_UserSetupReq_t.dlTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_UserSetupReq_t.ulTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_UserSetupReq_t.ulTransmissionMode_padding, buffer(offset, 3))
  offset = offset + 3
  local PsUser_UserSetupReq_t_srbAddReqPsTree = subtree:add (PSUSER_USERSETUPREQ_T_SRBADDREQPS, buffer(offset))
  PsUser_UserSetupReq_t_srbAddReqPsTree:set_text('PsUser_UserSetupReq_t_srbAddReqPs')
  PsUser_UserSetupReq_t_srbAddReqPsTree:add_le (PsUser_UserSetupReq_t_srbAddReqPs.srbAddReqPs_offset, buffer(offset, 4))
  offset = offset + 4
  PsUser_UserSetupReq_t_srbAddReqPsTree:add_le (PsUser_UserSetupReq_t_srbAddReqPs.srbAddReqPs_length, buffer(offset, 4))
  offset = offset + 4
  PsUser_UserSetupReq_t_srbAddReqPsTree:add_le (PsUser_UserSetupReq_t_srbAddReqPs.logicalChannelIdentity, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserSetupReq_t_srbAddReqPsTree:add_le (PsUser_UserSetupReq_t_srbAddReqPs.logicalChannelGroup, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserSetupReq_t_srbAddReqPsTree:add_le (PsUser_UserSetupReq_t_srbAddReqPs.logicalChannelGroup_padding, buffer(offset, 2))
  offset = offset + 2
  local PsUser_UserSetupReq_t_drbAddReqPsTree = subtree:add (PSUSER_USERSETUPREQ_T_DRBADDREQPS, buffer(offset))
  PsUser_UserSetupReq_t_drbAddReqPsTree:set_text('PsUser_UserSetupReq_t_drbAddReqPs')
  PsUser_UserSetupReq_t_drbAddReqPsTree:add_le (PsUser_UserSetupReq_t_drbAddReqPs.drbAddReqPs_offset, buffer(offset, 4))
  offset = offset + 4
  PsUser_UserSetupReq_t_drbAddReqPsTree:add_le (PsUser_UserSetupReq_t_drbAddReqPs.drbAddReqPs_length, buffer(offset, 4))
  offset = offset + 4
  PsUser_UserSetupReq_t_drbAddReqPsTree:add_le (PsUser_UserSetupReq_t_drbAddReqPs.logicalChannelIdentity, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserSetupReq_t_drbAddReqPsTree:add_le (PsUser_UserSetupReq_t_drbAddReqPs.logicalChannelGroup, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserSetupReq_t_drbAddReqPsTree:add_le (PsUser_UserSetupReq_t_drbAddReqPs.priority, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserSetupReq_t_drbAddReqPsTree:add_le (PsUser_UserSetupReq_t_drbAddReqPs.priority_padding, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserSetupReq_t_drbAddReqPsTree:add_le (PsUser_UserSetupReq_t_drbAddReqPs.bucketSizeDuration, buffer(offset, 2))
  offset = offset + 2
  PsUser_UserSetupReq_t_drbAddReqPsTree:add_le (PsUser_UserSetupReq_t_drbAddReqPs.prioritisedBitRate, buffer(offset, 2))
  offset = offset + 2
  local PsUser_UserSetupReq_t_cqiParamsTree = subtree:add (PSUSER_USERSETUPREQ_T_CQIPARAMS, buffer(offset))
  PsUser_UserSetupReq_t_cqiParamsTree:set_text('PsUser_UserSetupReq_t_cqiParams')
  PsUser_UserSetupReq_t_cqiParamsTree:add_le (PsUser_UserSetupReq_t_cqiParams.cqiParams_offset, buffer(offset, 4))
  offset = offset + 4
  PsUser_UserSetupReq_t_cqiParamsTree:add_le (PsUser_UserSetupReq_t_cqiParams.cqiParams_length, buffer(offset, 4))
  offset = offset + 4
  PsUser_UserSetupReq_t_cqiParamsTree:add_le (PsUser_UserSetupReq_t_cqiParams.pcRatio, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserSetupReq_t_cqiParamsTree:add_le (PsUser_UserSetupReq_t_cqiParams.pcRatio_padding, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserSetupReq_t_cqiParamsTree:add_le (PsUser_UserSetupReq_t_cqiParams.resourceConfig, buffer(offset, 2))
  offset = offset + 2
  PsUser_UserSetupReq_t_cqiParamsTree:add_le (PsUser_UserSetupReq_t_cqiParams.scramblingIdentity, buffer(offset, 2))
  offset = offset + 2
  PsUser_UserSetupReq_t_cqiParamsTree:add_le (PsUser_UserSetupReq_t_cqiParams.cqiAperMode, buffer(offset, 1))
  offset = offset + 1
  PsUser_UserSetupReq_t_cqiParamsTree:add_le (PsUser_UserSetupReq_t_cqiParams.cqiAperMode_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
