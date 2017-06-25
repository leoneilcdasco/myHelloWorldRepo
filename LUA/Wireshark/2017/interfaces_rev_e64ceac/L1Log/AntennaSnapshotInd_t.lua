local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1Log_AntennaSnapshotInd'
end
function module:messageId()
  return 0x0a58
end
----------------------------------------------------------------
local L1LOG_ANTENNASNAPSHOTIND_T = Proto('L1Log_AntennaSnapshotInd_t', 'L1LOG_ANTENNASNAPSHOTIND_T')
local L1Log_AntennaSnapshotInd_t = L1LOG_ANTENNASNAPSHOTIND_T.fields
L1Log_AntennaSnapshotInd_t.sfn = ProtoField.uint16('L1Log_AntennaSnapshotInd_t.sfn', 'sfn', base.DEC)
L1Log_AntennaSnapshotInd_t.subframeNumber = ProtoField.uint8('L1Log_AntennaSnapshotInd_t.subframeNumber', 'subframeNumber', base.DEC)
L1Log_AntennaSnapshotInd_t.fileSize64MB = ProtoField.uint8('L1Log_AntennaSnapshotInd_t.fileSize64MB', 'fileSize64MB', base.HEX)
L1Log_AntennaSnapshotInd_t.fileNameLength = ProtoField.uint8('L1Log_AntennaSnapshotInd_t.fileNameLength', 'fileNameLength', base.HEX)
L1Log_AntennaSnapshotInd_t.fileNameLength_padding = ProtoField.bytes('L1Log_AntennaSnapshotInd_t.fileNameLength_padding', 'fileNameLength_padding', base.HEX)
local L1LOG_ANTENNASNAPSHOTIND_T_FILENAME = Proto('L1Log_AntennaSnapshotInd_t_fileName', 'L1LOG_ANTENNASNAPSHOTIND_T_FILENAME')
local L1Log_AntennaSnapshotInd_t_fileName = L1LOG_ANTENNASNAPSHOTIND_T_FILENAME.fields
L1Log_AntennaSnapshotInd_t_fileName.fileName_length = ProtoField.uint32('L1Log_AntennaSnapshotInd_t_fileName.fileName_length', 'fileName_length', base.HEX)
L1Log_AntennaSnapshotInd_t_fileName.fileName_values = ProtoField.bytes('L1Log_AntennaSnapshotInd_t_fileName.fileName_values', 'fileName_values', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1LOG_ANTENNASNAPSHOTIND_T, buffer())
  subtree:set_text('L1Log_AntennaSnapshotInd_t')
  subtree:add_le (L1Log_AntennaSnapshotInd_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (L1Log_AntennaSnapshotInd_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_AntennaSnapshotInd_t.fileSize64MB, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_AntennaSnapshotInd_t.fileNameLength, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_AntennaSnapshotInd_t.fileNameLength_padding, buffer(offset, 3))
  offset = offset + 3
  local L1Log_AntennaSnapshotInd_t_fileNameTree = subtree:add (L1LOG_ANTENNASNAPSHOTIND_T_FILENAME, buffer(offset))
  L1Log_AntennaSnapshotInd_t_fileNameTree:set_text('L1Log_AntennaSnapshotInd_t_fileName')
  L1Log_AntennaSnapshotInd_t_fileNameTree:add_le (L1Log_AntennaSnapshotInd_t_fileName.fileName_length, buffer(offset, 4))
  offset = offset + 4
  L1Log_AntennaSnapshotInd_t_fileNameTree:add_le (L1Log_AntennaSnapshotInd_t_fileName.fileName_values, buffer(offset, ( (msglen >= 80) and 80 or (msglen-offset) )))
  offset = offset + ( (msglen >= 80) and 80 or (msglen-offset) )
end
----------------------------------------------------------------
return module
