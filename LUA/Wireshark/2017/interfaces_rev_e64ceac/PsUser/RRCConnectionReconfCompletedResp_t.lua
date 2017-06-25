local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_RRCConnectionReconfCompletedResp'
end
function module:messageId()
  return 0x0975
end
----------------------------------------------------------------
local PSUSER_RRCCONNECTIONRECONFCOMPLETEDRESP_T = Proto('PsUser_RRCConnectionReconfCompletedResp_t', 'PSUSER_RRCCONNECTIONRECONFCOMPLETEDRESP_T')
local PsUser_RRCConnectionReconfCompletedResp_t = PSUSER_RRCCONNECTIONRECONFCOMPLETEDRESP_T.fields
PsUser_RRCConnectionReconfCompletedResp_t.dummy = ProtoField.uint8('PsUser_RRCConnectionReconfCompletedResp_t.dummy', 'dummy', base.HEX)
PsUser_RRCConnectionReconfCompletedResp_t.dummy_padding = ProtoField.bytes('PsUser_RRCConnectionReconfCompletedResp_t.dummy_padding', 'dummy_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_RRCCONNECTIONRECONFCOMPLETEDRESP_T, buffer())
  subtree:set_text('PsUser_RRCConnectionReconfCompletedResp_t')
  subtree:add_le (PsUser_RRCConnectionReconfCompletedResp_t.dummy, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_RRCConnectionReconfCompletedResp_t.dummy_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
