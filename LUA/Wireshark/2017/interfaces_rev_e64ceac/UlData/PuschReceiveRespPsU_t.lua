local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_PuschReceiveRespPsU'
end
function module:messageId()
  return 0x020a
end
----------------------------------------------------------------
local ULDATA_PUSCHRECEIVERESPPSU_T = Proto('UlData_PuschReceiveRespPsU_t', 'ULDATA_PUSCHRECEIVERESPPSU_T')
local UlData_PuschReceiveRespPsU_t = ULDATA_PUSCHRECEIVERESPPSU_T.fields
UlData_PuschReceiveRespPsU_t.sfn = ProtoField.uint16('UlData_PuschReceiveRespPsU_t.sfn', 'sfn', base.DEC)
UlData_PuschReceiveRespPsU_t.subframeNumber = ProtoField.uint8('UlData_PuschReceiveRespPsU_t.subframeNumber', 'subframeNumber', base.DEC)
UlData_PuschReceiveRespPsU_t.subcellId = ProtoField.uint8('UlData_PuschReceiveRespPsU_t.subcellId', 'subcellId', base.DEC)
UlData_PuschReceiveRespPsU_t.noisePower = ProtoField.float('UlData_PuschReceiveRespPsU_t.noisePower', 'noisePower', base.NONE)
UlData_PuschReceiveRespPsU_t.numOfGrants = ProtoField.uint8('UlData_PuschReceiveRespPsU_t.numOfGrants', 'numOfGrants', base.HEX)
UlData_PuschReceiveRespPsU_t.numOfGrants_padding = ProtoField.bytes('UlData_PuschReceiveRespPsU_t.numOfGrants_padding', 'numOfGrants_padding', base.HEX)
local ULDATA_PUSCHRECEIVERESPPSU_T_GRANTS = Proto('UlData_PuschReceiveRespPsU_t_grants', 'ULDATA_PUSCHRECEIVERESPPSU_T_GRANTS')
local UlData_PuschReceiveRespPsU_t_grants = ULDATA_PUSCHRECEIVERESPPSU_T_GRANTS.fields
UlData_PuschReceiveRespPsU_t_grants.rnti = ProtoField.uint16('UlData_PuschReceiveRespPsU_t_grants.rnti', 'rnti', base.HEX)
UlData_PuschReceiveRespPsU_t_grants.harqProcessIndex = ProtoField.uint8('UlData_PuschReceiveRespPsU_t_grants.harqProcessIndex', 'harqProcessIndex', base.HEX)
UlData_PuschReceiveRespPsU_t_grants.dtx = ProtoField.bytes('UlData_PuschReceiveRespPsU_t_grants.dtx', 'dtx', base.HEX)
local ULDATA_PUSCHRECEIVERESPPSU_T_GRANTS_SHORTTERMCFOMETRIC = Proto('UlData_PuschReceiveRespPsU_t_grants_shortTermCfoMetric', 'ULDATA_PUSCHRECEIVERESPPSU_T_GRANTS_SHORTTERMCFOMETRIC')
local UlData_PuschReceiveRespPsU_t_grants_shortTermCfoMetric = ULDATA_PUSCHRECEIVERESPPSU_T_GRANTS_SHORTTERMCFOMETRIC.fields
UlData_PuschReceiveRespPsU_t_grants_shortTermCfoMetric.I = ProtoField.bytes('UlData_PuschReceiveRespPsU_t_grants_shortTermCfoMetric.I', 'I', base.HEX)
UlData_PuschReceiveRespPsU_t_grants_shortTermCfoMetric.Q = ProtoField.bytes('UlData_PuschReceiveRespPsU_t_grants_shortTermCfoMetric.Q', 'Q', base.HEX)
UlData_PuschReceiveRespPsU_t_grants.shortTermTaMetric = ProtoField.uint16('UlData_PuschReceiveRespPsU_t_grants.shortTermTaMetric', 'shortTermTaMetric', base.HEX)
UlData_PuschReceiveRespPsU_t_grants.shortTermTaMetric_padding = ProtoField.bytes('UlData_PuschReceiveRespPsU_t_grants.shortTermTaMetric_padding', 'shortTermTaMetric_padding', base.HEX)
UlData_PuschReceiveRespPsU_t_grants.shortTermTaPeakAmp = ProtoField.float('UlData_PuschReceiveRespPsU_t_grants.shortTermTaPeakAmp', 'shortTermTaPeakAmp', base.NONE)
UlData_PuschReceiveRespPsU_t_grants.rxPower = ProtoField.float('UlData_PuschReceiveRespPsU_t_grants.rxPower', 'rxPower', base.NONE)
UlData_PuschReceiveRespPsU_t_grants.sinr = ProtoField.bytes('UlData_PuschReceiveRespPsU_t_grants.sinr', 'sinr', base.HEX)
UlData_PuschReceiveRespPsU_t_grants.rssi = ProtoField.float('UlData_PuschReceiveRespPsU_t_grants.rssi', 'rssi', base.NONE)
UlData_PuschReceiveRespPsU_t_grants.ulPmiRank2 = ProtoField.bytes('UlData_PuschReceiveRespPsU_t_grants.ulPmiRank2', 'ulPmiRank2', base.HEX)
UlData_PuschReceiveRespPsU_t_grants.ulPmiRank2_padding = ProtoField.bytes('UlData_PuschReceiveRespPsU_t_grants.ulPmiRank2_padding', 'ulPmiRank2_padding', base.HEX)
UlData_PuschReceiveRespPsU_t_grants.channelCorrMetric = ProtoField.bytes('UlData_PuschReceiveRespPsU_t_grants.channelCorrMetric', 'channelCorrMetric', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_PUSCHRECEIVERESPPSU_T, buffer())
  subtree:set_text('UlData_PuschReceiveRespPsU_t')
  subtree:add_le (UlData_PuschReceiveRespPsU_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_PuschReceiveRespPsU_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveRespPsU_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveRespPsU_t.noisePower, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (UlData_PuschReceiveRespPsU_t.numOfGrants, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveRespPsU_t.numOfGrants_padding, buffer(offset, 3))
  offset = offset + 3
  local UlData_PuschReceiveRespPsU_t_grantsTree = subtree:add (ULDATA_PUSCHRECEIVERESPPSU_T_GRANTS, buffer(offset))
  UlData_PuschReceiveRespPsU_t_grantsTree:set_text('UlData_PuschReceiveRespPsU_t_grants')
  UlData_PuschReceiveRespPsU_t_grantsTree:add_le (UlData_PuschReceiveRespPsU_t_grants.rnti, buffer(offset, 2))
  offset = offset + 2
  UlData_PuschReceiveRespPsU_t_grantsTree:add_le (UlData_PuschReceiveRespPsU_t_grants.harqProcessIndex, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveRespPsU_t_grantsTree:add_le (UlData_PuschReceiveRespPsU_t_grants.dtx, buffer(offset, 1))
  offset = offset + 1
  local UlData_PuschReceiveRespPsU_t_grants_shortTermCfoMetricTree = UlData_PuschReceiveRespPsU_t_grantsTree:add (ULDATA_PUSCHRECEIVERESPPSU_T_GRANTS_SHORTTERMCFOMETRIC, buffer(offset))
  UlData_PuschReceiveRespPsU_t_grants_shortTermCfoMetricTree:set_text('UlData_PuschReceiveRespPsU_t_grants_shortTermCfoMetric')
  UlData_PuschReceiveRespPsU_t_grants_shortTermCfoMetricTree:add_le (UlData_PuschReceiveRespPsU_t_grants_shortTermCfoMetric.I, buffer(offset, 4))
  offset = offset + 4
  UlData_PuschReceiveRespPsU_t_grants_shortTermCfoMetricTree:add_le (UlData_PuschReceiveRespPsU_t_grants_shortTermCfoMetric.Q, buffer(offset, 4))
  offset = offset + 4
  UlData_PuschReceiveRespPsU_t_grantsTree:add_le (UlData_PuschReceiveRespPsU_t_grants.shortTermTaMetric, buffer(offset, 2))
  offset = offset + 2
  UlData_PuschReceiveRespPsU_t_grantsTree:add_le (UlData_PuschReceiveRespPsU_t_grants.shortTermTaMetric_padding, buffer(offset, 2))
  offset = offset + 2
  UlData_PuschReceiveRespPsU_t_grantsTree:add_le (UlData_PuschReceiveRespPsU_t_grants.shortTermTaPeakAmp, buffer(offset, 4))
  offset = offset + 4
  UlData_PuschReceiveRespPsU_t_grantsTree:add_le (UlData_PuschReceiveRespPsU_t_grants.rxPower, buffer(offset, 4))
  offset = offset + 4
  UlData_PuschReceiveRespPsU_t_grantsTree:add_le (UlData_PuschReceiveRespPsU_t_grants.sinr, buffer(offset, ( (msglen >= 8) and 8 or (msglen-offset) )))
  offset = offset + ( (msglen >= 8) and 8 or (msglen-offset) )
  UlData_PuschReceiveRespPsU_t_grantsTree:add_le (UlData_PuschReceiveRespPsU_t_grants.rssi, buffer(offset, 4))
  offset = offset + 4
  UlData_PuschReceiveRespPsU_t_grantsTree:add_le (UlData_PuschReceiveRespPsU_t_grants.ulPmiRank2, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveRespPsU_t_grantsTree:add_le (UlData_PuschReceiveRespPsU_t_grants.ulPmiRank2_padding, buffer(offset, 3))
  offset = offset + 3
  UlData_PuschReceiveRespPsU_t_grantsTree:add_le (UlData_PuschReceiveRespPsU_t_grants.channelCorrMetric, buffer(offset, ( (msglen >= 8) and 8 or (msglen-offset) )))
  offset = offset + ( (msglen >= 8) and 8 or (msglen-offset) )
end
----------------------------------------------------------------
return module
