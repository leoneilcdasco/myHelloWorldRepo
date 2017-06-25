local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1Log_TestModeResp'
end
function module:messageId()
  return 0x0a5c
end
----------------------------------------------------------------
local L1LOG_TESTMODERESP_T = Proto('L1Log_TestModeResp_t', 'L1LOG_TESTMODERESP_T')
local L1Log_TestModeResp_t = L1LOG_TESTMODERESP_T.fields
L1Log_TestModeResp_t.subcellId = ProtoField.uint8('L1Log_TestModeResp_t.subcellId', 'subcellId', base.DEC)
L1Log_TestModeResp_t.test_mode_id = ProtoField.bytes('L1Log_TestModeResp_t.test_mode_id', 'test_mode_id', base.HEX)
L1Log_TestModeResp_t.status = ProtoField.bytes('L1Log_TestModeResp_t.status', 'status', base.HEX)
L1Log_TestModeResp_t.status_padding = ProtoField.int8('L1Log_TestModeResp_t.status_padding', 'status_padding', base.DEC)
L1Log_TestModeResp_t.data = ProtoField.uint32('L1Log_TestModeResp_t.data', 'data', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1LOG_TESTMODERESP_T, buffer())
  subtree:set_text('L1Log_TestModeResp_t')
  subtree:add_le (L1Log_TestModeResp_t.subcellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_TestModeResp_t.test_mode_id, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_TestModeResp_t.status, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_TestModeResp_t.status_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1Log_TestModeResp_t.data, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
