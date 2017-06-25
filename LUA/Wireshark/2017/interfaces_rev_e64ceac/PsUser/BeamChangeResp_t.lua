local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_BeamChangeResp'
end
function module:messageId()
  return 0x0973
end
----------------------------------------------------------------
local PSUSER_BEAMCHANGERESP_T = Proto('PsUser_BeamChangeResp_t', 'PSUSER_BEAMCHANGERESP_T')
local PsUser_BeamChangeResp_t = PSUSER_BEAMCHANGERESP_T.fields
local PSUSER_BEAMCHANGERESP_T_MESSAGERESULT = Proto('PsUser_BeamChangeResp_t_messageResult', 'PSUSER_BEAMCHANGERESP_T_MESSAGERESULT')
local PsUser_BeamChangeResp_t_messageResult = PSUSER_BEAMCHANGERESP_T_MESSAGERESULT.fields
PsUser_BeamChangeResp_t_messageResult.status = ProtoField.bytes('PsUser_BeamChangeResp_t_messageResult.status', 'status', base.HEX)
PsUser_BeamChangeResp_t_messageResult.status_padding = ProtoField.bytes('PsUser_BeamChangeResp_t_messageResult.status_padding', 'status_padding', base.HEX)
PsUser_BeamChangeResp_t_messageResult.cause = ProtoField.uint32('PsUser_BeamChangeResp_t_messageResult.cause', 'cause', base.HEX)
PsUser_BeamChangeResp_t.ueFsId = ProtoField.uint16('PsUser_BeamChangeResp_t.ueFsId', 'ueFsId', base.HEX)
PsUser_BeamChangeResp_t.ueFsId_padding = ProtoField.bytes('PsUser_BeamChangeResp_t.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_BEAMCHANGERESP_T, buffer())
  subtree:set_text('PsUser_BeamChangeResp_t')
  local PsUser_BeamChangeResp_t_messageResultTree = subtree:add (PSUSER_BEAMCHANGERESP_T_MESSAGERESULT, buffer(offset))
  PsUser_BeamChangeResp_t_messageResultTree:set_text('PsUser_BeamChangeResp_t_messageResult')
  PsUser_BeamChangeResp_t_messageResultTree:add_le (PsUser_BeamChangeResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsUser_BeamChangeResp_t_messageResultTree:add_le (PsUser_BeamChangeResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsUser_BeamChangeResp_t_messageResultTree:add_le (PsUser_BeamChangeResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsUser_BeamChangeResp_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsUser_BeamChangeResp_t.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
