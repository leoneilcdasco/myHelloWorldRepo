local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoData_UeDataPathInfoInd'
end
function module:messageId()
  return 0x0402
end
----------------------------------------------------------------
local LODATA_UEDATAPATHINFOIND_T = Proto('LoData_UeDataPathInfoInd_t', 'LODATA_UEDATAPATHINFOIND_T')
local LoData_UeDataPathInfoInd_t = LODATA_UEDATAPATHINFOIND_T.fields
LoData_UeDataPathInfoInd_t.bearerIndex = ProtoField.uint16('LoData_UeDataPathInfoInd_t.bearerIndex', 'bearerIndex', base.HEX)
LoData_UeDataPathInfoInd_t.bearerIndex_padding = ProtoField.bytes('LoData_UeDataPathInfoInd_t.bearerIndex_padding', 'bearerIndex_padding', base.HEX)
LoData_UeDataPathInfoInd_t.dataVolume = ProtoField.uint32('LoData_UeDataPathInfoInd_t.dataVolume', 'dataVolume', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LODATA_UEDATAPATHINFOIND_T, buffer())
  subtree:set_text('LoData_UeDataPathInfoInd_t')
  subtree:add_le (LoData_UeDataPathInfoInd_t.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoData_UeDataPathInfoInd_t.bearerIndex_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoData_UeDataPathInfoInd_t.dataVolume, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
