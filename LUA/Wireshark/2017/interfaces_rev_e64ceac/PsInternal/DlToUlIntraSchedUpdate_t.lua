local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_DlToUlIntraSchedUpdate'
end
function module:messageId()
  return 0x0305
end
----------------------------------------------------------------
local PSINTERNAL_DLTOULINTRASCHEDUPDATE_T = Proto('PsInternal_DlToUlIntraSchedUpdate_t', 'PSINTERNAL_DLTOULINTRASCHEDUPDATE_T')
local PsInternal_DlToUlIntraSchedUpdate_t = PSINTERNAL_DLTOULINTRASCHEDUPDATE_T.fields
local PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_SCHEDULEDDLBEAM = Proto('PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam', 'PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_SCHEDULEDDLBEAM')
local PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam = PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_SCHEDULEDDLBEAM.fields
PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.scheduledDlBeam_offset = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.scheduledDlBeam_offset', 'scheduledDlBeam_offset', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.scheduledDlBeam_length = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.scheduledDlBeam_length', 'scheduledDlBeam_length', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.beamId = ProtoField.uint8('PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.beamId', 'beamId', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.beamId_padding = ProtoField.bytes('PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.beamId_padding', 'beamId_padding', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.xsfn = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.xsfn', 'xsfn', base.HEX)
local PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_DBUPDATEARRAY = Proto('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray', 'PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_DBUPDATEARRAY')
local PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray = PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_DBUPDATEARRAY.fields
PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray.dbUpdateArray_offset = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray.dbUpdateArray_offset', 'dbUpdateArray_offset', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray.dbUpdateArray_length = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray.dbUpdateArray_length', 'dbUpdateArray_length', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray.rnti = ProtoField.uint16('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray.rnti', 'rnti', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray.rnti_padding = ProtoField.bytes('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray.rnti_padding', 'rnti_padding', base.HEX)
local PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_DBUPDATEARRAY_UPDATEDATA = Proto('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData', 'PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_DBUPDATEARRAY_UPDATEDATA')
local PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData = PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_DBUPDATEARRAY_UPDATEDATA.fields
PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.ueFsId = ProtoField.uint16('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.ueFsId', 'ueFsId', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.subcellIdFromPrachReceiveInd = ProtoField.uint8('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.subcellIdFromPrachReceiveInd', 'subcellIdFromPrachReceiveInd', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.beamId = ProtoField.uint8('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.beamId', 'beamId', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.rrmXPolBeamIndexLo = ProtoField.uint8('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.rrmXPolBeamIndexLo', 'rrmXPolBeamIndexLo', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.rrmXPolBeamIndexHi = ProtoField.uint8('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.rrmXPolBeamIndexHi', 'rrmXPolBeamIndexHi', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.timeAlignmentTimerDedicated = ProtoField.bytes('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.timeAlignmentTimerDedicated', 'timeAlignmentTimerDedicated', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.maxHARQUI = ProtoField.uint8('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.maxHARQUI', 'maxHARQUI', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.maxHARQUI_padding = ProtoField.bytes('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.maxHARQUI_padding', 'maxHARQUI_padding', base.HEX)
local PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_MSG3TOBESENTARRAY = Proto('PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray', 'PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_MSG3TOBESENTARRAY')
local PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray = PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_MSG3TOBESENTARRAY.fields
PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.msg3ToBeSentArray_offset = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.msg3ToBeSentArray_offset', 'msg3ToBeSentArray_offset', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.msg3ToBeSentArray_length = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.msg3ToBeSentArray_length', 'msg3ToBeSentArray_length', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.rnti = ProtoField.uint16('PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.rnti', 'rnti', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.rnti_padding = ProtoField.bytes('PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.rnti_padding', 'rnti_padding', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.msg3Xsfn = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.msg3Xsfn', 'msg3Xsfn', base.HEX)
local PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_UEDBDELETED = Proto('PsInternal_DlToUlIntraSchedUpdate_t_ueDbDeleted', 'PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_UEDBDELETED')
local PsInternal_DlToUlIntraSchedUpdate_t_ueDbDeleted = PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_UEDBDELETED.fields
PsInternal_DlToUlIntraSchedUpdate_t_ueDbDeleted.ueDbDeleted_offset = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_ueDbDeleted.ueDbDeleted_offset', 'ueDbDeleted_offset', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_ueDbDeleted.ueDbDeleted_length = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_ueDbDeleted.ueDbDeleted_length', 'ueDbDeleted_length', base.HEX)
local PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_SRB0TRIGGERARRAY = Proto('PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray', 'PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_SRB0TRIGGERARRAY')
local PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray = PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_SRB0TRIGGERARRAY.fields
PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray.srb0TriggerArray_offset = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray.srb0TriggerArray_offset', 'srb0TriggerArray_offset', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray.srb0TriggerArray_length = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray.srb0TriggerArray_length', 'srb0TriggerArray_length', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray.rnti = ProtoField.uint16('PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray.rnti', 'rnti', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray.rnti_padding = ProtoField.bytes('PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray.rnti_padding', 'rnti_padding', base.HEX)
local PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_SCHEDULEDTRANSMISSIONS = Proto('PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions', 'PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_SCHEDULEDTRANSMISSIONS')
local PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions = PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_SCHEDULEDTRANSMISSIONS.fields
PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.scheduledTransmissions_offset = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.scheduledTransmissions_offset', 'scheduledTransmissions_offset', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.scheduledTransmissions_length = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.scheduledTransmissions_length', 'scheduledTransmissions_length', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.subCellId = ProtoField.uint8('PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.subCellId', 'subCellId', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.pucchSubframe = ProtoField.uint8('PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.pucchSubframe', 'pucchSubframe', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.rnti = ProtoField.uint16('PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.rnti', 'rnti', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.harqId = ProtoField.uint8('PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.harqId', 'harqId', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.harqId_padding = ProtoField.bytes('PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.harqId_padding', 'harqId_padding', base.HEX)
local PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_ULRANKUPDATEARRAY = Proto('PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray', 'PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_ULRANKUPDATEARRAY')
local PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray = PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_ULRANKUPDATEARRAY.fields
PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.ulRankUpdateArray_offset = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.ulRankUpdateArray_offset', 'ulRankUpdateArray_offset', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.ulRankUpdateArray_length = ProtoField.uint32('PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.ulRankUpdateArray_length', 'ulRankUpdateArray_length', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.rnti = ProtoField.uint16('PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.rnti', 'rnti', base.HEX)
PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.subcellId = ProtoField.uint8('PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.subcellId', 'subcellId', base.DEC)
PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.ulRank = ProtoField.bytes('PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.ulRank', 'ulRank', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_DLTOULINTRASCHEDUPDATE_T, buffer())
  subtree:set_text('PsInternal_DlToUlIntraSchedUpdate_t')
  local PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeamTree = subtree:add (PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_SCHEDULEDDLBEAM, buffer(offset))
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeamTree:set_text('PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam')
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeamTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.scheduledDlBeam_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeamTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.scheduledDlBeam_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeamTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.beamId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeamTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.beamId_padding, buffer(offset, 3))
  offset = offset + 3
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeamTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_scheduledDlBeam.xsfn, buffer(offset, 4))
  offset = offset + 4
  local PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArrayTree = subtree:add (PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_DBUPDATEARRAY, buffer(offset))
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArrayTree:set_text('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray')
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray.dbUpdateArray_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray.dbUpdateArray_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray.rnti, buffer(offset, 2))
  offset = offset + 2
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray.rnti_padding, buffer(offset, 2))
  offset = offset + 2
  local PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateDataTree = PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArrayTree:add (PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_DBUPDATEARRAY_UPDATEDATA, buffer(offset))
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateDataTree:set_text('PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData')
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateDataTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.ueFsId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateDataTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.subcellIdFromPrachReceiveInd, buffer(offset, 1))
  offset = offset + 1
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateDataTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.beamId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateDataTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.rrmXPolBeamIndexLo, buffer(offset, 1))
  offset = offset + 1
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateDataTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.rrmXPolBeamIndexHi, buffer(offset, 1))
  offset = offset + 1
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateDataTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.timeAlignmentTimerDedicated, buffer(offset, 2))
  offset = offset + 2
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateDataTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.maxHARQUI, buffer(offset, 1))
  offset = offset + 1
  PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateDataTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_dbUpdateArray_updateData.maxHARQUI_padding, buffer(offset, 3))
  offset = offset + 3
  local PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArrayTree = subtree:add (PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_MSG3TOBESENTARRAY, buffer(offset))
  PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArrayTree:set_text('PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray')
  PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.msg3ToBeSentArray_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.msg3ToBeSentArray_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.rnti, buffer(offset, 2))
  offset = offset + 2
  PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.rnti_padding, buffer(offset, 2))
  offset = offset + 2
  PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_msg3ToBeSentArray.msg3Xsfn, buffer(offset, 4))
  offset = offset + 4
  local PsInternal_DlToUlIntraSchedUpdate_t_ueDbDeletedTree = subtree:add (PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_UEDBDELETED, buffer(offset))
  PsInternal_DlToUlIntraSchedUpdate_t_ueDbDeletedTree:set_text('PsInternal_DlToUlIntraSchedUpdate_t_ueDbDeleted')
  PsInternal_DlToUlIntraSchedUpdate_t_ueDbDeletedTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_ueDbDeleted.ueDbDeleted_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_DlToUlIntraSchedUpdate_t_ueDbDeletedTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_ueDbDeleted.ueDbDeleted_length, buffer(offset, 4))
  offset = offset + 4
  local PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArrayTree = subtree:add (PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_SRB0TRIGGERARRAY, buffer(offset))
  PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArrayTree:set_text('PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray')
  PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray.srb0TriggerArray_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray.srb0TriggerArray_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray.rnti, buffer(offset, 2))
  offset = offset + 2
  PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_srb0TriggerArray.rnti_padding, buffer(offset, 2))
  offset = offset + 2
  local PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissionsTree = subtree:add (PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_SCHEDULEDTRANSMISSIONS, buffer(offset))
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissionsTree:set_text('PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions')
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissionsTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.scheduledTransmissions_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissionsTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.scheduledTransmissions_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissionsTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.subCellId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissionsTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.pucchSubframe, buffer(offset, 1))
  offset = offset + 1
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissionsTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.rnti, buffer(offset, 2))
  offset = offset + 2
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissionsTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.harqId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissionsTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_scheduledTransmissions.harqId_padding, buffer(offset, 3))
  offset = offset + 3
  local PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArrayTree = subtree:add (PSINTERNAL_DLTOULINTRASCHEDUPDATE_T_ULRANKUPDATEARRAY, buffer(offset))
  PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArrayTree:set_text('PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray')
  PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.ulRankUpdateArray_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.ulRankUpdateArray_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.rnti, buffer(offset, 2))
  offset = offset + 2
  PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.subcellId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArrayTree:add_le (PsInternal_DlToUlIntraSchedUpdate_t_ulRankUpdateArray.ulRank, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
