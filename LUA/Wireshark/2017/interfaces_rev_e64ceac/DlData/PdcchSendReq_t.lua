local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'DlData_PdcchSendReq'
end
function module:messageId()
  return 0x0109
end
----------------------------------------------------------------
local DLDATA_PDCCHSENDREQ_T = Proto('DlData_PdcchSendReq_t', 'DLDATA_PDCCHSENDREQ_T')
local DlData_PdcchSendReq_t = DLDATA_PDCCHSENDREQ_T.fields
DlData_PdcchSendReq_t.subCellId = ProtoField.uint8('DlData_PdcchSendReq_t.subCellId', 'subCellId', base.HEX)
DlData_PdcchSendReq_t.subCellId_padding = ProtoField.int8('DlData_PdcchSendReq_t.subCellId_padding', 'subCellId_padding', base.DEC)
DlData_PdcchSendReq_t.sfn = ProtoField.uint16('DlData_PdcchSendReq_t.sfn', 'sfn', base.DEC)
DlData_PdcchSendReq_t.subframeNumber = ProtoField.uint8('DlData_PdcchSendReq_t.subframeNumber', 'subframeNumber', base.DEC)
DlData_PdcchSendReq_t.symbolNumber = ProtoField.uint8('DlData_PdcchSendReq_t.symbolNumber', 'symbolNumber', base.HEX)
DlData_PdcchSendReq_t.numOfDci = ProtoField.uint8('DlData_PdcchSendReq_t.numOfDci', 'numOfDci', base.HEX)
DlData_PdcchSendReq_t.numOfDci_padding = ProtoField.int8('DlData_PdcchSendReq_t.numOfDci_padding', 'numOfDci_padding', base.DEC)
DlData_PdcchSendReq_t.paddToAlgnForAuroraWordSz = ProtoField.bytes('DlData_PdcchSendReq_t.paddToAlgnForAuroraWordSz', 'paddToAlgnForAuroraWordSz', base.HEX)
local DLDATA_PDCCHSENDREQ_T_DCIINFO = Proto('DlData_PdcchSendReq_t_dciInfo', 'DLDATA_PDCCHSENDREQ_T_DCIINFO')
local DlData_PdcchSendReq_t_dciInfo = DLDATA_PDCCHSENDREQ_T_DCIINFO.fields
DlData_PdcchSendReq_t_dciInfo.rnti = ProtoField.uint16('DlData_PdcchSendReq_t_dciInfo.rnti', 'rnti', base.HEX)
DlData_PdcchSendReq_t_dciInfo.startCce = ProtoField.uint8('DlData_PdcchSendReq_t_dciInfo.startCce', 'startCce', base.HEX)
DlData_PdcchSendReq_t_dciInfo.pdcchFormat = ProtoField.bytes('DlData_PdcchSendReq_t_dciInfo.pdcchFormat', 'pdcchFormat', base.HEX)
DlData_PdcchSendReq_t_dciInfo.dmrsScramblingSequenceInt = ProtoField.uint16('DlData_PdcchSendReq_t_dciInfo.dmrsScramblingSequenceInt', 'dmrsScramblingSequenceInt', base.HEX)
DlData_PdcchSendReq_t_dciInfo.PdcchDciTransmitPower = ProtoField.int16('DlData_PdcchSendReq_t_dciInfo.PdcchDciTransmitPower', 'PdcchDciTransmitPower', base.DEC)
DlData_PdcchSendReq_t_dciInfo.dciPayload = ProtoField.bytes('DlData_PdcchSendReq_t_dciInfo.dciPayload', 'dciPayload', base.HEX)
local DLDATA_PDCCHSENDREQ_T_DCIPAYLOAD = Proto('DlData_PdcchSendReq_t_dciPayload', 'DLDATA_PDCCHSENDREQ_T_DCIPAYLOAD')
local DlData_PdcchSendReq_t_dciPayload = DLDATA_PDCCHSENDREQ_T_DCIPAYLOAD.fields
DlData_PdcchSendReq_t_dciPayload.dciFormat = ProtoField.string('DlData_PdcchSendReq_t_dciPayload.dciFormat', 'dciFormat', base.DEC)
DlData_PdcchSendReq_t_dciPayload.xPUSCH_Range = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.xPUSCH_Range', 'xPUSCH_Range', base.DEC)
DlData_PdcchSendReq_t_dciPayload.xPUSCH_TxTiming = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.xPUSCH_TxTiming', 'xPUSCH_TxTiming', base.DEC)
DlData_PdcchSendReq_t_dciPayload.UlRB_assignment = ProtoField.uint16('DlData_PdcchSendReq_t_dciPayload.UlRB_assignment', 'UL RB Assignment', base.DEC)
DlData_PdcchSendReq_t_dciPayload.UlHarq = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.UlHarq', 'UlHarq', base.DEC)
DlData_PdcchSendReq_t_dciPayload.UlMcs = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.UlMcs', 'UlMCS', base.DEC)
DlData_PdcchSendReq_t_dciPayload.UlNdi = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.UlNdi', 'UlNdi', base.DEC)
DlData_PdcchSendReq_t_dciPayload.CsiBsiBriReq = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.CsiBsiBriReq', 'CSI/BSI/BRI Request', base.HEX)
DlData_PdcchSendReq_t_dciPayload.CsirsBrrs_Timing = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.CsirsBrrs_Timing', 'CSI-RS BRRS Tx Timing', base.HEX)
DlData_PdcchSendReq_t_dciPayload.CsirsBrrs_Ofdm = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.CsirsBrrs_Ofdm', 'CSI-RS BRRS OFDM symbol', base.HEX)
DlData_PdcchSendReq_t_dciPayload.Process_Ind = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.Process_Ind', 'Process_Ind', base.DEC)
DlData_PdcchSendReq_t_dciPayload.xPUSCH_UCI = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.xPUSCH_UCI', 'UCI on XPUSCH', base.DEC)
DlData_PdcchSendReq_t_dciPayload.Beamswitch_ind = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.Beamswitch_ind', 'BeamSwitch_ind', base.DEC)
DlData_PdcchSendReq_t_dciPayload.SrsReq = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.SrsReq', 'SRS Request', base.DEC)
DlData_PdcchSendReq_t_dciPayload.AntPort = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.AntPort', 'Antenna Ports', base.DEC)
DlData_PdcchSendReq_t_dciPayload.Scid = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.Scid', 'SCID', base.DEC)
DlData_PdcchSendReq_t_dciPayload.UlPmi = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.UlPmi', 'UlPMI', base.DEC)
DlData_PdcchSendReq_t_dciPayload.xPUSCHtpc = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.xPUSCHtpc', 'xPUSCH TPC', base.DEC)
DlData_PdcchSendReq_t_dciPayload.UldualPcrs = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.UldualPcrs', 'Ul Dual PCRS', base.DEC)
DlData_PdcchSendReq_t_dciPayload.CsirsBrrs_Ofdm = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.CsirsBrrs_Ofdm', 'CSI-RS BRRS OFDM symbol', base.HEX)
DlData_PdcchSendReq_t_dciPayload.Process_Ind = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.Process_Ind', 'Process_Ind', base.DEC)
DlData_PdcchSendReq_t_dciPayload.xPUSCH_UCI = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.xPUSCH_UCI', 'UCI on XPUSCH', base.DEC)
DlData_PdcchSendReq_t_dciPayload.Beamswitch_ind = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.Beamswitch_ind', 'BeamSwitch_ind', base.DEC)
DlData_PdcchSendReq_t_dciPayload.SrsReq = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.SrsReq', 'SRS Request', base.DEC)
DlData_PdcchSendReq_t_dciPayload.AntPort = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.AntPort', 'Antenna Ports', base.DEC)
DlData_PdcchSendReq_t_dciPayload.Scid = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.Scid', 'SCID', base.DEC)
DlData_PdcchSendReq_t_dciPayload.UlPmi = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.UlPmi', 'UlPMI', base.DEC)
DlData_PdcchSendReq_t_dciPayload.xPUSCHtpc = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.xPUSCHtpc', 'xPUSCH TPC', base.DEC)
DlData_PdcchSendReq_t_dciPayload.UldualPcrs = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.UldualPcrs', 'Ul Dual PCRS', base.DEC)
DlData_PdcchSendReq_t_dciPayload.xPDSCH_Range = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.xPDSCH_Range', 'xPDSCH_Range', base.DEC)
DlData_PdcchSendReq_t_dciPayload.DlRB_assignment = ProtoField.uint16('DlData_PdcchSendReq_t_dciPayload.DlRB_assignment', 'DL RB Assignment', base.DEC)
DlData_PdcchSendReq_t_dciPayload.DlHarq = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.DlHarq', 'DlHarq', base.DEC)
DlData_PdcchSendReq_t_dciPayload.DlMcs = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.DlMcs', 'DlMCS', base.DEC)
DlData_PdcchSendReq_t_dciPayload.DlNdi = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.DlNdi', 'DlNDI', base.DEC)
DlData_PdcchSendReq_t_dciPayload.DlRv = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.DlRv', 'DlRV', base.DEC)
DlData_PdcchSendReq_t_dciPayload.DlBmi = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.DlBmi', 'DlBMI_HarqAck', base.DEC)
DlData_PdcchSendReq_t_dciPayload.xPUCCH_UCI = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.xPUCCH_UCI', 'xPUCCH_UCI', base.DEC)
DlData_PdcchSendReq_t_dciPayload.xPUCCH_UCI_Res = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.xPUCCH_UCI_Res', 'xPUCCH UCI Resources', base.DEC)
DlData_PdcchSendReq_t_dciPayload.xPUCCHtpc = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.xPUSCHtpc', 'xPUCCH TPC', base.DEC)
DlData_PdcchSendReq_t_dciPayload.DlPcrs = ProtoField.uint8('DlData_PdcchSendReq_t_dciPayload.DlPcrs', 'DL PCRS', base.DEC)

