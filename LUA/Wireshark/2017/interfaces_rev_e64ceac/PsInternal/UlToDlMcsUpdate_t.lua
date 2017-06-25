local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_UlToDlMcsUpdate'
end
function module:messageId()
  return 0x030b
end
----------------------------------------------------------------
local PSINTERNAL_ULTODLMCSUPDATE_T = Proto('PsInternal_UlToDlMcsUpdate_t', 'PSINTERNAL_ULTODLMCSUPDATE_T')
local PsInternal_UlToDlMcsUpdate_t = PSINTERNAL_ULTODLMCSUPDATE_T.fields
PsInternal_UlToDlMcsUpdate_t.rnti = ProtoField.uint16('PsInternal_UlToDlMcsUpdate_t.rnti', 'rnti', base.HEX)
PsInternal_UlToDlMcsUpdate_t.mcs = ProtoField.uint8('PsInternal_UlToDlMcsUpdate_t.mcs', 'mcs', base.HEX)
PsInternal_UlToDlMcsUpdate_t.subCellId = ProtoField.uint8('PsInternal_UlToDlMcsUpdate_t.subCellId', 'subCellId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_ULTODLMCSUPDATE_T, buffer())
  subtree:set_text('PsInternal_UlToDlMcsUpdate_t')
  subtree:add_le (PsInternal_UlToDlMcsUpdate_t.rnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsInternal_UlToDlMcsUpdate_t.mcs, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (PsInternal_UlToDlMcsUpdate_t.subCellId, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
