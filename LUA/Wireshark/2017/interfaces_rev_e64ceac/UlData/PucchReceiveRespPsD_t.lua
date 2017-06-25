local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_PucchReceiveRespPsD'
end
function module:messageId()
  return 0x0211
end
----------------------------------------------------------------
local ULDATA_PUCCHRECEIVERESPPSD_T = Proto('UlData_PucchReceiveRespPsD_t', 'ULDATA_PUCCHRECEIVERESPPSD_T')
local UlData_PucchReceiveRespPsD_t = ULDATA_PUCCHRECEIVERESPPSD_T.fields
UlData_PucchReceiveRespPsD_t.sfn = ProtoField.uint16('UlData_PucchReceiveRespPsD_t.sfn', 'sfn', base.DEC)
UlData_PucchReceiveRespPsD_t.subframeNumber = ProtoField.uint8('UlData_PucchReceiveRespPsD_t.subframeNumber', 'subframeNumber', base.DEC)
UlData_PucchReceiveRespPsD_t.subcellId = ProtoField.uint8('UlData_PucchReceiveRespPsD_t.subcellId', 'subcellId', base.DEC)
UlData_PucchReceiveRespPsD_t.numOfPucchResources = ProtoField.bytes('UlData_PucchReceiveRespPsD_t.numOfPucchResources', 'numOfPucchResources', base.HEX)
UlData_PucchReceiveRespPsD_t.numOfPucchResources_padding = ProtoField.bytes('UlData_PucchReceiveRespPsD_t.numOfPucchResources_padding', 'numOfPucchResources_padding', base.HEX)
local ULDATA_PUCCHRECEIVERESPPSD_T_PUCCHRESOURCES = Proto('UlData_PucchReceiveRespPsD_t_pucchResources', 'ULDATA_PUCCHRECEIVERESPPSD_T_PUCCHRESOURCES')
local UlData_PucchReceiveRespPsD_t_pucchResources = ULDATA_PUCCHRECEIVERESPPSD_T_PUCCHRESOURCES.fields
UlData_PucchReceiveRespPsD_t_pucchResources.rnti = ProtoField.uint16('UlData_PucchReceiveRespPsD_t_pucchResources.rnti', 'rnti', base.HEX)
UlData_PucchReceiveRespPsD_t_pucchResources.n2Pucch = ProtoField.bytes('UlData_PucchReceiveRespPsD_t_pucchResources.n2Pucch', 'n2Pucch', base.HEX)
UlData_PucchReceiveRespPsD_t_pucchResources.compositeTaFlag = ProtoField.int8('UlData_PucchReceiveRespPsD_t_pucchResources.compositeTaFlag', 'compositeTaFlag', base.DEC)
UlData_PucchReceiveRespPsD_t_pucchResources.shortTermTaMetric = ProtoField.uint8('UlData_PucchReceiveRespPsD_t_pucchResources.shortTermTaMetric', 'shortTermTaMetric', base.HEX)
UlData_PucchReceiveRespPsD_t_pucchResources.shortTermTaPeakAmp = ProtoField.bytes('UlData_PucchReceiveRespPsD_t_pucchResources.shortTermTaPeakAmp', 'shortTermTaPeakAmp', base.HEX)
UlData_PucchReceiveRespPsD_t_pucchResources.dtx = ProtoField.bytes('UlData_PucchReceiveRespPsD_t_pucchResources.dtx', 'dtx', base.HEX)
UlData_PucchReceiveRespPsD_t_pucchResources.dtx_padding = ProtoField.bytes('UlData_PucchReceiveRespPsD_t_pucchResources.dtx_padding', 'dtx_padding', base.HEX)
UlData_PucchReceiveRespPsD_t_pucchResources.uciBits = ProtoField.uint8('UlData_PucchReceiveRespPsD_t_pucchResources.uciBits', 'uciBits', base.HEX)
UlData_PucchReceiveRespPsD_t_pucchResources.dtxMetric = ProtoField.uint16('UlData_PucchReceiveRespPsD_t_pucchResources.dtxMetric', 'dtxMetric', base.HEX)
UlData_PucchReceiveRespPsD_t_pucchResources.dtxThreshold = ProtoField.uint16('UlData_PucchReceiveRespPsD_t_pucchResources.dtxThreshold', 'dtxThreshold', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_PUCCHRECEIVERESPPSD_T, buffer())
  subtree:set_text('UlData_PucchReceiveRespPsD_t')
  subtree:add_le (UlData_PucchReceiveRespPsD_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_PucchReceiveRespPsD_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PucchReceiveRespPsD_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PucchReceiveRespPsD_t.numOfPucchResources, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PucchReceiveRespPsD_t.numOfPucchResources_padding, buffer(offset, 3))
  offset = offset + 3
  local UlData_PucchReceiveRespPsD_t_pucchResourcesTree = subtree:add (ULDATA_PUCCHRECEIVERESPPSD_T_PUCCHRESOURCES, buffer(offset))
  UlData_PucchReceiveRespPsD_t_pucchResourcesTree:set_text('UlData_PucchReceiveRespPsD_t_pucchResources')
  UlData_PucchReceiveRespPsD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsD_t_pucchResources.rnti, buffer(offset, 2))
  offset = offset + 2
  UlData_PucchReceiveRespPsD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsD_t_pucchResources.n2Pucch, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveRespPsD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsD_t_pucchResources.compositeTaFlag, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveRespPsD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsD_t_pucchResources.shortTermTaMetric, buffer(offset, ( (msglen >= 4) and 4 or (msglen-offset) )))
  offset = offset + ( (msglen >= 4) and 4 or (msglen-offset) )
  UlData_PucchReceiveRespPsD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsD_t_pucchResources.shortTermTaPeakAmp, buffer(offset, ( (msglen >= 8) and 8 or (msglen-offset) )))
  offset = offset + ( (msglen >= 8) and 8 or (msglen-offset) )
  UlData_PucchReceiveRespPsD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsD_t_pucchResources.dtx, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveRespPsD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsD_t_pucchResources.dtx_padding, buffer(offset, 3))
  offset = offset + 3
  UlData_PucchReceiveRespPsD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsD_t_pucchResources.uciBits, buffer(offset, ( (msglen >= 4) and 4 or (msglen-offset) )))
  offset = offset + ( (msglen >= 4) and 4 or (msglen-offset) )
  UlData_PucchReceiveRespPsD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsD_t_pucchResources.dtxMetric, buffer(offset, 2))
  offset = offset + 2
  UlData_PucchReceiveRespPsD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespPsD_t_pucchResources.dtxThreshold, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
