local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_SStatusResp'
end
function module:messageId()
  return 0x6004
end
----------------------------------------------------------------
local CPCM_SSTATUSRESP = Proto('CpCm_SStatusResp', 'CPCM_SSTATUSRESP')
local CpCm_SStatusResp = CPCM_SSTATUSRESP.fields
CpCm_SStatusResp.status = ProtoField.bytes('CpCm_SStatusResp.status', 'status', base.HEX)
CpCm_SStatusResp.status_padding = ProtoField.bytes('CpCm_SStatusResp.status_padding', 'status_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_SSTATUSRESP, buffer())
  subtree:set_text('CpCm_SStatusResp')
  subtree:add_le (CpCm_SStatusResp.status, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (CpCm_SStatusResp.status_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
