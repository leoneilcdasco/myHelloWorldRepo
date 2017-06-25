local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_PucchReceiveRespPsU'
end
function module:messageId()
  return 0x0212
end
----------------------------------------------------------------
local ULDATA_PUCCHRECEIVERESPPSU_T = Proto('UlData_PucchReceiveRespPsU_t', 'ULDATA_PUCCHRECEIVERESPPSU_T')
local UlData_PucchReceiveRespPsU_t = ULDATA_PUCCHRECEIVERESPPSU_T.fields
UlData_PucchReceiveRespPsU_t.sfn = ProtoField.uint16('UlData_PucchReceiveRespPsU_t.sfn', 'sfn', base.DEC)
UlData_PucchReceiveRespPsU_t.subframeNumber = ProtoField.uint8('UlData_PucchReceiveRespPsU_t.subframeNumber', 'subframeNumber', base.DEC)
UlData_PucchReceiveRespPsU_t.subcellId = ProtoField.uint8('UlData_PucchReceiveRespPsU_t.subcellId', 'subcellId', base.DEC)
UlData_PucchReceiveRespPsU_t.numOfPucchResources = ProtoField.bytes('UlData_PucchReceiveRespPsU_t.numOfPucchResources', 'numOfPucchResources', base.HEX)
UlData_PucchReceiveRespPsU_t.numOfPucchResources_padding = ProtoField.bytes('UlData_PucchReceiveRespPsU_t.numOfPucchResources_padding', 'numOfPucchResources_padding', base.HEX)
local ULDATA_PUCCHRECEIVERESPPSU_T_PUCCHRESOURCES = Proto('UlData_PucchReceiveRespPsU_t_pucchResources', 'ULDATA_PUCCHRECEIVERESPPSU_T_PUCCHRESOURCES')
local UlData_PucchReceiveRespPsU_t_pucchResources = ULDATA_PUCCHRECEIVERESPPSU_T_PUCCHRESOURCES.fields
UlData_PucchReceiveRespPsU_t_pucchResources.rnti = ProtoField.uint16('UlData_PucchReceiveRespPsU_t_pucchResources.rnti', 'rnti', base.HEX)
UlData_PucchReceiveRespPsU_t_pucchResources.n2Pucch = ProtoField.bytes('UlData_PucchReceiveRespPsU_t_pucchResources.n2Pucch', 'n2Pucch', base.HEX)
UlData_PucchReceiveRespPsU_t_pucchResources.dtx = ProtoField.bytes('UlData_PucchReceiveRespPsU_t_pucchResources.dtx', 'dtx', base.HEX)
UlData_PucchReceiveRespPsU_t_pucchResources.sR = ProtoField.bytes('UlData_PucchReceiveRespPsU_t_pucchResources.sR', 'sR', base.HEX)
UlData_PucchReceiveRespPsU_t_pucchResources.compositeTaFlag = ProtoField.int8('UlData_PucchReceiveRespPsU_t_pucchResources.compositeTaFlag', 'compositeTaFlag', base.DEC)
UlData_PucchReceiveRespPsU_t_pucchResources.compositeTaFlag_padding = ProtoField.bytes('UlData_PucchReceiveRespPsU_t_pucchResources.compositeTaFlag_padding', 'compositeTaFlag_padding', base.HEX)
UlData_PucchReceiveRespPsU_t_pucchResources.shortTermTaMetric = ProtoField.uint8('UlData_PucchReceiveRespPsU_t_pucchResources.shortTermTaMetric', 'shortTermTaMetric', base.HEX)
UlData_PucchReceiveRespPsU_t_pucchResources.shortTermTaPeakAmp = ProtoField.bytes('UlData_PucchReceiveRespPsU_t_pucchResources.shortTermTaPeakAmp', 'shortTermTaPeakAmp', base.HEX)
UlData_PucchReceiveRespPsU_t_pucchResources.rxPower = ProtoField.float('UlData_PucchReceiveRespPsU_t_pucchResources.rxPower', 'rxPower', base.NONE)
UlData_PucchReceiveRespPsU_t_pucchResources.sinr = ProtoField.bytes('UlData_PucchReceiveRespPsU_t_pucchResources.sinr', 'sinr', base.HEX)
UlData_PucchReceiveRespPsU_t_pucchResources.ulPmiRank1 = ProtoField.bytes('UlData_PucchReceiveRespPsU_t_pucchResources.ulPmiRank1', 'ulPmiRank1', base.HEX)
UlData_PucchReceiveRespPsU_t_pucchResources.ulPmiRank1_padding = ProtoField.bytes('UlData_PucchReceiveRespPsU_t_pucchResources.ulPmiRank1_padding', 'ulPmiRank1_padding', base.HEX)
UlData_PucchReceiveRespPsU_t_pucchResources.noisePower = ProtoField.float('UlData_PucchReceiveRespPsU_t_pucchResources.noisePower', 'noisePower', base.NONE)
UlData_PucchReceiveRespPsU_t_pucchResources.rssi = ProtoField.float('UlData_PucchReceiveRespPsU_t_pucchResources.rssi', 'rssi', base.NONE)
UlData_PucchReceiveRespPsU_t_pucchResources.dtxMetric = ProtoField.uint16('UlData_PucchReceiveRespPsU_t_pucchResources.dtxMetric', 'dtxMetric', base.HEX)
UlData_PucchReceiveRespPsU_t_pucchResources.dtxThreshold = ProtoField.uint16('UlData_PucchReceiveRespPsU_t_pucchResources.dtxThreshold', 'dtxThreshold', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_PUCCHRECEIVERESPPSU_T, buffer())
  subtree:set_text('UlData_PucchReceiveRespPsU_t')
  subtree:add_le (UlData_PucchReceiveRespPsU_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_PucchReceiveRespPsU_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PucchReceiveRespPsU_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PucchReceiveRespPsU_t.numOfPucchResources, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PucchReceiveRespPsU_t.numOfPucchResources_padding, buffer(offset, 3))
  offset = offset + 3
  local UlData_PucchReceiveRespPsU_t_pucchResourcesTree = subtree:add (ULDATA_PUCCHRECEIVERESPPSU_T_PUCCHRESOURCES, buffer(offset))
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:set_text('UlData_PucchReceiveRespPsU_t_pucchResources')
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.rnti, buffer(offset, 2))
  offset = offset + 2
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.n2Pucch, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.dtx, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.sR, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.compositeTaFlag, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.compositeTaFlag_padding, buffer(offset, 2))
  offset = offset + 2
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.shortTermTaMetric, buffer(offset, ( (msglen >= 4) and 4 or (msglen-offset) )))
  offset = offset + ( (msglen >= 4) and 4 or (msglen-offset) )
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.shortTermTaPeakAmp, buffer(offset, ( (msglen >= 8) and 8 or (msglen-offset) )))
  offset = offset + ( (msglen >= 8) and 8 or (msglen-offset) )
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.rxPower, buffer(offset, 4))
  offset = offset + 4
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.sinr, buffer(offset, ( (msglen >= 8) and 8 or (msglen-offset) )))
  offset = offset + ( (msglen >= 8) and 8 or (msglen-offset) )
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.ulPmiRank1, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.ulPmiRank1_padding, buffer(offset, 3))
  offset = offset + 3
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.noisePower, buffer(offset, 4))
  offset = offset + 4
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.rssi, buffer(offset, 4))
  offset = offset + 4
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.dtxMetric, buffer(offset, 2))
  offset = offset + 2
  UlData_PucchReceiveRespPsU_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsU_t_pucchResources.dtxThreshold, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
