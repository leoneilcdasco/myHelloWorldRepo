local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCell_SubCellGroupSetupReq'
end
function module:messageId()
  return 0x0920
end
----------------------------------------------------------------
local PSCELL_SUBCELLGROUPSETUPREQ_T = Proto('PsCell_SubCellGroupSetupReq_t', 'PSCELL_SUBCELLGROUPSETUPREQ_T')
local PsCell_SubCellGroupSetupReq_t = PSCELL_SUBCELLGROUPSETUPREQ_T.fields
PsCell_SubCellGroupSetupReq_t.subcellGroupId = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t.subcellGroupId', 'subcellGroupId', base.HEX)
PsCell_SubCellGroupSetupReq_t.subcellGroupId_padding = ProtoField.bytes('PsCell_SubCellGroupSetupReq_t.subcellGroupId_padding', 'subcellGroupId_padding', base.HEX)
local PSCELL_SUBCELLGROUPSETUPREQ_T_SUBCELLLIST = Proto('PsCell_SubCellGroupSetupReq_t_subcellList', 'PSCELL_SUBCELLGROUPSETUPREQ_T_SUBCELLLIST')
local PsCell_SubCellGroupSetupReq_t_subcellList = PSCELL_SUBCELLGROUPSETUPREQ_T_SUBCELLLIST.fields
PsCell_SubCellGroupSetupReq_t_subcellList.subcellList_offset = ProtoField.uint32('PsCell_SubCellGroupSetupReq_t_subcellList.subcellList_offset', 'subcellList_offset', base.HEX)
PsCell_SubCellGroupSetupReq_t_subcellList.subcellList_length = ProtoField.uint32('PsCell_SubCellGroupSetupReq_t_subcellList.subcellList_length', 'subcellList_length', base.HEX)
PsCell_SubCellGroupSetupReq_t_subcellList.ngutraCellId = ProtoField.uint32('PsCell_SubCellGroupSetupReq_t_subcellList.ngutraCellId', 'ngutraCellId', base.HEX)
PsCell_SubCellGroupSetupReq_t_subcellList.subcellId = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_subcellList.subcellId', 'subcellId', base.DEC)
PsCell_SubCellGroupSetupReq_t_subcellList.subcellId_padding = ProtoField.int8('PsCell_SubCellGroupSetupReq_t_subcellList.subcellId_padding', 'subcellId_padding', base.DEC)
PsCell_SubCellGroupSetupReq_t_subcellList.physCellId = ProtoField.uint16('PsCell_SubCellGroupSetupReq_t_subcellList.physCellId', 'physCellId', base.HEX)
PsCell_SubCellGroupSetupReq_t_subcellList.L1UlNodeId = ProtoField.uint16('PsCell_SubCellGroupSetupReq_t_subcellList.L1UlNodeId', 'L1UlNodeId', base.HEX)
PsCell_SubCellGroupSetupReq_t_subcellList.L1DlNodeId = ProtoField.uint16('PsCell_SubCellGroupSetupReq_t_subcellList.L1DlNodeId', 'L1DlNodeId', base.HEX)
PsCell_SubCellGroupSetupReq_t_subcellList.dlMimoMode = ProtoField.bytes('PsCell_SubCellGroupSetupReq_t_subcellList.dlMimoMode', 'dlMimoMode', base.HEX)
PsCell_SubCellGroupSetupReq_t_subcellList.ulMimoMode = ProtoField.bytes('PsCell_SubCellGroupSetupReq_t_subcellList.ulMimoMode', 'ulMimoMode', base.HEX)
PsCell_SubCellGroupSetupReq_t_subcellList.ulMimoMode_padding = ProtoField.bytes('PsCell_SubCellGroupSetupReq_t_subcellList.ulMimoMode_padding', 'ulMimoMode_padding', base.HEX)
PsCell_SubCellGroupSetupReq_t_subcellList.brsAntennaPortList = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_subcellList.brsAntennaPortList', 'brsAntennaPortList', base.HEX)
PsCell_SubCellGroupSetupReq_t.numOfBrsAntPorts = ProtoField.bytes('PsCell_SubCellGroupSetupReq_t.numOfBrsAntPorts', 'numOfBrsAntPorts', base.HEX)
PsCell_SubCellGroupSetupReq_t.actDigitalBF = ProtoField.int8('PsCell_SubCellGroupSetupReq_t.actDigitalBF', 'actDigitalBF', base.DEC)
PsCell_SubCellGroupSetupReq_t.brsTransmissionPeriod = ProtoField.bytes('PsCell_SubCellGroupSetupReq_t.brsTransmissionPeriod', 'brsTransmissionPeriod', base.HEX)
PsCell_SubCellGroupSetupReq_t.xPrachPreambleFormat = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t.xPrachPreambleFormat', 'xPrachPreambleFormat', base.HEX)
PsCell_SubCellGroupSetupReq_t.xPrachConfiguration = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t.xPrachConfiguration', 'xPrachConfiguration', base.HEX)
PsCell_SubCellGroupSetupReq_t.actProactUlScheduling = ProtoField.int8('PsCell_SubCellGroupSetupReq_t.actProactUlScheduling', 'actProactUlScheduling', base.DEC)
PsCell_SubCellGroupSetupReq_t.ulSchedTimeIntervall = ProtoField.int16('PsCell_SubCellGroupSetupReq_t.ulSchedTimeIntervall', 'ulSchedTimeIntervall', base.DEC)
PsCell_SubCellGroupSetupReq_t.totalPA = ProtoField.uint32('PsCell_SubCellGroupSetupReq_t.totalPA', 'totalPA', base.HEX)
PsCell_SubCellGroupSetupReq_t.cfoFilterCoefficient = ProtoField.uint32('PsCell_SubCellGroupSetupReq_t.cfoFilterCoefficient', 'cfoFilterCoefficient', base.HEX)
PsCell_SubCellGroupSetupReq_t.raResponseWindowSize = ProtoField.bytes('PsCell_SubCellGroupSetupReq_t.raResponseWindowSize', 'raResponseWindowSize', base.HEX)
PsCell_SubCellGroupSetupReq_t.macContentionResTimer = ProtoField.bytes('PsCell_SubCellGroupSetupReq_t.macContentionResTimer', 'macContentionResTimer', base.HEX)
PsCell_SubCellGroupSetupReq_t.dlPcrsAntennaPortNumber = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t.dlPcrsAntennaPortNumber', 'dlPcrsAntennaPortNumber', base.HEX)
PsCell_SubCellGroupSetupReq_t.dlUlDataSubframeRatio = ProtoField.bytes('PsCell_SubCellGroupSetupReq_t.dlUlDataSubframeRatio', 'dlUlDataSubframeRatio', base.HEX)
local PSCELL_SUBCELLGROUPSETUPREQ_T_DLTDPRIO = Proto('PsCell_SubCellGroupSetupReq_t_dlTdPrio', 'PSCELL_SUBCELLGROUPSETUPREQ_T_DLTDPRIO')
local PsCell_SubCellGroupSetupReq_t_dlTdPrio = PSCELL_SUBCELLGROUPSETUPREQ_T_DLTDPRIO.fields
PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlRachMsg2 = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlRachMsg2', 'prioDlRachMsg2', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlHarqTransMsg4 = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlHarqTransMsg4', 'prioDlHarqTransMsg4', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlHarqRetransSrb1 = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlHarqRetransSrb1', 'prioDlHarqRetransSrb1', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlHarqRetransSrb2 = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlHarqRetransSrb2', 'prioDlHarqRetransSrb2', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlHarqRetransDrb = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlHarqRetransDrb', 'prioDlHarqRetransDrb', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlTimAdv = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlTimAdv', 'prioDlTimAdv', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlSrb1Traffic = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlSrb1Traffic', 'prioDlSrb1Traffic', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlSrb2Traffic = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlSrb2Traffic', 'prioDlSrb2Traffic', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlDrbTraffic = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlDrbTraffic', 'prioDlDrbTraffic', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlCsi = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlCsi', 'prioDlCsi', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlBsiSr = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlBsiSr', 'prioDlBsiSr', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlBsiSr_padding = ProtoField.int8('PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlBsiSr_padding', 'prioDlBsiSr_padding', base.DEC)
local PSCELL_SUBCELLGROUPSETUPREQ_T_ULTDPRIO = Proto('PsCell_SubCellGroupSetupReq_t_ulTdPrio', 'PSCELL_SUBCELLGROUPSETUPREQ_T_ULTDPRIO')
local PsCell_SubCellGroupSetupReq_t_ulTdPrio = PSCELL_SUBCELLGROUPSETUPREQ_T_ULTDPRIO.fields
PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlRachMsg3 = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlRachMsg3', 'prioUlRachMsg3', base.HEX)
PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlHarqRetransRach = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlHarqRetransRach', 'prioUlHarqRetransRach', base.HEX)
PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlHarqRetransSrb = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlHarqRetransSrb', 'prioUlHarqRetransSrb', base.HEX)
PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlHarqRetransDrb = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlHarqRetransDrb', 'prioUlHarqRetransDrb', base.HEX)
PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlSrResp = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlSrResp', 'prioUlSrResp', base.HEX)
PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlSrbTraffic = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlSrbTraffic', 'prioUlSrbTraffic', base.HEX)
PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlDrbTraffic = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlDrbTraffic', 'prioUlDrbTraffic', base.HEX)
PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlProactSched = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlProactSched', 'prioUlProactSched', base.HEX)
local PSCELL_SUBCELLGROUPSETUPREQ_T_ULLINKADAPTATION = Proto('PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation', 'PSCELL_SUBCELLGROUPSETUPREQ_T_ULLINKADAPTATION')
local PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation = PSCELL_SUBCELLGROUPSETUPREQ_T_ULLINKADAPTATION.fields
PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.actUlla = ProtoField.int8('PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.actUlla', 'actUlla', base.DEC)
PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.blerTarget = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.blerTarget', 'blerTarget', base.HEX)
PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.deltaSinrMax = ProtoField.uint16('PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.deltaSinrMax', 'deltaSinrMax', base.HEX)
PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.deltaSinrMin = ProtoField.int16('PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.deltaSinrMin', 'deltaSinrMin', base.DEC)
PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.deltaSinrMin_padding = ProtoField.bytes('PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.deltaSinrMin_padding', 'deltaSinrMin_padding', base.HEX)
PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.deltaSinrStepDown = ProtoField.uint32('PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.deltaSinrStepDown', 'deltaSinrStepDown', base.HEX)
PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.iniMcs = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.iniMcs', 'iniMcs', base.HEX)
PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.iniMcs_padding = ProtoField.int8('PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.iniMcs_padding', 'iniMcs_padding', base.DEC)
PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.maxCodeRate = ProtoField.uint16('PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.maxCodeRate', 'maxCodeRate', base.HEX)
local PSCELL_SUBCELLGROUPSETUPREQ_T_DLLINKADAPTATION = Proto('PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation', 'PSCELL_SUBCELLGROUPSETUPREQ_T_DLLINKADAPTATION')
local PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation = PSCELL_SUBCELLGROUPSETUPREQ_T_DLLINKADAPTATION.fields
PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.actDlla = ProtoField.int8('PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.actDlla', 'actDlla', base.DEC)
PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.blerTarget = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.blerTarget', 'blerTarget', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.deltaCqiMax = ProtoField.uint16('PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.deltaCqiMax', 'deltaCqiMax', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.deltaCqiMin = ProtoField.int16('PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.deltaCqiMin', 'deltaCqiMin', base.DEC)
PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.deltaCqiMin_padding = ProtoField.bytes('PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.deltaCqiMin_padding', 'deltaCqiMin_padding', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.deltaCqiStepDown = ProtoField.uint32('PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.deltaCqiStepDown', 'deltaCqiStepDown', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.iniMcs = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.iniMcs', 'iniMcs', base.HEX)
PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.iniMcs_padding = ProtoField.int8('PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.iniMcs_padding', 'iniMcs_padding', base.DEC)
PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.maxCodeRate = ProtoField.uint16('PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.maxCodeRate', 'maxCodeRate', base.HEX)
PsCell_SubCellGroupSetupReq_t.maxUlHarqTx = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t.maxUlHarqTx', 'maxUlHarqTx', base.HEX)
PsCell_SubCellGroupSetupReq_t.maxHarqMsg3Tx = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t.maxHarqMsg3Tx', 'maxHarqMsg3Tx', base.HEX)
PsCell_SubCellGroupSetupReq_t.maxDlHarqTx = ProtoField.uint8('PsCell_SubCellGroupSetupReq_t.maxDlHarqTx', 'maxDlHarqTx', base.HEX)
PsCell_SubCellGroupSetupReq_t.actFeatureBeamTracking = ProtoField.int8('PsCell_SubCellGroupSetupReq_t.actFeatureBeamTracking', 'actFeatureBeamTracking', base.DEC)
PsCell_SubCellGroupSetupReq_t.tProhibBsiReq = ProtoField.uint16('PsCell_SubCellGroupSetupReq_t.tProhibBsiReq', 'tProhibBsiReq', base.HEX)
PsCell_SubCellGroupSetupReq_t.tCPGuard = ProtoField.uint16('PsCell_SubCellGroupSetupReq_t.tCPGuard', 'tCPGuard', base.HEX)
PsCell_SubCellGroupSetupReq_t.xpdcchFormat = ProtoField.bytes('PsCell_SubCellGroupSetupReq_t.xpdcchFormat', 'xpdcchFormat', base.HEX)
PsCell_SubCellGroupSetupReq_t.xpdcchFormat_padding = ProtoField.bytes('PsCell_SubCellGroupSetupReq_t.xpdcchFormat_padding', 'xpdcchFormat_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCELL_SUBCELLGROUPSETUPREQ_T, buffer())
  subtree:set_text('PsCell_SubCellGroupSetupReq_t')
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.subcellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.subcellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
  local PsCell_SubCellGroupSetupReq_t_subcellListTree = subtree:add (PSCELL_SUBCELLGROUPSETUPREQ_T_SUBCELLLIST, buffer(offset))
  PsCell_SubCellGroupSetupReq_t_subcellListTree:set_text('PsCell_SubCellGroupSetupReq_t_subcellList')
  PsCell_SubCellGroupSetupReq_t_subcellListTree:add_le (PsCell_SubCellGroupSetupReq_t_subcellList.subcellList_offset, buffer(offset, 4))
  offset = offset + 4
  PsCell_SubCellGroupSetupReq_t_subcellListTree:add_le (PsCell_SubCellGroupSetupReq_t_subcellList.subcellList_length, buffer(offset, 4))
  offset = offset + 4
  PsCell_SubCellGroupSetupReq_t_subcellListTree:add_le (PsCell_SubCellGroupSetupReq_t_subcellList.ngutraCellId, buffer(offset, 4))
  offset = offset + 4
  PsCell_SubCellGroupSetupReq_t_subcellListTree:add_le (PsCell_SubCellGroupSetupReq_t_subcellList.subcellId, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_subcellListTree:add_le (PsCell_SubCellGroupSetupReq_t_subcellList.subcellId_padding, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_subcellListTree:add_le (PsCell_SubCellGroupSetupReq_t_subcellList.physCellId, buffer(offset, 2))
  offset = offset + 2
  PsCell_SubCellGroupSetupReq_t_subcellListTree:add_le (PsCell_SubCellGroupSetupReq_t_subcellList.L1UlNodeId, buffer(offset, 2))
  offset = offset + 2
  PsCell_SubCellGroupSetupReq_t_subcellListTree:add_le (PsCell_SubCellGroupSetupReq_t_subcellList.L1DlNodeId, buffer(offset, 2))
  offset = offset + 2
  PsCell_SubCellGroupSetupReq_t_subcellListTree:add_le (PsCell_SubCellGroupSetupReq_t_subcellList.dlMimoMode, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_subcellListTree:add_le (PsCell_SubCellGroupSetupReq_t_subcellList.ulMimoMode, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_subcellListTree:add_le (PsCell_SubCellGroupSetupReq_t_subcellList.ulMimoMode_padding, buffer(offset, 2))
  offset = offset + 2
  PsCell_SubCellGroupSetupReq_t_subcellListTree:add_le (PsCell_SubCellGroupSetupReq_t_subcellList.brsAntennaPortList, buffer(offset, ( (msglen >= 4) and 4 or (msglen-offset) )))
  offset = offset + ( (msglen >= 4) and 4 or (msglen-offset) )
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.numOfBrsAntPorts, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.actDigitalBF, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.brsTransmissionPeriod, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.xPrachPreambleFormat, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.xPrachConfiguration, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.actProactUlScheduling, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.ulSchedTimeIntervall, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.totalPA, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.cfoFilterCoefficient, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.raResponseWindowSize, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.macContentionResTimer, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.dlPcrsAntennaPortNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.dlUlDataSubframeRatio, buffer(offset, 1))
  offset = offset + 1
  local PsCell_SubCellGroupSetupReq_t_dlTdPrioTree = subtree:add (PSCELL_SUBCELLGROUPSETUPREQ_T_DLTDPRIO, buffer(offset))
  PsCell_SubCellGroupSetupReq_t_dlTdPrioTree:set_text('PsCell_SubCellGroupSetupReq_t_dlTdPrio')
  PsCell_SubCellGroupSetupReq_t_dlTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlRachMsg2, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlHarqTransMsg4, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlHarqRetransSrb1, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlHarqRetransSrb2, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlHarqRetransDrb, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlTimAdv, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlSrb1Traffic, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlSrb2Traffic, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlDrbTraffic, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlCsi, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlBsiSr, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_dlTdPrio.prioDlBsiSr_padding, buffer(offset, 1))
  offset = offset + 1
  local PsCell_SubCellGroupSetupReq_t_ulTdPrioTree = subtree:add (PSCELL_SUBCELLGROUPSETUPREQ_T_ULTDPRIO, buffer(offset))
  PsCell_SubCellGroupSetupReq_t_ulTdPrioTree:set_text('PsCell_SubCellGroupSetupReq_t_ulTdPrio')
  PsCell_SubCellGroupSetupReq_t_ulTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlRachMsg3, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_ulTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlHarqRetransRach, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_ulTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlHarqRetransSrb, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_ulTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlHarqRetransDrb, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_ulTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlSrResp, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_ulTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlSrbTraffic, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_ulTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlDrbTraffic, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_ulTdPrioTree:add_le (PsCell_SubCellGroupSetupReq_t_ulTdPrio.prioUlProactSched, buffer(offset, 1))
  offset = offset + 1
  local PsCell_SubCellGroupSetupReq_t_ulLinkAdaptationTree = subtree:add (PSCELL_SUBCELLGROUPSETUPREQ_T_ULLINKADAPTATION, buffer(offset))
  PsCell_SubCellGroupSetupReq_t_ulLinkAdaptationTree:set_text('PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation')
  PsCell_SubCellGroupSetupReq_t_ulLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.actUlla, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_ulLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.blerTarget, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_ulLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.deltaSinrMax, buffer(offset, 2))
  offset = offset + 2
  PsCell_SubCellGroupSetupReq_t_ulLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.deltaSinrMin, buffer(offset, 2))
  offset = offset + 2
  PsCell_SubCellGroupSetupReq_t_ulLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.deltaSinrMin_padding, buffer(offset, 2))
  offset = offset + 2
  PsCell_SubCellGroupSetupReq_t_ulLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.deltaSinrStepDown, buffer(offset, 4))
  offset = offset + 4
  PsCell_SubCellGroupSetupReq_t_ulLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.iniMcs, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_ulLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.iniMcs_padding, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_ulLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_ulLinkAdaptation.maxCodeRate, buffer(offset, 2))
  offset = offset + 2
  local PsCell_SubCellGroupSetupReq_t_dlLinkAdaptationTree = subtree:add (PSCELL_SUBCELLGROUPSETUPREQ_T_DLLINKADAPTATION, buffer(offset))
  PsCell_SubCellGroupSetupReq_t_dlLinkAdaptationTree:set_text('PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation')
  PsCell_SubCellGroupSetupReq_t_dlLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.actDlla, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.blerTarget, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.deltaCqiMax, buffer(offset, 2))
  offset = offset + 2
  PsCell_SubCellGroupSetupReq_t_dlLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.deltaCqiMin, buffer(offset, 2))
  offset = offset + 2
  PsCell_SubCellGroupSetupReq_t_dlLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.deltaCqiMin_padding, buffer(offset, 2))
  offset = offset + 2
  PsCell_SubCellGroupSetupReq_t_dlLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.deltaCqiStepDown, buffer(offset, 4))
  offset = offset + 4
  PsCell_SubCellGroupSetupReq_t_dlLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.iniMcs, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.iniMcs_padding, buffer(offset, 1))
  offset = offset + 1
  PsCell_SubCellGroupSetupReq_t_dlLinkAdaptationTree:add_le (PsCell_SubCellGroupSetupReq_t_dlLinkAdaptation.maxCodeRate, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.maxUlHarqTx, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.maxHarqMsg3Tx, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.maxDlHarqTx, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.actFeatureBeamTracking, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.tProhibBsiReq, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.tCPGuard, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.xpdcchFormat, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_SubCellGroupSetupReq_t.xpdcchFormat_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
