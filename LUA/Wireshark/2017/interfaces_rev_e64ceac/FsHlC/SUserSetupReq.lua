local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUserSetupReq'
end
function module:messageId()
  return 0x7011
end
----------------------------------------------------------------
local FSHLC_SUSERSETUPREQ = Proto('FsHlC_SUserSetupReq', 'FSHLC_SUSERSETUPREQ')
local FsHlC_SUserSetupReq = FSHLC_SUSERSETUPREQ.fields
FsHlC_SUserSetupReq.messageType = ProtoField.uint16('FsHlC_SUserSetupReq.messageType', 'messageType', base.HEX)
FsHlC_SUserSetupReq.ueFsId = ProtoField.uint16('FsHlC_SUserSetupReq.ueFsId', 'ueFsId', base.HEX)
FsHlC_SUserSetupReq.cRnti = ProtoField.uint16('FsHlC_SUserSetupReq.cRnti', 'cRnti', base.HEX)
FsHlC_SUserSetupReq.cRnti_padding = ProtoField.bytes('FsHlC_SUserSetupReq.cRnti_padding', 'cRnti_padding', base.HEX)
FsHlC_SUserSetupReq.ngutranCellId = ProtoField.uint32('FsHlC_SUserSetupReq.ngutranCellId', 'ngutranCellId', base.HEX)
FsHlC_SUserSetupReq.subCellId = ProtoField.uint8('FsHlC_SUserSetupReq.subCellId', 'subCellId', base.HEX)
FsHlC_SUserSetupReq.ueAddCause = ProtoField.bytes('FsHlC_SUserSetupReq.ueAddCause', 'ueAddCause', base.HEX)
FsHlC_SUserSetupReq.timeAlignmentTimerDedicated = ProtoField.bytes('FsHlC_SUserSetupReq.timeAlignmentTimerDedicated', 'timeAlignmentTimerDedicated', base.HEX)
FsHlC_SUserSetupReq.dlTransmissionMode = ProtoField.bytes('FsHlC_SUserSetupReq.dlTransmissionMode', 'dlTransmissionMode', base.HEX)
FsHlC_SUserSetupReq.ulTransmissionMode = ProtoField.bytes('FsHlC_SUserSetupReq.ulTransmissionMode', 'ulTransmissionMode', base.HEX)
FsHlC_SUserSetupReq.ulTransmissionMode_padding = ProtoField.bytes('FsHlC_SUserSetupReq.ulTransmissionMode_padding', 'ulTransmissionMode_padding', base.HEX)
local FSHLC_SUSERSETUPREQ_SRBADDREQLO = Proto('FsHlC_SUserSetupReq_srbAddReqLo', 'FSHLC_SUSERSETUPREQ_SRBADDREQLO')
local FsHlC_SUserSetupReq_srbAddReqLo = FSHLC_SUSERSETUPREQ_SRBADDREQLO.fields
FsHlC_SUserSetupReq_srbAddReqLo.srbAddReqLo_length = ProtoField.uint32('FsHlC_SUserSetupReq_srbAddReqLo.srbAddReqLo_length', 'srbAddReqLo_length', base.HEX)
FsHlC_SUserSetupReq_srbAddReqLo.logicalChannelId = ProtoField.uint8('FsHlC_SUserSetupReq_srbAddReqLo.logicalChannelId', 'logicalChannelId', base.HEX)
FsHlC_SUserSetupReq_srbAddReqLo.logicalChannelGroupId = ProtoField.uint8('FsHlC_SUserSetupReq_srbAddReqLo.logicalChannelGroupId', 'logicalChannelGroupId', base.HEX)
FsHlC_SUserSetupReq_srbAddReqLo.bearerIndex = ProtoField.uint16('FsHlC_SUserSetupReq_srbAddReqLo.bearerIndex', 'bearerIndex', base.HEX)
FsHlC_SUserSetupReq_srbAddReqLo.loDataUlRlcPduReceiverAddress = ProtoField.uint32('FsHlC_SUserSetupReq_srbAddReqLo.loDataUlRlcPduReceiverAddress', 'loDataUlRlcPduReceiverAddress', base.HEX)
local FSHLC_SUSERSETUPREQ_RRCMSGDATA = Proto('FsHlC_SUserSetupReq_rrcMsgData', 'FSHLC_SUSERSETUPREQ_RRCMSGDATA')
local FsHlC_SUserSetupReq_rrcMsgData = FSHLC_SUSERSETUPREQ_RRCMSGDATA.fields
FsHlC_SUserSetupReq_rrcMsgData.rrcMsgData_length = ProtoField.uint32('FsHlC_SUserSetupReq_rrcMsgData.rrcMsgData_length', 'rrcMsgData_length', base.HEX)
FsHlC_SUserSetupReq_rrcMsgData.rrcMsgData_values = ProtoField.bytes('FsHlC_SUserSetupReq_rrcMsgData.rrcMsgData_values', 'rrcMsgData_values', base.HEX)
local FSHLC_SUSERSETUPREQ_CQIPARAMS = Proto('FsHlC_SUserSetupReq_cqiParams', 'FSHLC_SUSERSETUPREQ_CQIPARAMS')
local FsHlC_SUserSetupReq_cqiParams = FSHLC_SUSERSETUPREQ_CQIPARAMS.fields
FsHlC_SUserSetupReq_cqiParams.cqiParams_length = ProtoField.uint32('FsHlC_SUserSetupReq_cqiParams.cqiParams_length', 'cqiParams_length', base.HEX)
FsHlC_SUserSetupReq_cqiParams.pcRatio = ProtoField.int8('FsHlC_SUserSetupReq_cqiParams.pcRatio', 'pcRatio', base.DEC)
FsHlC_SUserSetupReq_cqiParams.pcRatio_padding = ProtoField.int8('FsHlC_SUserSetupReq_cqiParams.pcRatio_padding', 'pcRatio_padding', base.DEC)
FsHlC_SUserSetupReq_cqiParams.resourceConfig = ProtoField.uint16('FsHlC_SUserSetupReq_cqiParams.resourceConfig', 'resourceConfig', base.HEX)
FsHlC_SUserSetupReq_cqiParams.scramblingIdentity = ProtoField.uint16('FsHlC_SUserSetupReq_cqiParams.scramblingIdentity', 'scramblingIdentity', base.HEX)
FsHlC_SUserSetupReq_cqiParams.cqiAperMode = ProtoField.bytes('FsHlC_SUserSetupReq_cqiParams.cqiAperMode', 'cqiAperMode', base.HEX)
FsHlC_SUserSetupReq_cqiParams.cqiAperMode_padding = ProtoField.int8('FsHlC_SUserSetupReq_cqiParams.cqiAperMode_padding', 'cqiAperMode_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUSERSETUPREQ, buffer())
  subtree:set_text('FsHlC_SUserSetupReq')
  subtree:add_le (FsHlC_SUserSetupReq.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUserSetupReq.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUserSetupReq.cRnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUserSetupReq.cRnti_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUserSetupReq.ngutranCellId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (FsHlC_SUserSetupReq.subCellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (FsHlC_SUserSetupReq.ueAddCause, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (FsHlC_SUserSetupReq.timeAlignmentTimerDedicated, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUserSetupReq.dlTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (FsHlC_SUserSetupReq.ulTransmissionMode, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (FsHlC_SUserSetupReq.ulTransmissionMode_padding, buffer(offset, 2))
  offset = offset + 2
  local FsHlC_SUserSetupReq_srbAddReqLoTree = subtree:add (FSHLC_SUSERSETUPREQ_SRBADDREQLO, buffer(offset))
  FsHlC_SUserSetupReq_srbAddReqLoTree:set_text('FsHlC_SUserSetupReq_srbAddReqLo')
  FsHlC_SUserSetupReq_srbAddReqLoTree:add_le (FsHlC_SUserSetupReq_srbAddReqLo.srbAddReqLo_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SUserSetupReq_srbAddReqLoTree:add_le (FsHlC_SUserSetupReq_srbAddReqLo.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUserSetupReq_srbAddReqLoTree:add_le (FsHlC_SUserSetupReq_srbAddReqLo.logicalChannelGroupId, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUserSetupReq_srbAddReqLoTree:add_le (FsHlC_SUserSetupReq_srbAddReqLo.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  FsHlC_SUserSetupReq_srbAddReqLoTree:add_le (FsHlC_SUserSetupReq_srbAddReqLo.loDataUlRlcPduReceiverAddress, buffer(offset, 4))
  offset = offset + 4
  local FsHlC_SUserSetupReq_rrcMsgDataTree = subtree:add (FSHLC_SUSERSETUPREQ_RRCMSGDATA, buffer(offset))
  FsHlC_SUserSetupReq_rrcMsgDataTree:set_text('FsHlC_SUserSetupReq_rrcMsgData')
  FsHlC_SUserSetupReq_rrcMsgDataTree:add_le (FsHlC_SUserSetupReq_rrcMsgData.rrcMsgData_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SUserSetupReq_rrcMsgDataTree:add_le (FsHlC_SUserSetupReq_rrcMsgData.rrcMsgData_values, buffer(offset, ( (msglen >= 232) and 232 or (msglen-offset) )))
  offset = offset + ( (msglen >= 232) and 232 or (msglen-offset) )
  local FsHlC_SUserSetupReq_cqiParamsTree = subtree:add (FSHLC_SUSERSETUPREQ_CQIPARAMS, buffer(offset))
  FsHlC_SUserSetupReq_cqiParamsTree:set_text('FsHlC_SUserSetupReq_cqiParams')
  FsHlC_SUserSetupReq_cqiParamsTree:add_le (FsHlC_SUserSetupReq_cqiParams.cqiParams_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SUserSetupReq_cqiParamsTree:add_le (FsHlC_SUserSetupReq_cqiParams.pcRatio, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUserSetupReq_cqiParamsTree:add_le (FsHlC_SUserSetupReq_cqiParams.pcRatio_padding, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUserSetupReq_cqiParamsTree:add_le (FsHlC_SUserSetupReq_cqiParams.resourceConfig, buffer(offset, 2))
  offset = offset + 2
  FsHlC_SUserSetupReq_cqiParamsTree:add_le (FsHlC_SUserSetupReq_cqiParams.scramblingIdentity, buffer(offset, 2))
  offset = offset + 2
  FsHlC_SUserSetupReq_cqiParamsTree:add_le (FsHlC_SUserSetupReq_cqiParams.cqiAperMode, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUserSetupReq_cqiParamsTree:add_le (FsHlC_SUserSetupReq_cqiParams.cqiAperMode_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
