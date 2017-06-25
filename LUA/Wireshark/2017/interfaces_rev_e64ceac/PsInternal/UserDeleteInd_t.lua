local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_UserDeleteInd'
end
function module:messageId()
  return 0x0314
end
----------------------------------------------------------------
local PSINTERNAL_USERDELETEIND_T = Proto('PsInternal_UserDeleteInd_t', 'PSINTERNAL_USERDELETEIND_T')
local PsInternal_UserDeleteInd_t = PSINTERNAL_USERDELETEIND_T.fields
local PSINTERNAL_USERDELETEIND_T_DATA = Proto('PsInternal_UserDeleteInd_t_data', 'PSINTERNAL_USERDELETEIND_T_DATA')
local PsInternal_UserDeleteInd_t_data = PSINTERNAL_USERDELETEIND_T_DATA.fields
PsInternal_UserDeleteInd_t_data.ueFsId = ProtoField.uint16('PsInternal_UserDeleteInd_t_data.ueFsId', 'ueFsId', base.HEX)
PsInternal_UserDeleteInd_t_data.ueFsId_padding = ProtoField.bytes('PsInternal_UserDeleteInd_t_data.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_USERDELETEIND_T, buffer())
  subtree:set_text('PsInternal_UserDeleteInd_t')
  local PsInternal_UserDeleteInd_t_dataTree = subtree:add (PSINTERNAL_USERDELETEIND_T_DATA, buffer(offset))
  PsInternal_UserDeleteInd_t_dataTree:set_text('PsInternal_UserDeleteInd_t_data')
  PsInternal_UserDeleteInd_t_dataTree:add_le (PsInternal_UserDeleteInd_t_data.ueFsId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserDeleteInd_t_dataTree:add_le (PsInternal_UserDeleteInd_t_data.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
