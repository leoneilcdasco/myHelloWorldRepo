local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoInternal_LoIntUserDeleteReq'
end
function module:messageId()
  return 0x0557
end
----------------------------------------------------------------
local LOINTERNAL_LOINTUSERDELETEREQ_T = Proto('LoInternal_LoIntUserDeleteReq_t', 'LOINTERNAL_LOINTUSERDELETEREQ_T')
local LoInternal_LoIntUserDeleteReq_t = LOINTERNAL_LOINTUSERDELETEREQ_T.fields
LoInternal_LoIntUserDeleteReq_t.ueFsId = ProtoField.uint16('LoInternal_LoIntUserDeleteReq_t.ueFsId', 'ueFsId', base.HEX)
LoInternal_LoIntUserDeleteReq_t.loDataUeId = ProtoField.uint16('LoInternal_LoIntUserDeleteReq_t.loDataUeId', 'loDataUeId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOINTERNAL_LOINTUSERDELETEREQ_T, buffer())
  subtree:set_text('LoInternal_LoIntUserDeleteReq_t')
  subtree:add_le (LoInternal_LoIntUserDeleteReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoInternal_LoIntUserDeleteReq_t.loDataUeId, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
