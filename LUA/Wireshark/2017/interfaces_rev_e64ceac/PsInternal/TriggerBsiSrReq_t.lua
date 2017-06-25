local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_TriggerBsiSrReq'
end
function module:messageId()
  return 0x031c
end
----------------------------------------------------------------
local PSINTERNAL_TRIGGERBSISRREQ_T = Proto('PsInternal_TriggerBsiSrReq_t', 'PSINTERNAL_TRIGGERBSISRREQ_T')
local PsInternal_TriggerBsiSrReq_t = PSINTERNAL_TRIGGERBSISRREQ_T.fields
PsInternal_TriggerBsiSrReq_t.cRnti = ProtoField.uint16('PsInternal_TriggerBsiSrReq_t.cRnti', 'cRnti', base.HEX)
PsInternal_TriggerBsiSrReq_t.srOrder = ProtoField.int8('PsInternal_TriggerBsiSrReq_t.srOrder', 'srOrder', base.DEC)
PsInternal_TriggerBsiSrReq_t.bsiOrder = ProtoField.int8('PsInternal_TriggerBsiSrReq_t.bsiOrder', 'bsiOrder', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_TRIGGERBSISRREQ_T, buffer())
  subtree:set_text('PsInternal_TriggerBsiSrReq_t')
  subtree:add_le (PsInternal_TriggerBsiSrReq_t.cRnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsInternal_TriggerBsiSrReq_t.srOrder, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsInternal_TriggerBsiSrReq_t.bsiOrder, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
