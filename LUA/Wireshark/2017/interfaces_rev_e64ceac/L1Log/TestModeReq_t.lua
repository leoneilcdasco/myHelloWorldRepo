local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1Log_TestModeReq'
end
function module:messageId()
  return 0x0a5b
end
----------------------------------------------------------------
local L1LOG_TESTMODEREQ_T = Proto('L1Log_TestModeReq_t', 'L1LOG_TESTMODEREQ_T')
local L1Log_TestModeReq_t = L1LOG_TESTMODEREQ_T.fields
local L1LOG_TESTMODEREQ_T_HEADER = Proto('L1Log_TestModeReq_t_header', 'L1LOG_TESTMODEREQ_T_HEADER')
local L1Log_TestModeReq_t_header = L1LOG_TESTMODEREQ_T_HEADER.fields
L1Log_TestModeReq_t_header.subcellId = ProtoField.uint8('L1Log_TestModeReq_t_header.subcellId', 'subcellId', base.DEC)
L1Log_TestModeReq_t_header.test_mode_id = ProtoField.bytes('L1Log_TestModeReq_t_header.test_mode_id', 'test_mode_id', base.HEX)
L1Log_TestModeReq_t_header.test_mode_id_padding = ProtoField.bytes('L1Log_TestModeReq_t_header.test_mode_id_padding', 'test_mode_id_padding', base.HEX)
L1Log_TestModeReq_t.body = ProtoField.bytes('L1Log_TestModeReq_t.body', 'body', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1LOG_TESTMODEREQ_T, buffer())
  subtree:set_text('L1Log_TestModeReq_t')
  local L1Log_TestModeReq_t_headerTree = subtree:add (L1LOG_TESTMODEREQ_T_HEADER, buffer(offset))
  L1Log_TestModeReq_t_headerTree:set_text('L1Log_TestModeReq_t_header')
  L1Log_TestModeReq_t_headerTree:add_le (L1Log_TestModeReq_t_header.subcellId, buffer(offset, 1))
  offset = offset + 1
  L1Log_TestModeReq_t_headerTree:add_le (L1Log_TestModeReq_t_header.test_mode_id, buffer(offset, 1))
  offset = offset + 1
  L1Log_TestModeReq_t_headerTree:add_le (L1Log_TestModeReq_t_header.test_mode_id_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (L1Log_TestModeReq_t.body, buffer(offset, ( (msglen >= 256) and 256 or (msglen-offset) )))
  offset = offset + ( (msglen >= 256) and 256 or (msglen-offset) )
end
----------------------------------------------------------------
return module
