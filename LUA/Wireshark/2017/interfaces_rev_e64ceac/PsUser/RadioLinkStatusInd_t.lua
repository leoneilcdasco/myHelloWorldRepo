local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsUser_RadioLinkStatusInd'
end
function module:messageId()
  return 0x0976
end
----------------------------------------------------------------
local PSUSER_RADIOLINKSTATUSIND_T = Proto('PsUser_RadioLinkStatusInd_t', 'PSUSER_RADIOLINKSTATUSIND_T')
local PsUser_RadioLinkStatusInd_t = PSUSER_RADIOLINKSTATUSIND_T.fields
PsUser_RadioLinkStatusInd_t.dummy = ProtoField.uint8('PsUser_RadioLinkStatusInd_t.dummy', 'dummy', base.HEX)
PsUser_RadioLinkStatusInd_t.dummy_padding = ProtoField.bytes('PsUser_RadioLinkStatusInd_t.dummy_padding', 'dummy_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSUSER_RADIOLINKSTATUSIND_T, buffer())
  subtree:set_text('PsUser_RadioLinkStatusInd_t')
  subtree:add_le (PsUser_RadioLinkStatusInd_t.dummy, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsUser_RadioLinkStatusInd_t.dummy_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
