local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_IntraTtiDlToUlSchedComm'
end
function module:messageId()
  return 0x0320
end
----------------------------------------------------------------
local PSINTERNAL_INTRATTIDLTOULSCHEDCOMM_T = Proto('PsInternal_IntraTtiDlToUlSchedComm_t', 'PSINTERNAL_INTRATTIDLTOULSCHEDCOMM_T')
local PsInternal_IntraTtiDlToUlSchedComm_t = PSINTERNAL_INTRATTIDLTOULSCHEDCOMM_T.fields
local PSINTERNAL_INTRATTIDLTOULSCHEDCOMM_T_BEAMIDFORB3 = Proto('PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3', 'PSINTERNAL_INTRATTIDLTOULSCHEDCOMM_T_BEAMIDFORB3')
local PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3 = PSINTERNAL_INTRATTIDLTOULSCHEDCOMM_T_BEAMIDFORB3.fields
PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3.beamId = ProtoField.uint8('PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3.beamId', 'beamId', base.HEX)
PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3.beamId_padding = ProtoField.bytes('PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3.beamId_padding', 'beamId_padding', base.HEX)
PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3.xsfn = ProtoField.uint32('PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3.xsfn', 'xsfn', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_INTRATTIDLTOULSCHEDCOMM_T, buffer())
  subtree:set_text('PsInternal_IntraTtiDlToUlSchedComm_t')
  local PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3Tree = subtree:add (PSINTERNAL_INTRATTIDLTOULSCHEDCOMM_T_BEAMIDFORB3, buffer(offset))
  PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3Tree:set_text('PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3')
  PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3Tree:add_le (PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3.beamId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3Tree:add_le (PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3.beamId_padding, buffer(offset, 3))
  offset = offset + 3
  PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3Tree:add_le (PsInternal_IntraTtiDlToUlSchedComm_t_beamIdForB3.xsfn, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
