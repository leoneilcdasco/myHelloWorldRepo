local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_PucchReceiveRespHarqD'
end
function module:messageId()
  return 0x020f
end
----------------------------------------------------------------
local ULDATA_PUCCHRECEIVERESPHARQD_T = Proto('UlData_PucchReceiveRespHarqD_t', 'ULDATA_PUCCHRECEIVERESPHARQD_T')
local UlData_PucchReceiveRespHarqD_t = ULDATA_PUCCHRECEIVERESPHARQD_T.fields
UlData_PucchReceiveRespHarqD_t.sfn = ProtoField.uint16('UlData_PucchReceiveRespHarqD_t.sfn', 'sfn', base.DEC)
UlData_PucchReceiveRespHarqD_t.subframeNumber = ProtoField.uint8('UlData_PucchReceiveRespHarqD_t.subframeNumber', 'subframeNumber', base.DEC)
UlData_PucchReceiveRespHarqD_t.subcellId = ProtoField.uint8('UlData_PucchReceiveRespHarqD_t.subcellId', 'subcellId', base.DEC)
UlData_PucchReceiveRespHarqD_t.numOfPucchResources = ProtoField.bytes('UlData_PucchReceiveRespHarqD_t.numOfPucchResources', 'numOfPucchResources', base.HEX)
UlData_PucchReceiveRespHarqD_t.numOfPucchResources_padding = ProtoField.bytes('UlData_PucchReceiveRespHarqD_t.numOfPucchResources_padding', 'numOfPucchResources_padding', base.HEX)
local ULDATA_PUCCHRECEIVERESPHARQD_T_PUCCHRESOURCES = Proto('UlData_PucchReceiveRespHarqD_t_pucchResources', 'ULDATA_PUCCHRECEIVERESPHARQD_T_PUCCHRESOURCES')
local UlData_PucchReceiveRespHarqD_t_pucchResources = ULDATA_PUCCHRECEIVERESPHARQD_T_PUCCHRESOURCES.fields
UlData_PucchReceiveRespHarqD_t_pucchResources.n2Pucch = ProtoField.bytes('UlData_PucchReceiveRespHarqD_t_pucchResources.n2Pucch', 'n2Pucch', base.HEX)
UlData_PucchReceiveRespHarqD_t_pucchResources.dtx = ProtoField.bytes('UlData_PucchReceiveRespHarqD_t_pucchResources.dtx', 'dtx', base.HEX)
UlData_PucchReceiveRespHarqD_t_pucchResources.ackNack = ProtoField.uint8('UlData_PucchReceiveRespHarqD_t_pucchResources.ackNack', 'ackNack', base.HEX)
UlData_PucchReceiveRespHarqD_t_pucchResources.ackNack_padding = ProtoField.int8('UlData_PucchReceiveRespHarqD_t_pucchResources.ackNack_padding', 'ackNack_padding', base.DEC)
UlData_PucchReceiveRespHarqD_t_pucchResources.dtxMetric = ProtoField.uint16('UlData_PucchReceiveRespHarqD_t_pucchResources.dtxMetric', 'dtxMetric', base.HEX)
UlData_PucchReceiveRespHarqD_t_pucchResources.dtxThreshold = ProtoField.uint16('UlData_PucchReceiveRespHarqD_t_pucchResources.dtxThreshold', 'dtxThreshold', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_PUCCHRECEIVERESPHARQD_T, buffer())
  subtree:set_text('UlData_PucchReceiveRespHarqD_t')
  subtree:add_le (UlData_PucchReceiveRespHarqD_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_PucchReceiveRespHarqD_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PucchReceiveRespHarqD_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PucchReceiveRespHarqD_t.numOfPucchResources, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PucchReceiveRespHarqD_t.numOfPucchResources_padding, buffer(offset, 3))
  offset = offset + 3
  local UlData_PucchReceiveRespHarqD_t_pucchResourcesTree = subtree:add (ULDATA_PUCCHRECEIVERESPHARQD_T_PUCCHRESOURCES, buffer(offset))
  UlData_PucchReceiveRespHarqD_t_pucchResourcesTree:set_text('UlData_PucchReceiveRespHarqD_t_pucchResources')
  UlData_PucchReceiveRespHarqD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespHarqD_t_pucchResources.n2Pucch, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveRespHarqD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespHarqD_t_pucchResources.dtx, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveRespHarqD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespHarqD_t_pucchResources.ackNack, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveRespHarqD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespHarqD_t_pucchResources.ackNack_padding, buffer(offset, 1))
  offset = offset + 1
  UlData_PucchReceiveRespHarqD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespHarqD_t_pucchResources.dtxMetric, buffer(offset, 2))
  offset = offset + 2
  UlData_PucchReceiveRespHarqD_t_pucchResourcesTree:add_le (UlData_PucchReceiveRespHarqD_t_pucchResources.dtxThreshold, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
