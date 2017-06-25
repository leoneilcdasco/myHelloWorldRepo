local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsCell_FreeTypes'
end
function module:messageId()
  return 0x0929
end
----------------------------------------------------------------
local PSCELL_FREETYPES_T = Proto('PsCell_FreeTypes_t', 'PSCELL_FREETYPES_T')
local PsCell_FreeTypes_t = PSCELL_FREETYPES_T.fields
PsCell_FreeTypes_t.dummy = ProtoField.uint16('PsCell_FreeTypes_t.dummy', 'dummy', base.HEX)
PsCell_FreeTypes_t.dummy_padding = ProtoField.bytes('PsCell_FreeTypes_t.dummy_padding', 'dummy_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSCELL_FREETYPES_T, buffer())
  subtree:set_text('PsCell_FreeTypes_t')
  subtree:add_le (PsCell_FreeTypes_t.dummy, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (PsCell_FreeTypes_t.dummy_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
