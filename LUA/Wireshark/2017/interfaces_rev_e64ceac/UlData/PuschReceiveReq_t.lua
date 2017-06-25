local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_PuschReceiveReq'
end
function module:messageId()
  return 0x0207
end
----------------------------------------------------------------
local ULDATA_PUSCHRECEIVEREQ_T = Proto('UlData_PuschReceiveReq_t', 'ULDATA_PUSCHRECEIVEREQ_T')
local UlData_PuschReceiveReq_t = ULDATA_PUSCHRECEIVEREQ_T.fields
UlData_PuschReceiveReq_t.addrPuschReceiveRespPsU = ProtoField.uint32('UlData_PuschReceiveReq_t.addrPuschReceiveRespPsU', 'addrPuschReceiveRespPsU', base.HEX)
UlData_PuschReceiveReq_t.addrPuschReceiveRespPsD = ProtoField.uint32('UlData_PuschReceiveReq_t.addrPuschReceiveRespPsD', 'addrPuschReceiveRespPsD', base.HEX)
UlData_PuschReceiveReq_t.addrPuschReceiveRespLo = ProtoField.uint32('UlData_PuschReceiveReq_t.addrPuschReceiveRespLo', 'addrPuschReceiveRespLo', base.HEX)
UlData_PuschReceiveReq_t.addrPuschReceiveRespHarqU = ProtoField.uint32('UlData_PuschReceiveReq_t.addrPuschReceiveRespHarqU', 'addrPuschReceiveRespHarqU', base.HEX)
UlData_PuschReceiveReq_t.sfn = ProtoField.uint16('UlData_PuschReceiveReq_t.sfn', 'sfn', base.DEC)
UlData_PuschReceiveReq_t.subframeNumber = ProtoField.uint8('UlData_PuschReceiveReq_t.subframeNumber', 'subframeNumber', base.DEC)
UlData_PuschReceiveReq_t.subcellId = ProtoField.uint8('UlData_PuschReceiveReq_t.subcellId', 'subcellId', base.DEC)
UlData_PuschReceiveReq_t.numOfGrants = ProtoField.uint8('UlData_PuschReceiveReq_t.numOfGrants', 'numOfGrants', base.HEX)
UlData_PuschReceiveReq_t.numOfGrants_padding = ProtoField.bytes('UlData_PuschReceiveReq_t.numOfGrants_padding', 'numOfGrants_padding', base.HEX)
local ULDATA_PUSCHRECEIVEREQ_T_GRANTS = Proto('UlData_PuschReceiveReq_t_grants', 'ULDATA_PUSCHRECEIVEREQ_T_GRANTS')
local UlData_PuschReceiveReq_t_grants = ULDATA_PUSCHRECEIVEREQ_T_GRANTS.fields
UlData_PuschReceiveReq_t_grants.tbSize = ProtoField.uint32('UlData_PuschReceiveReq_t_grants.tbSize', 'tbSize', base.HEX)
UlData_PuschReceiveReq_t_grants.rnti = ProtoField.uint16('UlData_PuschReceiveReq_t_grants.rnti', 'rnti', base.HEX)
UlData_PuschReceiveReq_t_grants.numOfPuschSymbols = ProtoField.bytes('UlData_PuschReceiveReq_t_grants.numOfPuschSymbols', 'numOfPuschSymbols', base.HEX)
UlData_PuschReceiveReq_t_grants.startPrbGroup = ProtoField.uint8('UlData_PuschReceiveReq_t_grants.startPrbGroup', 'startPrbGroup', base.HEX)
UlData_PuschReceiveReq_t_grants.numOfPrbGroups = ProtoField.uint8('UlData_PuschReceiveReq_t_grants.numOfPrbGroups', 'numOfPrbGroups', base.HEX)
UlData_PuschReceiveReq_t_grants.mcs = ProtoField.uint8('UlData_PuschReceiveReq_t_grants.mcs', 'mcs', base.HEX)
UlData_PuschReceiveReq_t_grants.numOfLayerAndReMapping = ProtoField.bytes('UlData_PuschReceiveReq_t_grants.numOfLayerAndReMapping', 'numOfLayerAndReMapping', base.HEX)
UlData_PuschReceiveReq_t_grants.spatialMode = ProtoField.bytes('UlData_PuschReceiveReq_t_grants.spatialMode', 'spatialMode', base.HEX)
UlData_PuschReceiveReq_t_grants.codebookIndex = ProtoField.bytes('UlData_PuschReceiveReq_t_grants.codebookIndex', 'codebookIndex', base.HEX)
UlData_PuschReceiveReq_t_grants.nscId = ProtoField.uint8('UlData_PuschReceiveReq_t_grants.nscId', 'nscId', base.HEX)
UlData_PuschReceiveReq_t_grants.dmrsScramblingSequenceInt = ProtoField.uint16('UlData_PuschReceiveReq_t_grants.dmrsScramblingSequenceInt', 'dmrsScramblingSequenceInt', base.HEX)
UlData_PuschReceiveReq_t_grants.pcrsScramblingSequenceInt = ProtoField.uint16('UlData_PuschReceiveReq_t_grants.pcrsScramblingSequenceInt', 'pcrsScramblingSequenceInt', base.HEX)
UlData_PuschReceiveReq_t_grants.dualPcrs = ProtoField.int8('UlData_PuschReceiveReq_t_grants.dualPcrs', 'dualPcrs', base.DEC)
UlData_PuschReceiveReq_t_grants.harqProcessIndex = ProtoField.uint8('UlData_PuschReceiveReq_t_grants.harqProcessIndex', 'harqProcessIndex', base.HEX)
UlData_PuschReceiveReq_t_grants.absoluteHarqProcessIndex = ProtoField.uint16('UlData_PuschReceiveReq_t_grants.absoluteHarqProcessIndex', 'absoluteHarqProcessIndex', base.HEX)
UlData_PuschReceiveReq_t_grants.freshHarqTrans = ProtoField.int8('UlData_PuschReceiveReq_t_grants.freshHarqTrans', 'freshHarqTrans', base.DEC)
UlData_PuschReceiveReq_t_grants.freshHarqTrans_padding = ProtoField.int8('UlData_PuschReceiveReq_t_grants.freshHarqTrans_padding', 'freshHarqTrans_padding', base.DEC)
local ULDATA_PUSCHRECEIVEREQ_T_GRANTS_LONGTERMCFOMETRIC = Proto('UlData_PuschReceiveReq_t_grants_longTermCfoMetric', 'ULDATA_PUSCHRECEIVEREQ_T_GRANTS_LONGTERMCFOMETRIC')
local UlData_PuschReceiveReq_t_grants_longTermCfoMetric = ULDATA_PUSCHRECEIVEREQ_T_GRANTS_LONGTERMCFOMETRIC.fields
UlData_PuschReceiveReq_t_grants_longTermCfoMetric.Re = ProtoField.bytes('UlData_PuschReceiveReq_t_grants_longTermCfoMetric.Re', 'Re', base.HEX)
UlData_PuschReceiveReq_t_grants_longTermCfoMetric.Im = ProtoField.bytes('UlData_PuschReceiveReq_t_grants_longTermCfoMetric.Im', 'Im', base.HEX)
UlData_PuschReceiveReq_t_grants.foeValid = ProtoField.int8('UlData_PuschReceiveReq_t_grants.foeValid', 'foeValid', base.DEC)
UlData_PuschReceiveReq_t_grants.foeValid_padding = ProtoField.bytes('UlData_PuschReceiveReq_t_grants.foeValid_padding', 'foeValid_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_PUSCHRECEIVEREQ_T, buffer())
  subtree:set_text('UlData_PuschReceiveReq_t')
  subtree:add_le (UlData_PuschReceiveReq_t.addrPuschReceiveRespPsU, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (UlData_PuschReceiveReq_t.addrPuschReceiveRespPsD, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (UlData_PuschReceiveReq_t.addrPuschReceiveRespLo, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (UlData_PuschReceiveReq_t.addrPuschReceiveRespHarqU, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (UlData_PuschReceiveReq_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_PuschReceiveReq_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveReq_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveReq_t.numOfGrants, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveReq_t.numOfGrants_padding, buffer(offset, 3))
  offset = offset + 3
  local UlData_PuschReceiveReq_t_grantsTree = subtree:add (ULDATA_PUSCHRECEIVEREQ_T_GRANTS, buffer(offset))
  UlData_PuschReceiveReq_t_grantsTree:set_text('UlData_PuschReceiveReq_t_grants')
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.tbSize, buffer(offset, 4))
  offset = offset + 4
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.rnti, buffer(offset, 2))
  offset = offset + 2
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.numOfPuschSymbols, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.startPrbGroup, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.numOfPrbGroups, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.mcs, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.numOfLayerAndReMapping, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.spatialMode, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.codebookIndex, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.nscId, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.dmrsScramblingSequenceInt, buffer(offset, 2))
  offset = offset + 2
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.pcrsScramblingSequenceInt, buffer(offset, 2))
  offset = offset + 2
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.dualPcrs, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.harqProcessIndex, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.absoluteHarqProcessIndex, buffer(offset, 2))
  offset = offset + 2
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.freshHarqTrans, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.freshHarqTrans_padding, buffer(offset, 1))
  offset = offset + 1
  local UlData_PuschReceiveReq_t_grants_longTermCfoMetricTree = UlData_PuschReceiveReq_t_grantsTree:add (ULDATA_PUSCHRECEIVEREQ_T_GRANTS_LONGTERMCFOMETRIC, buffer(offset))
  UlData_PuschReceiveReq_t_grants_longTermCfoMetricTree:set_text('UlData_PuschReceiveReq_t_grants_longTermCfoMetric')
  UlData_PuschReceiveReq_t_grants_longTermCfoMetricTree:add_le (UlData_PuschReceiveReq_t_grants_longTermCfoMetric.Re, buffer(offset, 4))
  offset = offset + 4
  UlData_PuschReceiveReq_t_grants_longTermCfoMetricTree:add_le (UlData_PuschReceiveReq_t_grants_longTermCfoMetric.Im, buffer(offset, 4))
  offset = offset + 4
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.foeValid, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveReq_t_grantsTree:add_le (UlData_PuschReceiveReq_t_grants.foeValid_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
