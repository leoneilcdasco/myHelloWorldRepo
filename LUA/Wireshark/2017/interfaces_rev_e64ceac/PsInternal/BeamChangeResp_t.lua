local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_BeamChangeResp'
end
function module:messageId()
  return 0x031b
end
----------------------------------------------------------------
local PSINTERNAL_BEAMCHANGERESP_T = Proto('PsInternal_BeamChangeResp_t', 'PSINTERNAL_BEAMCHANGERESP_T')
local PsInternal_BeamChangeResp_t = PSINTERNAL_BEAMCHANGERESP_T.fields
local PSINTERNAL_BEAMCHANGERESP_T_DATA = Proto('PsInternal_BeamChangeResp_t_data', 'PSINTERNAL_BEAMCHANGERESP_T_DATA')
local PsInternal_BeamChangeResp_t_data = PSINTERNAL_BEAMCHANGERESP_T_DATA.fields
local PSINTERNAL_BEAMCHANGERESP_T_DATA_MESSAGERESULT = Proto('PsInternal_BeamChangeResp_t_data_messageResult', 'PSINTERNAL_BEAMCHANGERESP_T_DATA_MESSAGERESULT')
local PsInternal_BeamChangeResp_t_data_messageResult = PSINTERNAL_BEAMCHANGERESP_T_DATA_MESSAGERESULT.fields
PsInternal_BeamChangeResp_t_data_messageResult.status = ProtoField.bytes('PsInternal_BeamChangeResp_t_data_messageResult.status', 'status', base.HEX)
PsInternal_BeamChangeResp_t_data_messageResult.status_padding = ProtoField.bytes('PsInternal_BeamChangeResp_t_data_messageResult.status_padding', 'status_padding', base.HEX)
PsInternal_BeamChangeResp_t_data_messageResult.cause = ProtoField.uint32('PsInternal_BeamChangeResp_t_data_messageResult.cause', 'cause', base.HEX)
PsInternal_BeamChangeResp_t_data.ueFsId = ProtoField.uint16('PsInternal_BeamChangeResp_t_data.ueFsId', 'ueFsId', base.HEX)
PsInternal_BeamChangeResp_t_data.ueFsId_padding = ProtoField.bytes('PsInternal_BeamChangeResp_t_data.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_BEAMCHANGERESP_T, buffer())
  subtree:set_text('PsInternal_BeamChangeResp_t')
  local PsInternal_BeamChangeResp_t_dataTree = subtree:add (PSINTERNAL_BEAMCHANGERESP_T_DATA, buffer(offset))
  PsInternal_BeamChangeResp_t_dataTree:set_text('PsInternal_BeamChangeResp_t_data')
  local PsInternal_BeamChangeResp_t_data_messageResultTree = PsInternal_BeamChangeResp_t_dataTree:add (PSINTERNAL_BEAMCHANGERESP_T_DATA_MESSAGERESULT, buffer(offset))
  PsInternal_BeamChangeResp_t_data_messageResultTree:set_text('PsInternal_BeamChangeResp_t_data_messageResult')
  PsInternal_BeamChangeResp_t_data_messageResultTree:add_le (PsInternal_BeamChangeResp_t_data_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsInternal_BeamChangeResp_t_data_messageResultTree:add_le (PsInternal_BeamChangeResp_t_data_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsInternal_BeamChangeResp_t_data_messageResultTree:add_le (PsInternal_BeamChangeResp_t_data_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  PsInternal_BeamChangeResp_t_dataTree:add_le (PsInternal_BeamChangeResp_t_data.ueFsId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_BeamChangeResp_t_dataTree:add_le (PsInternal_BeamChangeResp_t_data.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
