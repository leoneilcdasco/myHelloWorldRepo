local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_SFailureIndication'
end
function module:messageId()
  return 0x6013
end
----------------------------------------------------------------
local CPCM_SFAILUREINDICATION = Proto('CpCm_SFailureIndication', 'CPCM_SFAILUREINDICATION')
local CpCm_SFailureIndication = CPCM_SFAILUREINDICATION.fields
CpCm_SFailureIndication.sourceAddress = ProtoField.uint16('CpCm_SFailureIndication.sourceAddress', 'sourceAddress', base.HEX)
CpCm_SFailureIndication.sourceAddress_padding = ProtoField.bytes('CpCm_SFailureIndication.sourceAddress_padding', 'sourceAddress_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_SFAILUREINDICATION, buffer())
  subtree:set_text('CpCm_SFailureIndication')
  subtree:add_le (CpCm_SFailureIndication.sourceAddress, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (CpCm_SFailureIndication.sourceAddress_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
