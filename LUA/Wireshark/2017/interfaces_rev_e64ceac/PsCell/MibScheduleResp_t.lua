local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCell_MibScheduleResp'
end
function module:messageId()
  return 0x0927
end
----------------------------------------------------------------
local PSCELL_MIBSCHEDULERESP_T = Proto('PsCell_MibScheduleResp_t', 'PSCELL_MIBSCHEDULERESP_T')
local PsCell_MibScheduleResp_t = PSCELL_MIBSCHEDULERESP_T.fields
PsCell_MibScheduleResp_t.dummy = ProtoField.uint8('PsCell_MibScheduleResp_t.dummy', 'dummy', base.HEX)
PsCell_MibScheduleResp_t.dummy_padding = ProtoField.bytes('PsCell_MibScheduleResp_t.dummy_padding', 'dummy_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCELL_MIBSCHEDULERESP_T, buffer())
  subtree:set_text('PsCell_MibScheduleResp_t')
  subtree:add_le (PsCell_MibScheduleResp_t.dummy, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsCell_MibScheduleResp_t.dummy_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
