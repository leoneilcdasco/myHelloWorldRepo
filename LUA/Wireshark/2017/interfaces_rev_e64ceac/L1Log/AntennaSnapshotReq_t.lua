local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1Log_AntennaSnapshotReq'
end
function module:messageId()
  return 0x0a59
end
----------------------------------------------------------------
local L1LOG_ANTENNASNAPSHOTREQ_T = Proto('L1Log_AntennaSnapshotReq_t', 'L1LOG_ANTENNASNAPSHOTREQ_T')
local L1Log_AntennaSnapshotReq_t = L1LOG_ANTENNASNAPSHOTREQ_T.fields
L1Log_AntennaSnapshotReq_t.sfn = ProtoField.uint16('L1Log_AntennaSnapshotReq_t.sfn', 'sfn', base.DEC)
L1Log_AntennaSnapshotReq_t.subframeNumber = ProtoField.uint8('L1Log_AntennaSnapshotReq_t.subframeNumber', 'subframeNumber', base.DEC)
L1Log_AntennaSnapshotReq_t.fileSize64MB = ProtoField.uint8('L1Log_AntennaSnapshotReq_t.fileSize64MB', 'fileSize64MB', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1LOG_ANTENNASNAPSHOTREQ_T, buffer())
  subtree:set_text('L1Log_AntennaSnapshotReq_t')
  subtree:add_le (L1Log_AntennaSnapshotReq_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (L1Log_AntennaSnapshotReq_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_AntennaSnapshotReq_t.fileSize64MB, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
