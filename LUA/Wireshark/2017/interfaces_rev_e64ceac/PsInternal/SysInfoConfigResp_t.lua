local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_SysInfoConfigResp'
end
function module:messageId()
  return 0x030d
end
----------------------------------------------------------------
local PSINTERNAL_SYSINFOCONFIGRESP_T = Proto('PsInternal_SysInfoConfigResp_t', 'PSINTERNAL_SYSINFOCONFIGRESP_T')
local PsInternal_SysInfoConfigResp_t = PSINTERNAL_SYSINFOCONFIGRESP_T.fields
local PSINTERNAL_SYSINFOCONFIGRESP_T_DATA = Proto('PsInternal_SysInfoConfigResp_t_data', 'PSINTERNAL_SYSINFOCONFIGRESP_T_DATA')
local PsInternal_SysInfoConfigResp_t_data = PSINTERNAL_SYSINFOCONFIGRESP_T_DATA.fields
local PSINTERNAL_SYSINFOCONFIGRESP_T_DATA_MESSAGERESULT = Proto('PsInternal_SysInfoConfigResp_t_data_messageResult', 'PSINTERNAL_SYSINFOCONFIGRESP_T_DATA_MESSAGERESULT')
local PsInternal_SysInfoConfigResp_t_data_messageResult = PSINTERNAL_SYSINFOCONFIGRESP_T_DATA_MESSAGERESULT.fields
PsInternal_SysInfoConfigResp_t_data_messageResult.status = ProtoField.bytes('PsInternal_SysInfoConfigResp_t_data_messageResult.status', 'status', base.HEX)
PsInternal_SysInfoConfigResp_t_data_messageResult.status_padding = ProtoField.bytes('PsInternal_SysInfoConfigResp_t_data_messageResult.status_padding', 'status_padding', base.HEX)
PsInternal_SysInfoConfigResp_t_data_messageResult.cause = ProtoField.uint32('PsInternal_SysInfoConfigResp_t_data_messageResult.cause', 'cause', base.HEX)
PsInternal_SysInfoConfigResp_t_data.ngutraCellId = ProtoField.uint32('PsInternal_SysInfoConfigResp_t_data.ngutraCellId', 'ngutraCellId', base.HEX)
PsInternal_SysInfoConfigResp_t_data.subcellGroupId = ProtoField.uint8('PsInternal_SysInfoConfigResp_t_data.subcellGroupId', 'subcellGroupId', base.HEX)
PsInternal_SysInfoConfigResp_t_data.subcellGroupId_padding = ProtoField.bytes('PsInternal_SysInfoConfigResp_t_data.subcellGroupId_padding', 'subcellGroupId_padding', base.HEX)
PsInternal_SysInfoConfigResp_t.senderAddress = ProtoField.uint32('PsInternal_SysInfoConfigResp_t.senderAddress', 'senderAddress', base.HEX)
PsInternal_SysInfoConfigResp_t.setupFinished = ProtoField.int8('PsInternal_SysInfoConfigResp_t.setupFinished', 'setupFinished', base.DEC)
PsInternal_SysInfoConfigResp_t.setupFinished_padding = ProtoField.bytes('PsInternal_SysInfoConfigResp_t.setupFinished_padding', 'setupFinished_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_SYSINFOCONFIGRESP_T, buffer())
  subtree:set_text('PsInternal_SysInfoConfigResp_t')
  local PsInternal_SysInfoConfigResp_t_dataTree = subtree:add (PSINTERNAL_SYSINFOCONFIGRESP_T_DATA, buffer(offset))
  PsInternal_SysInfoConfigResp_t_dataTree:set_text('PsInternal_SysInfoConfigResp_t_data')
  local PsInternal_SysInfoConfigResp_t_data_messageResultTree = PsInternal_SysInfoConfigResp_t_dataTree:add (PSINTERNAL_SYSINFOCONFIGRESP_T_DATA_MESSAGERESULT, buffer(offset))
  PsInternal_SysInfoConfigResp_t_data_messageResultTree:set_text('PsInternal_SysInfoConfigResp_t_data_messageResult')
  PsInternal_SysInfoConfigResp_t_data_messageResultTree:add_le (PsInternal_SysInfoConfigResp_t_data_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SysInfoConfigResp_t_data_messageResultTree:add_le (PsInternal_SysInfoConfigResp_t_data_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsInternal_SysInfoConfigResp_t_data_messageResultTree:add_le (PsInternal_SysInfoConfigResp_t_data_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  PsInternal_SysInfoConfigResp_t_dataTree:add_le (PsInternal_SysInfoConfigResp_t_data.ngutraCellId, buffer(offset, 4))
  offset = offset + 4
  PsInternal_SysInfoConfigResp_t_dataTree:add_le (PsInternal_SysInfoConfigResp_t_data.subcellGroupId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SysInfoConfigResp_t_dataTree:add_le (PsInternal_SysInfoConfigResp_t_data.subcellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
  subtree:add_le (PsInternal_SysInfoConfigResp_t.senderAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsInternal_SysInfoConfigResp_t.setupFinished, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsInternal_SysInfoConfigResp_t.setupFinished_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
