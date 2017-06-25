local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_UserSetupResp'
end
function module:messageId()
  return 0x0325
end
----------------------------------------------------------------
local PSINTERNAL_USERSETUPRESP_T = Proto('PsInternal_UserSetupResp_t', 'PSINTERNAL_USERSETUPRESP_T')
local PsInternal_UserSetupResp_t = PSINTERNAL_USERSETUPRESP_T.fields
local PSINTERNAL_USERSETUPRESP_T_DATA = Proto('PsInternal_UserSetupResp_t_data', 'PSINTERNAL_USERSETUPRESP_T_DATA')
local PsInternal_UserSetupResp_t_data = PSINTERNAL_USERSETUPRESP_T_DATA.fields
local PSINTERNAL_USERSETUPRESP_T_DATA_MESSAGERESULT = Proto('PsInternal_UserSetupResp_t_data_messageResult', 'PSINTERNAL_USERSETUPRESP_T_DATA_MESSAGERESULT')
local PsInternal_UserSetupResp_t_data_messageResult = PSINTERNAL_USERSETUPRESP_T_DATA_MESSAGERESULT.fields
PsInternal_UserSetupResp_t_data_messageResult.status = ProtoField.bytes('PsInternal_UserSetupResp_t_data_messageResult.status', 'status', base.HEX)
PsInternal_UserSetupResp_t_data_messageResult.status_padding = ProtoField.bytes('PsInternal_UserSetupResp_t_data_messageResult.status_padding', 'status_padding', base.HEX)
PsInternal_UserSetupResp_t_data_messageResult.cause = ProtoField.uint32('PsInternal_UserSetupResp_t_data_messageResult.cause', 'cause', base.HEX)
PsInternal_UserSetupResp_t_data.ueFsId = ProtoField.uint16('PsInternal_UserSetupResp_t_data.ueFsId', 'ueFsId', base.HEX)
PsInternal_UserSetupResp_t_data.ueFsId_padding = ProtoField.bytes('PsInternal_UserSetupResp_t_data.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_USERSETUPRESP_T, buffer())
  subtree:set_text('PsInternal_UserSetupResp_t')
  local PsInternal_UserSetupResp_t_dataTree = subtree:add (PSINTERNAL_USERSETUPRESP_T_DATA, buffer(offset))
  PsInternal_UserSetupResp_t_dataTree:set_text('PsInternal_UserSetupResp_t_data')
  local PsInternal_UserSetupResp_t_data_messageResultTree = PsInternal_UserSetupResp_t_dataTree:add (PSINTERNAL_USERSETUPRESP_T_DATA_MESSAGERESULT, buffer(offset))
  PsInternal_UserSetupResp_t_data_messageResultTree:set_text('PsInternal_UserSetupResp_t_data_messageResult')
  PsInternal_UserSetupResp_t_data_messageResultTree:add_le (PsInternal_UserSetupResp_t_data_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsInternal_UserSetupResp_t_data_messageResultTree:add_le (PsInternal_UserSetupResp_t_data_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsInternal_UserSetupResp_t_data_messageResultTree:add_le (PsInternal_UserSetupResp_t_data_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  PsInternal_UserSetupResp_t_dataTree:add_le (PsInternal_UserSetupResp_t_data.ueFsId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserSetupResp_t_dataTree:add_le (PsInternal_UserSetupResp_t_data.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
