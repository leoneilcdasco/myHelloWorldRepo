local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_UlToDlIntraSchedUpdate'
end
function module:messageId()
  return 0x0306
end
----------------------------------------------------------------
local PSINTERNAL_ULTODLINTRASCHEDUPDATE_T = Proto('PsInternal_UlToDlIntraSchedUpdate_t', 'PSINTERNAL_ULTODLINTRASCHEDUPDATE_T')
local PsInternal_UlToDlIntraSchedUpdate_t = PSINTERNAL_ULTODLINTRASCHEDUPDATE_T.fields
local PSINTERNAL_ULTODLINTRASCHEDUPDATE_T_SCHEDULEDULBEAM = Proto('PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeam', 'PSINTERNAL_ULTODLINTRASCHEDUPDATE_T_SCHEDULEDULBEAM')
local PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeam = PSINTERNAL_ULTODLINTRASCHEDUPDATE_T_SCHEDULEDULBEAM.fields
PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeam.beamId = ProtoField.uint8('PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeam.beamId', 'beamId', base.HEX)
PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeam.beamId_padding = ProtoField.bytes('PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeam.beamId_padding', 'beamId_padding', base.HEX)
PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeam.xsfn = ProtoField.uint32('PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeam.xsfn', 'xsfn', base.HEX)
local PSINTERNAL_ULTODLINTRASCHEDUPDATE_T_SUCCESSFULMSG3UES = Proto('PsInternal_UlToDlIntraSchedUpdate_t_successfulMsg3Ues', 'PSINTERNAL_ULTODLINTRASCHEDUPDATE_T_SUCCESSFULMSG3UES')
local PsInternal_UlToDlIntraSchedUpdate_t_successfulMsg3Ues = PSINTERNAL_ULTODLINTRASCHEDUPDATE_T_SUCCESSFULMSG3UES.fields
PsInternal_UlToDlIntraSchedUpdate_t_successfulMsg3Ues.successfulMsg3Ues_offset = ProtoField.uint32('PsInternal_UlToDlIntraSchedUpdate_t_successfulMsg3Ues.successfulMsg3Ues_offset', 'successfulMsg3Ues_offset', base.HEX)
PsInternal_UlToDlIntraSchedUpdate_t_successfulMsg3Ues.successfulMsg3Ues_length = ProtoField.uint32('PsInternal_UlToDlIntraSchedUpdate_t_successfulMsg3Ues.successfulMsg3Ues_length', 'successfulMsg3Ues_length', base.HEX)
local PSINTERNAL_ULTODLINTRASCHEDUPDATE_T_UNSUCCESSFULMSG3UES = Proto('PsInternal_UlToDlIntraSchedUpdate_t_unSuccessfulMsg3Ues', 'PSINTERNAL_ULTODLINTRASCHEDUPDATE_T_UNSUCCESSFULMSG3UES')
local PsInternal_UlToDlIntraSchedUpdate_t_unSuccessfulMsg3Ues = PSINTERNAL_ULTODLINTRASCHEDUPDATE_T_UNSUCCESSFULMSG3UES.fields
PsInternal_UlToDlIntraSchedUpdate_t_unSuccessfulMsg3Ues.unSuccessfulMsg3Ues_offset = ProtoField.uint32('PsInternal_UlToDlIntraSchedUpdate_t_unSuccessfulMsg3Ues.unSuccessfulMsg3Ues_offset', 'unSuccessfulMsg3Ues_offset', base.HEX)
PsInternal_UlToDlIntraSchedUpdate_t_unSuccessfulMsg3Ues.unSuccessfulMsg3Ues_length = ProtoField.uint32('PsInternal_UlToDlIntraSchedUpdate_t_unSuccessfulMsg3Ues.unSuccessfulMsg3Ues_length', 'unSuccessfulMsg3Ues_length', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_ULTODLINTRASCHEDUPDATE_T, buffer())
  subtree:set_text('PsInternal_UlToDlIntraSchedUpdate_t')
  local PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeamTree = subtree:add (PSINTERNAL_ULTODLINTRASCHEDUPDATE_T_SCHEDULEDULBEAM, buffer(offset))
  PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeamTree:set_text('PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeam')
  PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeamTree:add_le (PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeam.beamId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeamTree:add_le (PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeam.beamId_padding, buffer(offset, 3))
  offset = offset + 3
  PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeamTree:add_le (PsInternal_UlToDlIntraSchedUpdate_t_scheduledUlBeam.xsfn, buffer(offset, 4))
  offset = offset + 4
  local PsInternal_UlToDlIntraSchedUpdate_t_successfulMsg3UesTree = subtree:add (PSINTERNAL_ULTODLINTRASCHEDUPDATE_T_SUCCESSFULMSG3UES, buffer(offset))
  PsInternal_UlToDlIntraSchedUpdate_t_successfulMsg3UesTree:set_text('PsInternal_UlToDlIntraSchedUpdate_t_successfulMsg3Ues')
  PsInternal_UlToDlIntraSchedUpdate_t_successfulMsg3UesTree:add_le (PsInternal_UlToDlIntraSchedUpdate_t_successfulMsg3Ues.successfulMsg3Ues_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UlToDlIntraSchedUpdate_t_successfulMsg3UesTree:add_le (PsInternal_UlToDlIntraSchedUpdate_t_successfulMsg3Ues.successfulMsg3Ues_length, buffer(offset, 4))
  offset = offset + 4
  local PsInternal_UlToDlIntraSchedUpdate_t_unSuccessfulMsg3UesTree = subtree:add (PSINTERNAL_ULTODLINTRASCHEDUPDATE_T_UNSUCCESSFULMSG3UES, buffer(offset))
  PsInternal_UlToDlIntraSchedUpdate_t_unSuccessfulMsg3UesTree:set_text('PsInternal_UlToDlIntraSchedUpdate_t_unSuccessfulMsg3Ues')
  PsInternal_UlToDlIntraSchedUpdate_t_unSuccessfulMsg3UesTree:add_le (PsInternal_UlToDlIntraSchedUpdate_t_unSuccessfulMsg3Ues.unSuccessfulMsg3Ues_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UlToDlIntraSchedUpdate_t_unSuccessfulMsg3UesTree:add_le (PsInternal_UlToDlIntraSchedUpdate_t_unSuccessfulMsg3Ues.unSuccessfulMsg3Ues_length, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