----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (DLDATA_PDCCHSENDREQ_T, buffer())
  subtree:set_text('DlData_PdcchSendReq_t')
  subtree:add_le (DlData_PdcchSendReq_t.subCellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdcchSendReq_t.subCellId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdcchSendReq_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_PdcchSendReq_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdcchSendReq_t.symbolNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdcchSendReq_t.numOfDci, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdcchSendReq_t.numOfDci_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdcchSendReq_t.paddToAlgnForAuroraWordSz, buffer(offset, ( (msglen >= 8) and 8 or (msglen-offset) )))
  offset = offset + ( (msglen >= 8) and 8 or (msglen-offset) )
  local DlData_PdcchSendReq_t_dciInfoTree = subtree:add (DLDATA_PDCCHSENDREQ_T_DCIINFO, buffer(offset))
  DlData_PdcchSendReq_t_dciInfoTree:set_text('DlData_PdcchSendReq_t_dciInfo')
  DlData_PdcchSendReq_t_dciInfoTree:add_le (DlData_PdcchSendReq_t_dciInfo.rnti, buffer(offset, 2))
  offset = offset + 2
  DlData_PdcchSendReq_t_dciInfoTree:add_le (DlData_PdcchSendReq_t_dciInfo.startCce, buffer(offset, 1))
  offset = offset + 1
  DlData_PdcchSendReq_t_dciInfoTree:add_le (DlData_PdcchSendReq_t_dciInfo.pdcchFormat, buffer(offset, 1))
  offset = offset + 1
  DlData_PdcchSendReq_t_dciInfoTree:add_le (DlData_PdcchSendReq_t_dciInfo.dmrsScramblingSequenceInt, buffer(offset, 2))
  offset = offset + 2
  DlData_PdcchSendReq_t_dciInfoTree:add_le (DlData_PdcchSendReq_t_dciInfo.PdcchDciTransmitPower, buffer(offset, 2))
  offset = offset + 2
  DlData_PdcchSendReq_t_dciInfoTree:add_le (DlData_PdcchSendReq_t_dciInfo.dciPayload, buffer(offset, ( (msglen >= 8) and 8 or (msglen-offset) )))
  local DlData_PdcchSendReq_t_dciPayloadTree = subtree:add (DLDATA_PDCCHSENDREQ_T_DCIPAYLOAD, buffer(offset))
  local dci_format = buffer(offset, 1):bitfield(0,2)
  if (dci_format < 2) then
    if (dci_format==1) then
      DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.dciFormat, "A2 : UL DCI")
    else
      DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.dciFormat, "A1 : UL DCI")
    end
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.xPUSCH_Range, buffer(offset,8):bitfield(2,2))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.xPUSCH_TxTiming, buffer(offset,8):bitfield(4,3))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.UlRB_assignment, buffer(offset,8):bitfield(7,9))
    --IF RB ass > 0
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.UlHarq, buffer(offset,8):bitfield(16,4))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.UlMcs, buffer(offset,8):bitfield(20,4))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.UlNdi, buffer(offset,8):bitfield(24,1))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.CsiBsiBriReq, buffer(offset,8):bitfield(25,3))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.CsirsBrrs_Timing, buffer(offset,8):bitfield(28,2))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.CsirsBrrs_Ofdm, buffer(offset,8):bitfield(30,2))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.Process_Ind, buffer(offset,8):bitfield(32,2))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.xPUSCH_UCI, buffer(offset,8):bitfield(34,1))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.Beamswitch_ind, buffer(offset,8):bitfield(35,1))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.SrsReq, buffer(offset,8):bitfield(36,3))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.AntPort, buffer(offset,8):bitfield(39,3))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.Scid, buffer(offset,8):bitfield(42,1))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.UlPmi, buffer(offset,8):bitfield(43,3))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.xPUSCHtpc, buffer(offset,8):bitfield(46,2))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.UldualPcrs, buffer(offset,8):bitfield(48,1))
  else
    if (dci_format==3) then
      DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.dciFormat, "B2 : DL DCI")
    else
      DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.dciFormat, "B1 : DL DCI")
    end
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.xPDSCH_Range, buffer(offset,8):bitfield(2,2))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.DlRB_assignment, buffer(offset,8):bitfield(4,9))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.DlHarq, buffer(offset,8):bitfield(13,4))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.DlMcs, buffer(offset,8):bitfield(17,4))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.DlNdi, buffer(offset,8):bitfield(21,1))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.DlRv, buffer(offset,8):bitfield(22,2))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.DlBmi, buffer(offset,8):bitfield(24,3))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.CsiBsiBriReq, buffer(offset,8):bitfield(27,3))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.CsirsBrrs_Timing, buffer(offset,8):bitfield(30,2))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.CsirsBrrs_Ofdm, buffer(offset,8):bitfield(32,2))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.Process_Ind, buffer(offset,8):bitfield(34,2))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.xPUCCH_UCI, buffer(offset,8):bitfield(36,3))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.xPUCCH_UCI_Res, buffer(offset,8):bitfield(39,4))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.Beamswitch_ind, buffer(offset,8):bitfield(43,1))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.SrsReq, buffer(offset,8):bitfield(44,3))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.AntPort, buffer(offset,8):bitfield(47,4))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.Scid, buffer(offset,8):bitfield(51,1))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.xPUCCHtpc, buffer(offset,8):bitfield(52,2))
    DlData_PdcchSendReq_t_dciPayloadTree:add_le (DlData_PdcchSendReq_t_dciPayload.DlPcrs, buffer(offset,8):bitfield(54,2))
  end
  offset = offset + ( (msglen >= 8) and 8 or (msglen-offset) )
end
----------------------------------------------------------------
return module
