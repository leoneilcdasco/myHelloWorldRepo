local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoData_FreeTypes_LoData'
end
function module:messageId()
  return 0x0403
end
----------------------------------------------------------------
local LODATA_FREETYPES_LODATA_T = Proto('LoData_FreeTypes_LoData_t', 'LODATA_FREETYPES_LODATA_T')
local LoData_FreeTypes_LoData_t = LODATA_FREETYPES_LODATA_T.fields
LoData_FreeTypes_LoData_t.dummy = ProtoField.uint16('LoData_FreeTypes_LoData_t.dummy', 'dummy', base.HEX)
LoData_FreeTypes_LoData_t.dummy_padding = ProtoField.bytes('LoData_FreeTypes_LoData_t.dummy_padding', 'dummy_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LODATA_FREETYPES_LODATA_T, buffer())
  subtree:set_text('LoData_FreeTypes_LoData_t')
  subtree:add_le (LoData_FreeTypes_LoData_t.dummy, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoData_FreeTypes_LoData_t.dummy_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
