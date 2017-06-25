local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUeContextModifyReq'
end
function module:messageId()
  return 0x700c
end
----------------------------------------------------------------
local FSHLC_SUECONTEXTMODIFYREQ = Proto('FsHlC_SUeContextModifyReq', 'FSHLC_SUECONTEXTMODIFYREQ')
local FsHlC_SUeContextModifyReq = FSHLC_SUECONTEXTMODIFYREQ.fields
FsHlC_SUeContextModifyReq.messageType = ProtoField.uint16('FsHlC_SUeContextModifyReq.messageType', 'messageType', base.HEX)
FsHlC_SUeContextModifyReq.ueFsId = ProtoField.uint16('FsHlC_SUeContextModifyReq.ueFsId', 'ueFsId', base.HEX)
local FSHLC_SUECONTEXTMODIFYREQ_SRBTOBESETUPLIST = Proto('FsHlC_SUeContextModifyReq_srbToBeSetupList', 'FSHLC_SUECONTEXTMODIFYREQ_SRBTOBESETUPLIST')
local FsHlC_SUeContextModifyReq_srbToBeSetupList = FSHLC_SUECONTEXTMODIFYREQ_SRBTOBESETUPLIST.fields
FsHlC_SUeContextModifyReq_srbToBeSetupList.srbToBeSetupList_length = ProtoField.uint32('FsHlC_SUeContextModifyReq_srbToBeSetupList.srbToBeSetupList_length', 'srbToBeSetupList_length', base.HEX)
FsHlC_SUeContextModifyReq_srbToBeSetupList.l2NrtRadioBearerId = ProtoField.uint8('FsHlC_SUeContextModifyReq_srbToBeSetupList.l2NrtRadioBearerId', 'l2NrtRadioBearerId', base.HEX)
FsHlC_SUeContextModifyReq_srbToBeSetupList.l2NrtRadioBearerId_padding = ProtoField.bytes('FsHlC_SUeContextModifyReq_srbToBeSetupList.l2NrtRadioBearerId_padding', 'l2NrtRadioBearerId_padding', base.HEX)
FsHlC_SUeContextModifyReq_srbToBeSetupList.fronthaulEqid = ProtoField.uint32('FsHlC_SUeContextModifyReq_srbToBeSetupList.fronthaulEqid', 'fronthaulEqid', base.HEX)
local FSHLC_SUECONTEXTMODIFYREQ_SRBTOBESETUPLIST_L2LOCONFIGURATIONCONTAINER = Proto('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer', 'FSHLC_SUECONTEXTMODIFYREQ_SRBTOBESETUPLIST_L2LOCONFIGURATIONCONTAINER')
local FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer = FSHLC_SUECONTEXTMODIFYREQ_SRBTOBESETUPLIST_L2LOCONFIGURATIONCONTAINER.fields
FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer.rlcMode = ProtoField.bytes('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer.rlcMode', 'rlcMode', base.HEX)
FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer.radioBearerIdentity = ProtoField.uint8('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer.radioBearerIdentity', 'radioBearerIdentity', base.HEX)
FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer.logicalChannelGroupId = ProtoField.uint8('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer.logicalChannelGroupId', 'logicalChannelGroupId', base.HEX)
FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer.logicalChannelId = ProtoField.uint8('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer.logicalChannelId', 'logicalChannelId', base.HEX)
local FSHLC_SUECONTEXTMODIFYREQ_SRBTOBESETUPLIST_L2PSCONFIGURATIONCONTAINER = Proto('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer', 'FSHLC_SUECONTEXTMODIFYREQ_SRBTOBESETUPLIST_L2PSCONFIGURATIONCONTAINER')
local FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer = FSHLC_SUECONTEXTMODIFYREQ_SRBTOBESETUPLIST_L2PSCONFIGURATIONCONTAINER.fields
FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.bucketSizeDuration = ProtoField.bytes('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.bucketSizeDuration', 'bucketSizeDuration', base.HEX)
FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.prioritisedBitRate = ProtoField.bytes('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.prioritisedBitRate', 'prioritisedBitRate', base.HEX)
FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.logicalChannelGroupId = ProtoField.uint8('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.logicalChannelGroupId', 'logicalChannelGroupId', base.HEX)
FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.logicalChannelId = ProtoField.uint8('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.logicalChannelId', 'logicalChannelId', base.HEX)
FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.logicalChannelPriority = ProtoField.uint8('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.logicalChannelPriority', 'logicalChannelPriority', base.HEX)
FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.logicalChannelPriority_padding = ProtoField.int8('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.logicalChannelPriority_padding', 'logicalChannelPriority_padding', base.DEC)
local FSHLC_SUECONTEXTMODIFYREQ_DRBTOBESETUPLIST = Proto('FsHlC_SUeContextModifyReq_drbToBeSetupList', 'FSHLC_SUECONTEXTMODIFYREQ_DRBTOBESETUPLIST')
local FsHlC_SUeContextModifyReq_drbToBeSetupList = FSHLC_SUECONTEXTMODIFYREQ_DRBTOBESETUPLIST.fields
FsHlC_SUeContextModifyReq_drbToBeSetupList.drbToBeSetupList_length = ProtoField.uint32('FsHlC_SUeContextModifyReq_drbToBeSetupList.drbToBeSetupList_length', 'drbToBeSetupList_length', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeSetupList.l2NrtRadioBearerId = ProtoField.uint8('FsHlC_SUeContextModifyReq_drbToBeSetupList.l2NrtRadioBearerId', 'l2NrtRadioBearerId', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeSetupList.l2NrtRadioBearerId_padding = ProtoField.bytes('FsHlC_SUeContextModifyReq_drbToBeSetupList.l2NrtRadioBearerId_padding', 'l2NrtRadioBearerId_padding', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeSetupList.fronthaulEqid = ProtoField.uint32('FsHlC_SUeContextModifyReq_drbToBeSetupList.fronthaulEqid', 'fronthaulEqid', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeSetupList.flowControlfronthaulEqid = ProtoField.uint32('FsHlC_SUeContextModifyReq_drbToBeSetupList.flowControlfronthaulEqid', 'flowControlfronthaulEqid', base.HEX)
local FSHLC_SUECONTEXTMODIFYREQ_DRBTOBESETUPLIST_L2LOCONFIGURATIONCONTAINER = Proto('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer', 'FSHLC_SUECONTEXTMODIFYREQ_DRBTOBESETUPLIST_L2LOCONFIGURATIONCONTAINER')
local FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer = FSHLC_SUECONTEXTMODIFYREQ_DRBTOBESETUPLIST_L2LOCONFIGURATIONCONTAINER.fields
FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer.rlcMode = ProtoField.bytes('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer.rlcMode', 'rlcMode', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer.radioBearerIdentity = ProtoField.uint8('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer.radioBearerIdentity', 'radioBearerIdentity', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer.logicalChannelGroupId = ProtoField.uint8('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer.logicalChannelGroupId', 'logicalChannelGroupId', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer.logicalChannelId = ProtoField.uint8('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer.logicalChannelId', 'logicalChannelId', base.HEX)
local FSHLC_SUECONTEXTMODIFYREQ_DRBTOBESETUPLIST_L2PSCONFIGURATIONCONTAINER = Proto('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer', 'FSHLC_SUECONTEXTMODIFYREQ_DRBTOBESETUPLIST_L2PSCONFIGURATIONCONTAINER')
local FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer = FSHLC_SUECONTEXTMODIFYREQ_DRBTOBESETUPLIST_L2PSCONFIGURATIONCONTAINER.fields
FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.bucketSizeDuration = ProtoField.bytes('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.bucketSizeDuration', 'bucketSizeDuration', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.prioritisedBitRate = ProtoField.bytes('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.prioritisedBitRate', 'prioritisedBitRate', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.logicalChannelGroupId = ProtoField.uint8('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.logicalChannelGroupId', 'logicalChannelGroupId', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.logicalChannelId = ProtoField.uint8('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.logicalChannelId', 'logicalChannelId', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.logicalChannelPriority = ProtoField.uint8('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.logicalChannelPriority', 'logicalChannelPriority', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.logicalChannelPriority_padding = ProtoField.int8('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.logicalChannelPriority_padding', 'logicalChannelPriority_padding', base.DEC)
local FSHLC_SUECONTEXTMODIFYREQ_DLTRANSMISSIONMODE = Proto('FsHlC_SUeContextModifyReq_dlTransmissionMode', 'FSHLC_SUECONTEXTMODIFYREQ_DLTRANSMISSIONMODE')
local FsHlC_SUeContextModifyReq_dlTransmissionMode = FSHLC_SUECONTEXTMODIFYREQ_DLTRANSMISSIONMODE.fields
FsHlC_SUeContextModifyReq_dlTransmissionMode.dlTransmissionMode_length = ProtoField.uint32('FsHlC_SUeContextModifyReq_dlTransmissionMode.dlTransmissionMode_length', 'dlTransmissionMode_length', base.HEX)
FsHlC_SUeContextModifyReq_dlTransmissionMode.dlTransmissionMode_values = ProtoField.uint8('FsHlC_SUeContextModifyReq_dlTransmissionMode.dlTransmissionMode_values', 'dlTransmissionMode_values', base.HEX)
local FSHLC_SUECONTEXTMODIFYREQ_ULTRANSMISSIONMODE = Proto('FsHlC_SUeContextModifyReq_ulTransmissionMode', 'FSHLC_SUECONTEXTMODIFYREQ_ULTRANSMISSIONMODE')
local FsHlC_SUeContextModifyReq_ulTransmissionMode = FSHLC_SUECONTEXTMODIFYREQ_ULTRANSMISSIONMODE.fields
FsHlC_SUeContextModifyReq_ulTransmissionMode.ulTransmissionMode_length = ProtoField.uint32('FsHlC_SUeContextModifyReq_ulTransmissionMode.ulTransmissionMode_length', 'ulTransmissionMode_length', base.HEX)
FsHlC_SUeContextModifyReq_ulTransmissionMode.ulTransmissionMode_values = ProtoField.uint8('FsHlC_SUeContextModifyReq_ulTransmissionMode.ulTransmissionMode_values', 'ulTransmissionMode_values', base.HEX)
local FSHLC_SUECONTEXTMODIFYREQ_DRBTOBERELEASEDLIST = Proto('FsHlC_SUeContextModifyReq_drbToBeReleasedList', 'FSHLC_SUECONTEXTMODIFYREQ_DRBTOBERELEASEDLIST')
local FsHlC_SUeContextModifyReq_drbToBeReleasedList = FSHLC_SUECONTEXTMODIFYREQ_DRBTOBERELEASEDLIST.fields
FsHlC_SUeContextModifyReq_drbToBeReleasedList.drbToBeReleasedList_length = ProtoField.uint32('FsHlC_SUeContextModifyReq_drbToBeReleasedList.drbToBeReleasedList_length', 'drbToBeReleasedList_length', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeReleasedList.ueFsId = ProtoField.uint16('FsHlC_SUeContextModifyReq_drbToBeReleasedList.ueFsId', 'ueFsId', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeReleasedList.logicalChannelId = ProtoField.uint8('FsHlC_SUeContextModifyReq_drbToBeReleasedList.logicalChannelId', 'logicalChannelId', base.HEX)
FsHlC_SUeContextModifyReq_drbToBeReleasedList.logicalChannelId_padding = ProtoField.int8('FsHlC_SUeContextModifyReq_drbToBeReleasedList.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
local FSHLC_SUECONTEXTMODIFYREQ_SCELLTOADDITEM = Proto('FsHlC_SUeContextModifyReq_sCellToAddItem', 'FSHLC_SUECONTEXTMODIFYREQ_SCELLTOADDITEM')
local FsHlC_SUeContextModifyReq_sCellToAddItem = FSHLC_SUECONTEXTMODIFYREQ_SCELLTOADDITEM.fields
FsHlC_SUeContextModifyReq_sCellToAddItem.sCellToAddItem_length = ProtoField.uint32('FsHlC_SUeContextModifyReq_sCellToAddItem.sCellToAddItem_length', 'sCellToAddItem_length', base.HEX)
FsHlC_SUeContextModifyReq_sCellToAddItem.ngutraCellId = ProtoField.uint32('FsHlC_SUeContextModifyReq_sCellToAddItem.ngutraCellId', 'ngutraCellId', base.HEX)
FsHlC_SUeContextModifyReq_sCellToAddItem.subCellId = ProtoField.uint8('FsHlC_SUeContextModifyReq_sCellToAddItem.subCellId', 'subCellId', base.HEX)
FsHlC_SUeContextModifyReq_sCellToAddItem.subCellId_padding = ProtoField.bytes('FsHlC_SUeContextModifyReq_sCellToAddItem.subCellId_padding', 'subCellId_padding', base.HEX)
local FSHLC_SUECONTEXTMODIFYREQ_CQIAPERMODE = Proto('FsHlC_SUeContextModifyReq_cqiAperMode', 'FSHLC_SUECONTEXTMODIFYREQ_CQIAPERMODE')
local FsHlC_SUeContextModifyReq_cqiAperMode = FSHLC_SUECONTEXTMODIFYREQ_CQIAPERMODE.fields
FsHlC_SUeContextModifyReq_cqiAperMode.cqiAperMode_length = ProtoField.uint32('FsHlC_SUeContextModifyReq_cqiAperMode.cqiAperMode_length', 'cqiAperMode_length', base.HEX)
FsHlC_SUeContextModifyReq_cqiAperMode.cqiAperMode_values = ProtoField.uint8('FsHlC_SUeContextModifyReq_cqiAperMode.cqiAperMode_values', 'cqiAperMode_values', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUECONTEXTMODIFYREQ, buffer())
  subtree:set_text('FsHlC_SUeContextModifyReq')
  subtree:add_le (FsHlC_SUeContextModifyReq.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUeContextModifyReq.ueFsId, buffer(offset, 2))
  offset = offset + 2
  local FsHlC_SUeContextModifyReq_srbToBeSetupListTree = subtree:add (FSHLC_SUECONTEXTMODIFYREQ_SRBTOBESETUPLIST, buffer(offset))
  FsHlC_SUeContextModifyReq_srbToBeSetupListTree:set_text('FsHlC_SUeContextModifyReq_srbToBeSetupList')
  FsHlC_SUeContextModifyReq_srbToBeSetupListTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList.srbToBeSetupList_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SUeContextModifyReq_srbToBeSetupListTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList.l2NrtRadioBearerId, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_srbToBeSetupListTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList.l2NrtRadioBearerId_padding, buffer(offset, 3))
  offset = offset + 3
  FsHlC_SUeContextModifyReq_srbToBeSetupListTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList.fronthaulEqid, buffer(offset, 4))
  offset = offset + 4
  local FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainerTree = FsHlC_SUeContextModifyReq_srbToBeSetupListTree:add (FSHLC_SUECONTEXTMODIFYREQ_SRBTOBESETUPLIST_L2LOCONFIGURATIONCONTAINER, buffer(offset))
  FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainerTree:set_text('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer')
  FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer.rlcMode, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer.radioBearerIdentity, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer.logicalChannelGroupId, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList_l2LoConfigurationContainer.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  local FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainerTree = FsHlC_SUeContextModifyReq_srbToBeSetupListTree:add (FSHLC_SUECONTEXTMODIFYREQ_SRBTOBESETUPLIST_L2PSCONFIGURATIONCONTAINER, buffer(offset))
  FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainerTree:set_text('FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer')
  FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.bucketSizeDuration, buffer(offset, 2))
  offset = offset + 2
  FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.prioritisedBitRate, buffer(offset, 2))
  offset = offset + 2
  FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.logicalChannelGroupId, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.logicalChannelPriority, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_srbToBeSetupList_l2PsConfigurationContainer.logicalChannelPriority_padding, buffer(offset, 1))
  offset = offset + 1
  local FsHlC_SUeContextModifyReq_drbToBeSetupListTree = subtree:add (FSHLC_SUECONTEXTMODIFYREQ_DRBTOBESETUPLIST, buffer(offset))
  FsHlC_SUeContextModifyReq_drbToBeSetupListTree:set_text('FsHlC_SUeContextModifyReq_drbToBeSetupList')
  FsHlC_SUeContextModifyReq_drbToBeSetupListTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList.drbToBeSetupList_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SUeContextModifyReq_drbToBeSetupListTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList.l2NrtRadioBearerId, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_drbToBeSetupListTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList.l2NrtRadioBearerId_padding, buffer(offset, 3))
  offset = offset + 3
  FsHlC_SUeContextModifyReq_drbToBeSetupListTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList.fronthaulEqid, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SUeContextModifyReq_drbToBeSetupListTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList.flowControlfronthaulEqid, buffer(offset, 4))
  offset = offset + 4
  local FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainerTree = FsHlC_SUeContextModifyReq_drbToBeSetupListTree:add (FSHLC_SUECONTEXTMODIFYREQ_DRBTOBESETUPLIST_L2LOCONFIGURATIONCONTAINER, buffer(offset))
  FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainerTree:set_text('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer')
  FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer.rlcMode, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer.radioBearerIdentity, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer.logicalChannelGroupId, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList_l2LoConfigurationContainer.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  local FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainerTree = FsHlC_SUeContextModifyReq_drbToBeSetupListTree:add (FSHLC_SUECONTEXTMODIFYREQ_DRBTOBESETUPLIST_L2PSCONFIGURATIONCONTAINER, buffer(offset))
  FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainerTree:set_text('FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer')
  FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.bucketSizeDuration, buffer(offset, 2))
  offset = offset + 2
  FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.prioritisedBitRate, buffer(offset, 2))
  offset = offset + 2
  FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.logicalChannelGroupId, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.logicalChannelPriority, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainerTree:add_le (FsHlC_SUeContextModifyReq_drbToBeSetupList_l2PsConfigurationContainer.logicalChannelPriority_padding, buffer(offset, 1))
  offset = offset + 1
  local FsHlC_SUeContextModifyReq_dlTransmissionModeTree = subtree:add (FSHLC_SUECONTEXTMODIFYREQ_DLTRANSMISSIONMODE, buffer(offset))
  FsHlC_SUeContextModifyReq_dlTransmissionModeTree:set_text('FsHlC_SUeContextModifyReq_dlTransmissionMode')
  FsHlC_SUeContextModifyReq_dlTransmissionModeTree:add_le (FsHlC_SUeContextModifyReq_dlTransmissionMode.dlTransmissionMode_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SUeContextModifyReq_dlTransmissionModeTree:add_le (FsHlC_SUeContextModifyReq_dlTransmissionMode.dlTransmissionMode_values, buffer(offset, ( (msglen >= 4) and 4 or (msglen-offset) )))
  offset = offset + ( (msglen >= 4) and 4 or (msglen-offset) )
  local FsHlC_SUeContextModifyReq_ulTransmissionModeTree = subtree:add (FSHLC_SUECONTEXTMODIFYREQ_ULTRANSMISSIONMODE, buffer(offset))
  FsHlC_SUeContextModifyReq_ulTransmissionModeTree:set_text('FsHlC_SUeContextModifyReq_ulTransmissionMode')
  FsHlC_SUeContextModifyReq_ulTransmissionModeTree:add_le (FsHlC_SUeContextModifyReq_ulTransmissionMode.ulTransmissionMode_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SUeContextModifyReq_ulTransmissionModeTree:add_le (FsHlC_SUeContextModifyReq_ulTransmissionMode.ulTransmissionMode_values, buffer(offset, ( (msglen >= 4) and 4 or (msglen-offset) )))
  offset = offset + ( (msglen >= 4) and 4 or (msglen-offset) )
  local FsHlC_SUeContextModifyReq_drbToBeReleasedListTree = subtree:add (FSHLC_SUECONTEXTMODIFYREQ_DRBTOBERELEASEDLIST, buffer(offset))
  FsHlC_SUeContextModifyReq_drbToBeReleasedListTree:set_text('FsHlC_SUeContextModifyReq_drbToBeReleasedList')
  FsHlC_SUeContextModifyReq_drbToBeReleasedListTree:add_le (FsHlC_SUeContextModifyReq_drbToBeReleasedList.drbToBeReleasedList_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SUeContextModifyReq_drbToBeReleasedListTree:add_le (FsHlC_SUeContextModifyReq_drbToBeReleasedList.ueFsId, buffer(offset, 2))
  offset = offset + 2
  FsHlC_SUeContextModifyReq_drbToBeReleasedListTree:add_le (FsHlC_SUeContextModifyReq_drbToBeReleasedList.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_drbToBeReleasedListTree:add_le (FsHlC_SUeContextModifyReq_drbToBeReleasedList.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
  local FsHlC_SUeContextModifyReq_sCellToAddItemTree = subtree:add (FSHLC_SUECONTEXTMODIFYREQ_SCELLTOADDITEM, buffer(offset))
  FsHlC_SUeContextModifyReq_sCellToAddItemTree:set_text('FsHlC_SUeContextModifyReq_sCellToAddItem')
  FsHlC_SUeContextModifyReq_sCellToAddItemTree:add_le (FsHlC_SUeContextModifyReq_sCellToAddItem.sCellToAddItem_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SUeContextModifyReq_sCellToAddItemTree:add_le (FsHlC_SUeContextModifyReq_sCellToAddItem.ngutraCellId, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SUeContextModifyReq_sCellToAddItemTree:add_le (FsHlC_SUeContextModifyReq_sCellToAddItem.subCellId, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SUeContextModifyReq_sCellToAddItemTree:add_le (FsHlC_SUeContextModifyReq_sCellToAddItem.subCellId_padding, buffer(offset, 3))
  offset = offset + 3
  local FsHlC_SUeContextModifyReq_cqiAperModeTree = subtree:add (FSHLC_SUECONTEXTMODIFYREQ_CQIAPERMODE, buffer(offset))
  FsHlC_SUeContextModifyReq_cqiAperModeTree:set_text('FsHlC_SUeContextModifyReq_cqiAperMode')
  FsHlC_SUeContextModifyReq_cqiAperModeTree:add_le (FsHlC_SUeContextModifyReq_cqiAperMode.cqiAperMode_length, buffer(offset, 4))
  offset = offset + 4
  FsHlC_SUeContextModifyReq_cqiAperModeTree:add_le (FsHlC_SUeContextModifyReq_cqiAperMode.cqiAperMode_values, buffer(offset, ( (msglen >= 4) and 4 or (msglen-offset) )))
  offset = offset + ( (msglen >= 4) and 4 or (msglen-offset) )
end
----------------------------------------------------------------
return module
