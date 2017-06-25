local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_PucchReceiveReq'
end
function module:messageId()
  return 0x0210
end
----------------------------------------------------------------
local ULDATA_PUCCHRECEIVEREQ_T = Proto('UlData_PucchReceiveReq_t', 'ULDATA_PUCCHRECEIVEREQ_T')
local UlData_PucchReceiveReq_t = ULDATA_PUCCHRECEIVEREQ_T.fields
UlData_PucchReceiveReq_t.addrPucchReceiveRespPsD = ProtoField.uint32('UlData_PucchReceiveReq_t.addrPucchReceiveRespPsD', 'addrPucchReceiveRespPsD', base.HEX)
UlData_PucchReceiveReq_t.addrPucchReceiveRespPsU = ProtoField.uint32('UlData_PucchReceiveReq_t.addrPucchReceiveRespPsU', 'addrPucchReceiveRespPsU', base.HEX)
UlData_PucchReceiveReq_t.addrPucchReceiveRespHarqD = ProtoField.uint32('UlData_PucchReceiveReq_t.addrPucchReceiveRespHarqD', 'addrPucchReceiveRespHarqD', base.HEX)
UlData_PucchReceiveReq_t.sfn = ProtoField.uint16('UlData_PucchReceiveReq_t.sfn', 'sfn', base.DEC)
UlData_PucchReceiveReq_t.subframeNumber = ProtoField.uint8('UlData_PucchReceiveReq_t.subframeNumber', 'subframeNumber', base.DEC)
UlData_PucchReceiveReq_t.subcellId = ProtoField.uint8('UlData_PucchReceiveReq_t.subcellId', 'subcellId', base.DEC)
UlData_PucchReceiveReq_t.numOfPucchResources = ProtoField.bytes('UlData_PucchReceiveReq_t.numOfPucchResources', 'numOfPucchResources', base.HEX)
UlData_PucchReceiveReq_t.numOfPucchResources_padding = ProtoField.bytes('UlData_PucchReceiveReq_t.numOfPucchResources_padding', 'numOfPucchResources_padding', base.HEX)
local ULDATA_PUCCHRECEIVEREQ_T_PUCCHRESOURCES = Proto('UlData_PucchReceiveReq_t_pucchResources', 'ULDATA_PUCCHRECEIVEREQ_T_PUCCHRESOURCES')
local UlData_PucchReceiveReq_t_pucchResources = ULDATA_PUCCHRECEIVEREQ_T_PUCCHRESOURCES.fields
UlData_PucchReceiveReq_t_pucchResources.rnti = ProtoField.uint16('UlData_PucchReceiveReq_t_pucchResources.rnti', 'rnti', base.HEX)
UlData_PucchReceiveReq_t_pucchResources.harqProcessIndex = ProtoField.uint8('UlData_PucchReceiveReq_t_pucchResources.harqProcessIndex', 'harqProcessIndex', base.HEX)
UlData_PucchReceiveReq_t_pucchResources.numOfLayers = ProtoField.bytes('UlData_PucchReceiveReq_t_pucchResources.numOfLayers', 'numOfLayers', base.HEX)
UlData_PucchReceiveReq_t_pucchResources.numOfAntennaPorts = ProtoField.bytes('UlData_PucchReceiveReq_t_pucchResources.numOfAntennaPorts', 'numOfAntennaPorts', base.HEX)
UlData_PucchReceiveReq_t_pucchResources.n2Pucch = ProtoField.bytes('UlData_PucchReceiveReq_t_pucchResources.n2Pucch', 'n2Pucch', base.HEX)
UlData_PucchReceiveReq_t_pucchResources.dmrsScramblingSequenceInt = ProtoField.uint16('UlData_PucchReceiveReq_t_pucchResources.dmrsScramblingSequenceInt', 'dmrsScramblingSequenceInt', base.HEX)
UlData_PucchReceiveReq_t_pucchResources.nANPucchFormat2 = ProtoField.bytes('UlData_PucchReceiveReq_t_pucchResources.nANPucchFormat2', 'nANPucchFormat2', base.HEX)
UlData_PucchReceiveReq_t_pucchResources.numOfBitsOfUciInformation = ProtoField.bytes('UlData_PucchReceiveReq_t_pucchResources.numOfBitsOfUciInformation', 'numOfBitsOfUciInformation', base.HEX)
UlData_PucchReceiveReq_t_pucchResources.compositeTaFlag = ProtoField.int8('UlData_PucchReceiveReq_t_pucchResources.compositeTaFlag', 'compositeTaFlag', base.DEC)
UlData_PucchReceiveReq_t_pucchResources.compositeTaFlag_padding = ProtoField.int8('UlData_PucchReceiveReq_t_pucchResources.compositeTaFlag_padding', 'compositeTaFlag_padding', base.DEC)
local ULDATA_PUCCHRECEIVEREQ_T_PUCCHRESOURCES_LONGTERMCFOMETRIC = Proto('UlData_PucchReceiveReq_t_pucchResources_longTermCfoMetric', 'ULDATA_PUCCHRECEIVEREQ_T_PUCCHRESOURCES_LONGTERMCFOMETRIC')
local UlData_PucchReceiveReq_t_pucchResources_longTermCfoMetric = ULDATA_PUCCHRECEIVEREQ_T_PUCCHRESOURCES_LONGTERMCFOMETRIC.fields
UlData_PucchReceiveReq_t_pucchResources_longTermCfoMetric.Re = ProtoField.bytes('UlData_PucchReceiveReq_t_pucchResources_longTermCfoMetric.Re', 'Re', base.HEX)
UlData_PucchReceiveReq_t_pucchResources_longTermCfoMetric.Im = ProtoField.bytes('UlData_PucchReceiveReq_t_pucchResources_longTermCfoMetric.Im', 'Im', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_PUCCHRECEIVEREQ_T, buffer())
  subtree:set_text('UlData_PucchReceiveReq_t')
  subtree:add_le (UlData_PucchReceiveReq_t.addrPucchReceiveRespPsD, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (UlData_PucchReceiveReq_t.addrPucchReceiveRespPsU, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (UlData_PucchReceiveReq_t.addrPucchReceiveRespHarqD, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (UlData_PucchReceiveReq_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_PucchReceiveReq_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PucchReceiveReq_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PucchReceiveReq_t.numOfPucchResources, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PucchReceiveReq_t.numOfPucchResources_padding, buffer(offset, 3))
  offset = offset + 3
  local UlData_PucchReceiveReq_t_pucchResourcesTree = subtree:add (ULDATA_PUCCHRECEIVEREQ_T_PUCCHRESOURCES, buffer(offset))
  UlData_PucchReceiveReq_t_pucchResourcesTree:set_text('UlData_PucchReceiveReq_t_pucchResources')
  UlData_PucchReceiveReq_t_pucchResourcesTree:add_le (UlData_PucchReceiveReq_t_pucchResources.rnti, buffer(offset, 2))
  offset = offset + 2
  UlData_PucchReceiveReq_t_pucchResourcesTree:add_le (UlData_PucchReceiveReq_t_pucchResources.harqProcessIndex, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveReq_t_pucchResourcesTree:add_le (UlData_PucchReceiveReq_t_pucchResources.numOfLayers, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveReq_t_pucchResourcesTree:add_le (UlData_PucchReceiveReq_t_pucchResources.numOfAntennaPorts, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveReq_t_pucchResourcesTree:add_le (UlData_PucchReceiveReq_t_pucchResources.n2Pucch, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveReq_t_pucchResourcesTree:add_le (UlData_PucchReceiveReq_t_pucchResources.dmrsScramblingSequenceInt, buffer(offset, 2))
  offset = offset + 2
  UlData_PucchReceiveReq_t_pucchResourcesTree:add_le (UlData_PucchReceiveReq_t_pucchResources.nANPucchFormat2, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveReq_t_pucchResourcesTree:add_le (UlData_PucchReceiveReq_t_pucchResources.numOfBitsOfUciInformation, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveReq_t_pucchResourcesTree:add_le (UlData_PucchReceiveReq_t_pucchResources.compositeTaFlag, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveReq_t_pucchResourcesTree:add_le (UlData_PucchReceiveReq_t_pucchResources.compositeTaFlag_padding, buffer(offset, 1))
  offset = offset + 1
  local UlData_PucchReceiveReq_t_pucchResources_longTermCfoMetricTree = UlData_PucchReceiveReq_t_pucchResourcesTree:add (ULDATA_PUCCHRECEIVEREQ_T_PUCCHRESOURCES_LONGTERMCFOMETRIC, buffer(offset))
  UlData_PucchReceiveReq_t_pucchResources_longTermCfoMetricTree:set_text('UlData_PucchReceiveReq_t_pucchResources_longTermCfoMetric')
  UlData_PucchReceiveReq_t_pucchResources_longTermCfoMetricTree:add_le (UlData_PucchReceiveReq_t_pucchResources_longTermCfoMetric.Re, buffer(offset, 4))
  offset = offset + 4
  UlData_PucchReceiveReq_t_pucchResources_longTermCfoMetricTree:add_le (UlData_PucchReceiveReq_t_pucchResources_longTermCfoMetric.Im, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
