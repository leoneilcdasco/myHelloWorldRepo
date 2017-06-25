local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1Log_AntennaSnapshotResp'
end
function module:messageId()
  return 0x0a5a
end
----------------------------------------------------------------
local L1LOG_ANTENNASNAPSHOTRESP_T = Proto('L1Log_AntennaSnapshotResp_t', 'L1LOG_ANTENNASNAPSHOTRESP_T')
local L1Log_AntennaSnapshotResp_t = L1LOG_ANTENNASNAPSHOTRESP_T.fields
L1Log_AntennaSnapshotResp_t.status = ProtoField.bytes('L1Log_AntennaSnapshotResp_t.status', 'status', base.HEX)
L1Log_AntennaSnapshotResp_t.status_padding = ProtoField.bytes('L1Log_AntennaSnapshotResp_t.status_padding', 'status_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1LOG_ANTENNASNAPSHOTRESP_T, buffer())
  subtree:set_text('L1Log_AntennaSnapshotResp_t')
  subtree:add_le (L1Log_AntennaSnapshotResp_t.status, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_AntennaSnapshotResp_t.status_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
