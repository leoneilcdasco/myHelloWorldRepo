local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_PuschReceiveRespHarqU'
end
function module:messageId()
  return 0x020b
end
----------------------------------------------------------------
local ULDATA_PUSCHRECEIVERESPHARQU_T = Proto('UlData_PuschReceiveRespHarqU_t', 'ULDATA_PUSCHRECEIVERESPHARQU_T')
local UlData_PuschReceiveRespHarqU_t = ULDATA_PUSCHRECEIVERESPHARQU_T.fields
UlData_PuschReceiveRespHarqU_t.sfn = ProtoField.uint16('UlData_PuschReceiveRespHarqU_t.sfn', 'sfn', base.DEC)
UlData_PuschReceiveRespHarqU_t.subframeNumber = ProtoField.uint8('UlData_PuschReceiveRespHarqU_t.subframeNumber', 'subframeNumber', base.DEC)
UlData_PuschReceiveRespHarqU_t.subcellId = ProtoField.uint8('UlData_PuschReceiveRespHarqU_t.subcellId', 'subcellId', base.DEC)
UlData_PuschReceiveRespHarqU_t.numOfGrants = ProtoField.uint8('UlData_PuschReceiveRespHarqU_t.numOfGrants', 'numOfGrants', base.HEX)
UlData_PuschReceiveRespHarqU_t.numOfGrants_padding = ProtoField.bytes('UlData_PuschReceiveRespHarqU_t.numOfGrants_padding', 'numOfGrants_padding', base.HEX)
local ULDATA_PUSCHRECEIVERESPHARQU_T_GRANTS = Proto('UlData_PuschReceiveRespHarqU_t_grants', 'ULDATA_PUSCHRECEIVERESPHARQU_T_GRANTS')
local UlData_PuschReceiveRespHarqU_t_grants = ULDATA_PUSCHRECEIVERESPHARQU_T_GRANTS.fields
UlData_PuschReceiveRespHarqU_t_grants.grants_length = ProtoField.uint32('UlData_PuschReceiveRespHarqU_t_grants.grants_length', 'grants_length', base.HEX)
UlData_PuschReceiveRespHarqU_t_grants.rnti = ProtoField.uint16('UlData_PuschReceiveRespHarqU_t_grants.rnti', 'rnti', base.HEX)
UlData_PuschReceiveRespHarqU_t_grants.crc = ProtoField.bytes('UlData_PuschReceiveRespHarqU_t_grants.crc', 'crc', base.HEX)
UlData_PuschReceiveRespHarqU_t_grants.dtx = ProtoField.bytes('UlData_PuschReceiveRespHarqU_t_grants.dtx', 'dtx', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_PUSCHRECEIVERESPHARQU_T, buffer())
  subtree:set_text('UlData_PuschReceiveRespHarqU_t')
  subtree:add_le (UlData_PuschReceiveRespHarqU_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_PuschReceiveRespHarqU_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveRespHarqU_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveRespHarqU_t.numOfGrants, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_PuschReceiveRespHarqU_t.numOfGrants_padding, buffer(offset, 3))
  offset = offset + 3
  local UlData_PuschReceiveRespHarqU_t_grantsTree = subtree:add (ULDATA_PUSCHRECEIVERESPHARQU_T_GRANTS, buffer(offset))
  UlData_PuschReceiveRespHarqU_t_grantsTree:set_text('UlData_PuschReceiveRespHarqU_t_grants')
  UlData_PuschReceiveRespHarqU_t_grantsTree:add_le (UlData_PuschReceiveRespHarqU_t_grants.grants_length, buffer(offset, 4))
  offset = offset + 4
  UlData_PuschReceiveRespHarqU_t_grantsTree:add_le (UlData_PuschReceiveRespHarqU_t_grants.rnti, buffer(offset, 2))
  offset = offset + 2
  UlData_PuschReceiveRespHarqU_t_grantsTree:add_le (UlData_PuschReceiveRespHarqU_t_grants.crc, buffer(offset, 1))
  offset = offset + 1
  UlData_PuschReceiveRespHarqU_t_grantsTree:add_le (UlData_PuschReceiveRespHarqU_t_grants.dtx, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
