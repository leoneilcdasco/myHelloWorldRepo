local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCell_SystemInfoConfigurationResp'
end
function module:messageId()
  return 0x092b
end
----------------------------------------------------------------
local PSCELL_SYSTEMINFOCONFIGURATIONRESP_T = Proto('PsCell_SystemInfoConfigurationResp_t', 'PSCELL_SYSTEMINFOCONFIGURATIONRESP_T')
local PsCell_SystemInfoConfigurationResp_t = PSCELL_SYSTEMINFOCONFIGURATIONRESP_T.fields
local PSCELL_SYSTEMINFOCONFIGURATIONRESP_T_MESSAGERESULT = Proto('PsCell_SystemInfoConfigurationResp_t_messageResult', 'PSCELL_SYSTEMINFOCONFIGURATIONRESP_T_MESSAGERESULT')
local PsCell_SystemInfoConfigurationResp_t_messageResult = PSCELL_SYSTEMINFOCONFIGURATIONRESP_T_MESSAGERESULT.fields
PsCell_SystemInfoConfigurationResp_t_messageResult.status = ProtoField.bytes('PsCell_SystemInfoConfigurationResp_t_messageResult.status', 'status', base.HEX)
PsCell_SystemInfoConfigurationResp_t_messageResult.status_padding = ProtoField.bytes('PsCell_SystemInfoConfigurationResp_t_messageResult.status_padding', 'status_padding', base.HEX)
PsCell_SystemInfoConfigurationResp_t_messageResult.cause = ProtoField.uint32('PsCell_SystemInfoConfigurationResp_t_messageResult.cause', 'cause', base.HEX)
PsCell_SystemInfoConfigurationResp_t.ngutraCellId = ProtoField.uint32('PsCell_SystemInfoConfigurationResp_t.ngutraCellId', 'ngutraCellId', base.HEX)
PsCell_SystemInfoConfigurationResp_t.subcellGroupId = ProtoField.uint8('PsCell_SystemInfoConfigurationResp_t.subcellGroupId', 'subcellGroupId', base.HEX)
PsCell_SystemInfoConfigurationResp_t.subcellGroupId_padding = ProtoField.bytes('PsCell_SystemInfoConfigurationResp_t.subcellGroupId_padding', 'subcellGroupId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCELL_SYSTEMINFOCONFIGURATIONRESP_T, buffer())
  subtree:set_text('PsCell_SystemInfoConfigurationResp_t')
  local PsCell_SystemInfoConfigurationResp_t_messageResultTree = subtree:add (PSCELL_SYSTEMINFOCONFIGURATIONRESP_T_MESSAGERESULT, buffer(offset))
  PsCell_SystemInfoConfigurationResp_t_messageResultTree:set_text('PsCell_SystemInfoConfigurationResp_t_messageResult')
  PsCell_SystemInfoConfigurationResp_t_messageResultTree:add_le (PsCell_SystemInfoConfigurationResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  PsCell_SystemInfoConfigurationResp_t_messageResultTree:add_le (PsCell_SystemInfoConfigurationResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  PsCell_SystemInfoConfigurationResp_t_messageResultTree:add_le (PsCell_SystemInfoConfigurationResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsCell_SystemInfoConfigurationResp_t.ngutraCellId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsCell_SystemInfoConfigurationResp_t.subcellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SystemInfoConfigurationResp_t.subcellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
