local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_PuschReceiveRespPsD'
end
function module:messageId()
  return 0x0209
end
----------------------------------------------------------------
local ULDATA_PUSCHRECEIVERESPPSD_T = Proto('UlData_PuschReceiveRespPsD_t', 'ULDATA_PUSCHRECEIVERESPPSD_T')
local UlData_PuschReceiveRespPsD_t = ULDATA_PUSCHRECEIVERESPPSD_T.fields
UlData_PuschReceiveRespPsD_t.sfn = ProtoField.uint16('UlData_PuschReceiveRespPsD_t.sfn', 'sfn', base.DEC)
UlData_PuschReceiveRespPsD_t.subframeNumber = ProtoField.uint8('UlData_PuschReceiveRespPsD_t.subframeNumber', 'subframeNumber', base.DEC)
UlData_PuschReceiveRespPsD_t.subcellId = ProtoField.uint8('UlData_PuschReceiveRespPsD_t.subcellId', 'subcellId', base.DEC)
UlData_PuschReceiveRespPsD_t.numOfGrants = ProtoField.uint8('UlData_PuschReceiveRespPsD_t.numOfGrants', 'numOfGrants', base.HEX)
UlData_PuschReceiveRespPsD_t.numOfGrants_padding = ProtoField.bytes('UlData_PuschReceiveRespPsD_t.numOfGrants_padding', 'numOfGrants_padding', base.HEX)
local ULDATA_PUSCHRECEIVERESPPSD_T_GRANTS = Proto('UlData_PuschReceiveRespPsD_t_grants', 'ULDATA_PUSCHRECEIVERESPPSD_T_GRANTS')
local UlData_PuschReceiveRespPsD_t_grants = ULDATA_PUSCHRECEIVERESPPSD_T_GRANTS.fields
UlData_PuschReceiveRespPsD_t_grants.rnti = ProtoField.uint16('UlData_PuschReceiveRespPsD_t_grants.rnti', 'rnti', base.HEX)
UlData_PuschReceiveRespPsD_t_grants.dtx = ProtoField.bytes('UlData_PuschReceiveRespPsD_t_grants.dtx', 'dtx', base.HEX)
UlData_PuschReceiveRespPsD_t_grants.dtx_padding = ProtoField.int8('UlData_PuschReceiveRespPsD_t_grants.dtx_padding', 'dtx_padding', base.DEC)
UlData_PuschReceiveRespPsD_t_grants.shortTermTaMetric = ProtoField.uint16('UlData_PuschReceiveRespPsD_t_grants.shortTermTaMetric', 'shortTermTaMetric', base.HEX)
UlData_PuschReceiveRespPsD_t_grants.shortTermTaMetric_padding = ProtoField.bytes('UlData_PuschReceiveRespPsD_t_grants.shortTermTaMetric_padding', 'shortTermTaMetric_padding', base.HEX)
UlData_PuschReceiveRespPsD_t_grants.shortTermTaPeakAmp = ProtoField.float('UlData_PuschReceiveRespPsD_t_grants.shortTermTaPeakAmp', 'shortTermTaPeakAmp', base.NONE)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_PUSCHRECEIVERESPPSD_T, buffer())
  subtree:set_text('UlData_PuschReceiveRespPsD_t')
  subtree:add_le (UlData_PuschReceiveRespPsD_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_PuschReceiveRespPsD_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveRespPsD_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveRespPsD_t.numOfGrants, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveRespPsD_t.numOfGrants_padding, buffer(offset, 3))
  offset = offset + 3
  local UlData_PuschReceiveRespPsD_t_grantsTree = subtree:add (ULDATA_PUSCHRECEIVERESPPSD_T_GRANTS, buffer(offset))
  UlData_PuschReceiveRespPsD_t_grantsTree:set_text('UlData_PuschReceiveRespPsD_t_grants')
  UlData_PuschReceiveRespPsD_t_grantsTree:add_le (UlData_PuschReceiveRespPsD_t_grants.rnti, buffer(offset, 2))
  offset = offset + 2
  UlData_PuschReceiveRespPsD_t_grantsTree:add_le (UlData_PuschReceiveRespPsD_t_grants.dtx, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveRespPsD_t_grantsTree:add_le (UlData_PuschReceiveRespPsD_t_grants.dtx_padding, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveRespPsD_t_grantsTree:add_le (UlData_PuschReceiveRespPsD_t_grants.shortTermTaMetric, buffer(offset, 2))
  offset = offset + 2
  UlData_PuschReceiveRespPsD_t_grantsTree:add_le (UlData_PuschReceiveRespPsD_t_grants.shortTermTaMetric_padding, buffer(offset, 2))
  offset = offset + 2
  UlData_PuschReceiveRespPsD_t_grantsTree:add_le (UlData_PuschReceiveRespPsD_t_grants.shortTermTaPeakAmp, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
