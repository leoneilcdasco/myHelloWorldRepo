local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCell_MibScheduleReq'
end
function module:messageId()
  return 0x0926
end
----------------------------------------------------------------
local PSCELL_MIBSCHEDULEREQ_T = Proto('PsCell_MibScheduleReq_t', 'PSCELL_MIBSCHEDULEREQ_T')
local PsCell_MibScheduleReq_t = PSCELL_MIBSCHEDULEREQ_T.fields
PsCell_MibScheduleReq_t.dummy = ProtoField.uint8('PsCell_MibScheduleReq_t.dummy', 'dummy', base.HEX)
PsCell_MibScheduleReq_t.dummy_padding = ProtoField.bytes('PsCell_MibScheduleReq_t.dummy_padding', 'dummy_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCELL_MIBSCHEDULEREQ_T, buffer())
  subtree:set_text('PsCell_MibScheduleReq_t')
  subtree:add_le (PsCell_MibScheduleReq_t.dummy, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_MibScheduleReq_t.dummy_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
