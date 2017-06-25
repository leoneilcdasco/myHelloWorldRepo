local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_RRCConnectionReconfCompletedReq'
end
function module:messageId()
  return 0x0974
end
----------------------------------------------------------------
local PSUSER_RRCCONNECTIONRECONFCOMPLETEDREQ_T = Proto('PsUser_RRCConnectionReconfCompletedReq_t', 'PSUSER_RRCCONNECTIONRECONFCOMPLETEDREQ_T')
local PsUser_RRCConnectionReconfCompletedReq_t = PSUSER_RRCCONNECTIONRECONFCOMPLETEDREQ_T.fields
PsUser_RRCConnectionReconfCompletedReq_t.dummy = ProtoField.uint8('PsUser_RRCConnectionReconfCompletedReq_t.dummy', 'dummy', base.HEX)
PsUser_RRCConnectionReconfCompletedReq_t.dummy_padding = ProtoField.bytes('PsUser_RRCConnectionReconfCompletedReq_t.dummy_padding', 'dummy_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_RRCCONNECTIONRECONFCOMPLETEDREQ_T, buffer())
  subtree:set_text('PsUser_RRCConnectionReconfCompletedReq_t')
  subtree:add_le (PsUser_RRCConnectionReconfCompletedReq_t.dummy, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_RRCConnectionReconfCompletedReq_t.dummy_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
