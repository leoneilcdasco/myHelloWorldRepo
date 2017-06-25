local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'PsInternal_UserStopInd'
end
function module:messageId()
  return 0x0315
end
----------------------------------------------------------------
local PSINTERNAL_USERSTOPIND_T = Proto('PsInternal_UserStopInd_t', 'PSINTERNAL_USERSTOPIND_T')
local PsInternal_UserStopInd_t = PSINTERNAL_USERSTOPIND_T.fields
local PSINTERNAL_USERSTOPIND_T_DATA = Proto('PsInternal_UserStopInd_t_data', 'PSINTERNAL_USERSTOPIND_T_DATA')
local PsInternal_UserStopInd_t_data = PSINTERNAL_USERSTOPIND_T_DATA.fields
PsInternal_UserStopInd_t_data.ueFsId = ProtoField.uint16('PsInternal_UserStopInd_t_data.ueFsId', 'ueFsId', base.HEX)
PsInternal_UserStopInd_t_data.ueFsId_padding = ProtoField.bytes('PsInternal_UserStopInd_t_data.ueFsId_padding', 'ueFsId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (PSINTERNAL_USERSTOPIND_T, buffer())
  subtree:set_text('PsInternal_UserStopInd_t')
  local PsInternal_UserStopInd_t_dataTree = subtree:add (PSINTERNAL_USERSTOPIND_T_DATA, buffer(offset))
  PsInternal_UserStopInd_t_dataTree:set_text('PsInternal_UserStopInd_t_data')
  PsInternal_UserStopInd_t_dataTree:add_le (PsInternal_UserStopInd_t_data.ueFsId, buffer(offset, 2))
  offset = offset + 2
  PsInternal_UserStopInd_t_dataTree:add_le (PsInternal_UserStopInd_t_data.ueFsId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
