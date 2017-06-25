local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'DlData_SubfrTypeReq'
end
function module:messageId()
  return 0x0107
end
----------------------------------------------------------------
local DLDATA_SUBFRTYPEREQ_T = Proto('DlData_SubfrTypeReq_t', 'DLDATA_SUBFRTYPEREQ_T')
local DlData_SubfrTypeReq_t = DLDATA_SUBFRTYPEREQ_T.fields
DlData_SubfrTypeReq_t.sfn = ProtoField.uint16('DlData_SubfrTypeReq_t.sfn', 'sfn', base.DEC)
DlData_SubfrTypeReq_t.subCellId = ProtoField.uint8('DlData_SubfrTypeReq_t.subCellId', 'subCellId', base.HEX)
DlData_SubfrTypeReq_t.subframeNo = ProtoField.uint8('DlData_SubfrTypeReq_t.subframeNo', 'subframeNo', base.HEX)
DlData_SubfrTypeReq_t.subfrType = ProtoField.bytes('DlData_SubfrTypeReq_t.subfrType', 'subfrType', base.HEX)
DlData_SubfrTypeReq_t.subfrType_padding = ProtoField.bytes('DlData_SubfrTypeReq_t.subfrType_padding', 'subfrType_padding', base.HEX)
local DLDATA_SUBFRTYPEREQ_T_PWRREDUCTIONPERSYMB_DB = Proto('DlData_SubfrTypeReq_t_pwrReductionPerSymb_dB', 'DLDATA_SUBFRTYPEREQ_T_PWRREDUCTIONPERSYMB_DB')
local DlData_SubfrTypeReq_t_pwrReductionPerSymb_dB = DLDATA_SUBFRTYPEREQ_T_PWRREDUCTIONPERSYMB_DB.fields
DlData_SubfrTypeReq_t_pwrReductionPerSymb_dB.pwrReductionPerSymb_dB_length = ProtoField.uint32('DlData_SubfrTypeReq_t_pwrReductionPerSymb_dB.pwrReductionPerSymb_dB_length', 'pwrReductionPerSymb_dB_length', base.HEX)
DlData_SubfrTypeReq_t_pwrReductionPerSymb_dB.pwrReductionPerSymb_dB_values = ProtoField.bytes('DlData_SubfrTypeReq_t_pwrReductionPerSymb_dB.pwrReductionPerSymb_dB_values', 'pwrReductionPerSymb_dB_values', base.HEX)
DlData_SubfrTypeReq_t.csiSymbols = ProtoField.bytes('DlData_SubfrTypeReq_t.csiSymbols', 'csiSymbols', base.HEX)
DlData_SubfrTypeReq_t.csiSymbols_padding = ProtoField.int8('DlData_SubfrTypeReq_t.csiSymbols_padding', 'csiSymbols_padding', base.DEC)
DlData_SubfrTypeReq_t.csiResourceConfig = ProtoField.uint16('DlData_SubfrTypeReq_t.csiResourceConfig', 'csiResourceConfig', base.HEX)
DlData_SubfrTypeReq_t.csiScramblingId = ProtoField.uint16('DlData_SubfrTypeReq_t.csiScramblingId', 'csiScramblingId', base.HEX)
DlData_SubfrTypeReq_t.csiTransmitPower = ProtoField.int16('DlData_SubfrTypeReq_t.csiTransmitPower', 'csiTransmitPower', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (DLDATA_SUBFRTYPEREQ_T, buffer())
  subtree:set_text('DlData_SubfrTypeReq_t')
  subtree:add_le (DlData_SubfrTypeReq_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_SubfrTypeReq_t.subCellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_SubfrTypeReq_t.subframeNo, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_SubfrTypeReq_t.subfrType, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_SubfrTypeReq_t.subfrType_padding, buffer(offset, 3))
  offset = offset + 3
  local DlData_SubfrTypeReq_t_pwrReductionPerSymb_dBTree = subtree:add (DLDATA_SUBFRTYPEREQ_T_PWRREDUCTIONPERSYMB_DB, buffer(offset))
  DlData_SubfrTypeReq_t_pwrReductionPerSymb_dBTree:set_text('DlData_SubfrTypeReq_t_pwrReductionPerSymb_dB')
  DlData_SubfrTypeReq_t_pwrReductionPerSymb_dBTree:add_le (DlData_SubfrTypeReq_t_pwrReductionPerSymb_dB.pwrReductionPerSymb_dB_length, buffer(offset, 4))
  offset = offset + 4
  DlData_SubfrTypeReq_t_pwrReductionPerSymb_dBTree:add_le (DlData_SubfrTypeReq_t_pwrReductionPerSymb_dB.pwrReductionPerSymb_dB_values, buffer(offset, ( (msglen >= 16) and 16 or (msglen-offset) )))
  offset = offset + ( (msglen >= 16) and 16 or (msglen-offset) )
  subtree:add_le (DlData_SubfrTypeReq_t.csiSymbols, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_SubfrTypeReq_t.csiSymbols_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_SubfrTypeReq_t.csiResourceConfig, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_SubfrTypeReq_t.csiScramblingId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_SubfrTypeReq_t.csiTransmitPower, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
