local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_SubCellGroupSetupInd'
end
function module:messageId()
  return 0x030a
end
----------------------------------------------------------------
local PSINTERNAL_SUBCELLGROUPSETUPIND_T = Proto('PsInternal_SubCellGroupSetupInd_t', 'PSINTERNAL_SUBCELLGROUPSETUPIND_T')
local PsInternal_SubCellGroupSetupInd_t = PSINTERNAL_SUBCELLGROUPSETUPIND_T.fields
local PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA = Proto('PsInternal_SubCellGroupSetupInd_t_data', 'PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA')
local PsInternal_SubCellGroupSetupInd_t_data = PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA.fields
PsInternal_SubCellGroupSetupInd_t_data.subcellGroupId = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data.subcellGroupId', 'subcellGroupId', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.subcellGroupId_padding = ProtoField.bytes('PsInternal_SubCellGroupSetupInd_t_data.subcellGroupId_padding', 'subcellGroupId_padding', base.HEX)
local PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_SUBCELLLIST = Proto('PsInternal_SubCellGroupSetupInd_t_data_subcellList', 'PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_SUBCELLLIST')
local PsInternal_SubCellGroupSetupInd_t_data_subcellList = PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_SUBCELLLIST.fields
PsInternal_SubCellGroupSetupInd_t_data_subcellList.subcellList_offset = ProtoField.uint32('PsInternal_SubCellGroupSetupInd_t_data_subcellList.subcellList_offset', 'subcellList_offset', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_subcellList.subcellList_length = ProtoField.uint32('PsInternal_SubCellGroupSetupInd_t_data_subcellList.subcellList_length', 'subcellList_length', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_subcellList.ngutraCellId = ProtoField.uint32('PsInternal_SubCellGroupSetupInd_t_data_subcellList.ngutraCellId', 'ngutraCellId', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_subcellList.subcellId = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_subcellList.subcellId', 'subcellId', base.DEC)
PsInternal_SubCellGroupSetupInd_t_data_subcellList.subcellId_padding = ProtoField.int8('PsInternal_SubCellGroupSetupInd_t_data_subcellList.subcellId_padding', 'subcellId_padding', base.DEC)
PsInternal_SubCellGroupSetupInd_t_data_subcellList.physCellId = ProtoField.uint16('PsInternal_SubCellGroupSetupInd_t_data_subcellList.physCellId', 'physCellId', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_subcellList.L1UlNodeId = ProtoField.uint16('PsInternal_SubCellGroupSetupInd_t_data_subcellList.L1UlNodeId', 'L1UlNodeId', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_subcellList.L1DlNodeId = ProtoField.uint16('PsInternal_SubCellGroupSetupInd_t_data_subcellList.L1DlNodeId', 'L1DlNodeId', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_subcellList.dlMimoMode = ProtoField.bytes('PsInternal_SubCellGroupSetupInd_t_data_subcellList.dlMimoMode', 'dlMimoMode', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_subcellList.ulMimoMode = ProtoField.bytes('PsInternal_SubCellGroupSetupInd_t_data_subcellList.ulMimoMode', 'ulMimoMode', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_subcellList.ulMimoMode_padding = ProtoField.bytes('PsInternal_SubCellGroupSetupInd_t_data_subcellList.ulMimoMode_padding', 'ulMimoMode_padding', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_subcellList.brsAntennaPortList = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_subcellList.brsAntennaPortList', 'brsAntennaPortList', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.numOfBrsAntPorts = ProtoField.bytes('PsInternal_SubCellGroupSetupInd_t_data.numOfBrsAntPorts', 'numOfBrsAntPorts', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.actDigitalBF = ProtoField.int8('PsInternal_SubCellGroupSetupInd_t_data.actDigitalBF', 'actDigitalBF', base.DEC)
PsInternal_SubCellGroupSetupInd_t_data.brsTransmissionPeriod = ProtoField.bytes('PsInternal_SubCellGroupSetupInd_t_data.brsTransmissionPeriod', 'brsTransmissionPeriod', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.xPrachPreambleFormat = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data.xPrachPreambleFormat', 'xPrachPreambleFormat', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.xPrachConfiguration = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data.xPrachConfiguration', 'xPrachConfiguration', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.actProactUlScheduling = ProtoField.int8('PsInternal_SubCellGroupSetupInd_t_data.actProactUlScheduling', 'actProactUlScheduling', base.DEC)
PsInternal_SubCellGroupSetupInd_t_data.ulSchedTimeIntervall = ProtoField.int16('PsInternal_SubCellGroupSetupInd_t_data.ulSchedTimeIntervall', 'ulSchedTimeIntervall', base.DEC)
PsInternal_SubCellGroupSetupInd_t_data.totalPA = ProtoField.uint32('PsInternal_SubCellGroupSetupInd_t_data.totalPA', 'totalPA', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.cfoFilterCoefficient = ProtoField.uint32('PsInternal_SubCellGroupSetupInd_t_data.cfoFilterCoefficient', 'cfoFilterCoefficient', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.raResponseWindowSize = ProtoField.bytes('PsInternal_SubCellGroupSetupInd_t_data.raResponseWindowSize', 'raResponseWindowSize', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.macContentionResTimer = ProtoField.bytes('PsInternal_SubCellGroupSetupInd_t_data.macContentionResTimer', 'macContentionResTimer', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.dlPcrsAntennaPortNumber = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data.dlPcrsAntennaPortNumber', 'dlPcrsAntennaPortNumber', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.dlUlDataSubframeRatio = ProtoField.bytes('PsInternal_SubCellGroupSetupInd_t_data.dlUlDataSubframeRatio', 'dlUlDataSubframeRatio', base.HEX)
local PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_DLTDPRIO = Proto('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio', 'PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_DLTDPRIO')
local PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio = PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_DLTDPRIO.fields
PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlRachMsg2 = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlRachMsg2', 'prioDlRachMsg2', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlHarqTransMsg4 = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlHarqTransMsg4', 'prioDlHarqTransMsg4', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlHarqRetransSrb1 = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlHarqRetransSrb1', 'prioDlHarqRetransSrb1', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlHarqRetransSrb2 = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlHarqRetransSrb2', 'prioDlHarqRetransSrb2', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlHarqRetransDrb = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlHarqRetransDrb', 'prioDlHarqRetransDrb', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlTimAdv = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlTimAdv', 'prioDlTimAdv', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlSrb1Traffic = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlSrb1Traffic', 'prioDlSrb1Traffic', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlSrb2Traffic = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlSrb2Traffic', 'prioDlSrb2Traffic', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlDrbTraffic = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlDrbTraffic', 'prioDlDrbTraffic', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlCsi = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlCsi', 'prioDlCsi', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlBsiSr = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlBsiSr', 'prioDlBsiSr', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlBsiSr_padding = ProtoField.int8('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlBsiSr_padding', 'prioDlBsiSr_padding', base.DEC)
local PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_ULTDPRIO = Proto('PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio', 'PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_ULTDPRIO')
local PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio = PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_ULTDPRIO.fields
PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlRachMsg3 = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlRachMsg3', 'prioUlRachMsg3', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlHarqRetransRach = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlHarqRetransRach', 'prioUlHarqRetransRach', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlHarqRetransSrb = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlHarqRetransSrb', 'prioUlHarqRetransSrb', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlHarqRetransDrb = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlHarqRetransDrb', 'prioUlHarqRetransDrb', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlSrResp = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlSrResp', 'prioUlSrResp', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlSrbTraffic = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlSrbTraffic', 'prioUlSrbTraffic', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlDrbTraffic = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlDrbTraffic', 'prioUlDrbTraffic', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlProactSched = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlProactSched', 'prioUlProactSched', base.HEX)
local PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_ULLINKADAPTATION = Proto('PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation', 'PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_ULLINKADAPTATION')
local PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation = PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_ULLINKADAPTATION.fields
PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.actUlla = ProtoField.int8('PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.actUlla', 'actUlla', base.DEC)
PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.blerTarget = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.blerTarget', 'blerTarget', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.deltaSinrMax = ProtoField.uint16('PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.deltaSinrMax', 'deltaSinrMax', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.deltaSinrMin = ProtoField.int16('PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.deltaSinrMin', 'deltaSinrMin', base.DEC)
PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.deltaSinrMin_padding = ProtoField.bytes('PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.deltaSinrMin_padding', 'deltaSinrMin_padding', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.deltaSinrStepDown = ProtoField.uint32('PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.deltaSinrStepDown', 'deltaSinrStepDown', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.iniMcs = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.iniMcs', 'iniMcs', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.iniMcs_padding = ProtoField.int8('PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.iniMcs_padding', 'iniMcs_padding', base.DEC)
PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.maxCodeRate = ProtoField.uint16('PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.maxCodeRate', 'maxCodeRate', base.HEX)
local PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_DLLINKADAPTATION = Proto('PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation', 'PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_DLLINKADAPTATION')
local PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation = PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_DLLINKADAPTATION.fields
PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.actDlla = ProtoField.int8('PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.actDlla', 'actDlla', base.DEC)
PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.blerTarget = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.blerTarget', 'blerTarget', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.deltaCqiMax = ProtoField.uint16('PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.deltaCqiMax', 'deltaCqiMax', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.deltaCqiMin = ProtoField.int16('PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.deltaCqiMin', 'deltaCqiMin', base.DEC)
PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.deltaCqiMin_padding = ProtoField.bytes('PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.deltaCqiMin_padding', 'deltaCqiMin_padding', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.deltaCqiStepDown = ProtoField.uint32('PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.deltaCqiStepDown', 'deltaCqiStepDown', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.iniMcs = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.iniMcs', 'iniMcs', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.iniMcs_padding = ProtoField.int8('PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.iniMcs_padding', 'iniMcs_padding', base.DEC)
PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.maxCodeRate = ProtoField.uint16('PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.maxCodeRate', 'maxCodeRate', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.maxUlHarqTx = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data.maxUlHarqTx', 'maxUlHarqTx', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.maxHarqMsg3Tx = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data.maxHarqMsg3Tx', 'maxHarqMsg3Tx', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.maxDlHarqTx = ProtoField.uint8('PsInternal_SubCellGroupSetupInd_t_data.maxDlHarqTx', 'maxDlHarqTx', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.actFeatureBeamTracking = ProtoField.int8('PsInternal_SubCellGroupSetupInd_t_data.actFeatureBeamTracking', 'actFeatureBeamTracking', base.DEC)
PsInternal_SubCellGroupSetupInd_t_data.tProhibBsiReq = ProtoField.uint16('PsInternal_SubCellGroupSetupInd_t_data.tProhibBsiReq', 'tProhibBsiReq', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.tCPGuard = ProtoField.uint16('PsInternal_SubCellGroupSetupInd_t_data.tCPGuard', 'tCPGuard', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.xpdcchFormat = ProtoField.bytes('PsInternal_SubCellGroupSetupInd_t_data.xpdcchFormat', 'xpdcchFormat', base.HEX)
PsInternal_SubCellGroupSetupInd_t_data.xpdcchFormat_padding = ProtoField.bytes('PsInternal_SubCellGroupSetupInd_t_data.xpdcchFormat_padding', 'xpdcchFormat_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_SUBCELLGROUPSETUPIND_T, buffer())
  subtree:set_text('PsInternal_SubCellGroupSetupInd_t')
  local PsInternal_SubCellGroupSetupInd_t_dataTree = subtree:add (PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA, buffer(offset))
  PsInternal_SubCellGroupSetupInd_t_dataTree:set_text('PsInternal_SubCellGroupSetupInd_t_data')
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.subcellGroupId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.subcellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
  local PsInternal_SubCellGroupSetupInd_t_data_subcellListTree = PsInternal_SubCellGroupSetupInd_t_dataTree:add (PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_SUBCELLLIST, buffer(offset))
  PsInternal_SubCellGroupSetupInd_t_data_subcellListTree:set_text('PsInternal_SubCellGroupSetupInd_t_data_subcellList')
  PsInternal_SubCellGroupSetupInd_t_data_subcellListTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_subcellList.subcellList_offset, buffer(offset, 4))
  offset = offset + 4
  PsInternal_SubCellGroupSetupInd_t_data_subcellListTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_subcellList.subcellList_length, buffer(offset, 4))
  offset = offset + 4
  PsInternal_SubCellGroupSetupInd_t_data_subcellListTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_subcellList.ngutraCellId, buffer(offset, 4))
  offset = offset + 4
  PsInternal_SubCellGroupSetupInd_t_data_subcellListTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_subcellList.subcellId, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_subcellListTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_subcellList.subcellId_padding, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_subcellListTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_subcellList.physCellId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_data_subcellListTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_subcellList.L1UlNodeId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_data_subcellListTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_subcellList.L1DlNodeId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_data_subcellListTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_subcellList.dlMimoMode, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_subcellListTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_subcellList.ulMimoMode, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_subcellListTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_subcellList.ulMimoMode_padding, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_data_subcellListTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_subcellList.brsAntennaPortList, buffer(offset, ( (msglen >= 4) and 4 or (msglen-offset) )))
  offset = offset + ( (msglen >= 4) and 4 or (msglen-offset) )
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.numOfBrsAntPorts, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.actDigitalBF, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.brsTransmissionPeriod, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.xPrachPreambleFormat, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.xPrachConfiguration, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.actProactUlScheduling, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.ulSchedTimeIntervall, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.totalPA, buffer(offset, 4))
  offset = offset + 4
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.cfoFilterCoefficient, buffer(offset, 4))
  offset = offset + 4
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.raResponseWindowSize, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.macContentionResTimer, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.dlPcrsAntennaPortNumber, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.dlUlDataSubframeRatio, buffer(offset, 1))
  offset = offset + 1
  local PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree = PsInternal_SubCellGroupSetupInd_t_dataTree:add (PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_DLTDPRIO, buffer(offset))
  PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree:set_text('PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio')
  PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlRachMsg2, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlHarqTransMsg4, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlHarqRetransSrb1, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlHarqRetransSrb2, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlHarqRetransDrb, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlTimAdv, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlSrb1Traffic, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlSrb2Traffic, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlDrbTraffic, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlCsi, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlBsiSr, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlTdPrio.prioDlBsiSr_padding, buffer(offset, 1))
  offset = offset + 1
  local PsInternal_SubCellGroupSetupInd_t_data_ulTdPrioTree = PsInternal_SubCellGroupSetupInd_t_dataTree:add (PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_ULTDPRIO, buffer(offset))
  PsInternal_SubCellGroupSetupInd_t_data_ulTdPrioTree:set_text('PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio')
  PsInternal_SubCellGroupSetupInd_t_data_ulTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlRachMsg3, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_ulTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlHarqRetransRach, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_ulTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlHarqRetransSrb, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_ulTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlHarqRetransDrb, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_ulTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlSrResp, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_ulTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlSrbTraffic, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_ulTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlDrbTraffic, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_ulTdPrioTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulTdPrio.prioUlProactSched, buffer(offset, 1))
  offset = offset + 1
  local PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptationTree = PsInternal_SubCellGroupSetupInd_t_dataTree:add (PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_ULLINKADAPTATION, buffer(offset))
  PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptationTree:set_text('PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation')
  PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.actUlla, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.blerTarget, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.deltaSinrMax, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.deltaSinrMin, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.deltaSinrMin_padding, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.deltaSinrStepDown, buffer(offset, 4))
  offset = offset + 4
  PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.iniMcs, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.iniMcs_padding, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_ulLinkAdaptation.maxCodeRate, buffer(offset, 2))
  offset = offset + 2
  local PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptationTree = PsInternal_SubCellGroupSetupInd_t_dataTree:add (PSINTERNAL_SUBCELLGROUPSETUPIND_T_DATA_DLLINKADAPTATION, buffer(offset))
  PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptationTree:set_text('PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation')
  PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.actDlla, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.blerTarget, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.deltaCqiMax, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.deltaCqiMin, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.deltaCqiMin_padding, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.deltaCqiStepDown, buffer(offset, 4))
  offset = offset + 4
  PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.iniMcs, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.iniMcs_padding, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptationTree:add_le (PsInternal_SubCellGroupSetupInd_t_data_dlLinkAdaptation.maxCodeRate, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.maxUlHarqTx, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.maxHarqMsg3Tx, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.maxDlHarqTx, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.actFeatureBeamTracking, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.tProhibBsiReq, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.tCPGuard, buffer(offset, 2))
  offset = offset + 2
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.xpdcchFormat, buffer(offset, 1))
  offset = offset + 1
  PsInternal_SubCellGroupSetupInd_t_dataTree:add_le (PsInternal_SubCellGroupSetupInd_t_data.xpdcchFormat_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
