local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoUser_UserSetupReq'
end
function module:messageId()
  return 0x0600
end
----------------------------------------------------------------
local LOUSER_USERSETUPREQ_T = Proto('LoUser_UserSetupReq_t', 'LOUSER_USERSETUPREQ_T')
local LoUser_UserSetupReq_t = LOUSER_USERSETUPREQ_T.fields
LoUser_UserSetupReq_t.ueFsId = ProtoField.uint16('LoUser_UserSetupReq_t.ueFsId', 'ueFsId', base.HEX)
LoUser_UserSetupReq_t.cRnti = ProtoField.uint16('LoUser_UserSetupReq_t.cRnti', 'cRnti', base.HEX)
LoUser_UserSetupReq_t.ngutranCellId = ProtoField.uint32('LoUser_UserSetupReq_t.ngutranCellId', 'ngutranCellId', base.HEX)
LoUser_UserSetupReq_t.ueAddCause = ProtoField.bytes('LoUser_UserSetupReq_t.ueAddCause', 'ueAddCause', base.HEX)
LoUser_UserSetupReq_t.numSrbs = ProtoField.uint8('LoUser_UserSetupReq_t.numSrbs', 'numSrbs', base.HEX)
LoUser_UserSetupReq_t.numSrbs_padding = ProtoField.bytes('LoUser_UserSetupReq_t.numSrbs_padding', 'numSrbs_padding', base.HEX)
local LOUSER_USERSETUPREQ_T_SRBADDREQLO = Proto('LoUser_UserSetupReq_t_srbAddReqLo', 'LOUSER_USERSETUPREQ_T_SRBADDREQLO')
local LoUser_UserSetupReq_t_srbAddReqLo = LOUSER_USERSETUPREQ_T_SRBADDREQLO.fields
LoUser_UserSetupReq_t_srbAddReqLo.srbAddReqLo_length = ProtoField.uint32('LoUser_UserSetupReq_t_srbAddReqLo.srbAddReqLo_length', 'srbAddReqLo_length', base.HEX)
LoUser_UserSetupReq_t_srbAddReqLo.logicalChannelId = ProtoField.uint8('LoUser_UserSetupReq_t_srbAddReqLo.logicalChannelId', 'logicalChannelId', base.HEX)
LoUser_UserSetupReq_t_srbAddReqLo.logicalChannelGroupId = ProtoField.uint8('LoUser_UserSetupReq_t_srbAddReqLo.logicalChannelGroupId', 'logicalChannelGroupId', base.HEX)
LoUser_UserSetupReq_t_srbAddReqLo.bearerIndex = ProtoField.uint16('LoUser_UserSetupReq_t_srbAddReqLo.bearerIndex', 'bearerIndex', base.HEX)
LoUser_UserSetupReq_t_srbAddReqLo.loDataUlRlcPduReceiverAddress = ProtoField.uint32('LoUser_UserSetupReq_t_srbAddReqLo.loDataUlRlcPduReceiverAddress', 'loDataUlRlcPduReceiverAddress', base.HEX)
LoUser_UserSetupReq_t.numDrbs = ProtoField.uint8('LoUser_UserSetupReq_t.numDrbs', 'numDrbs', base.HEX)
LoUser_UserSetupReq_t.numDrbs_padding = ProtoField.bytes('LoUser_UserSetupReq_t.numDrbs_padding', 'numDrbs_padding', base.HEX)
local LOUSER_USERSETUPREQ_T_DRBADDREQLO = Proto('LoUser_UserSetupReq_t_drbAddReqLo', 'LOUSER_USERSETUPREQ_T_DRBADDREQLO')
local LoUser_UserSetupReq_t_drbAddReqLo = LOUSER_USERSETUPREQ_T_DRBADDREQLO.fields
LoUser_UserSetupReq_t_drbAddReqLo.drbAddReqLo_length = ProtoField.uint32('LoUser_UserSetupReq_t_drbAddReqLo.drbAddReqLo_length', 'drbAddReqLo_length', base.HEX)
LoUser_UserSetupReq_t_drbAddReqLo.logicalChannelId = ProtoField.uint8('LoUser_UserSetupReq_t_drbAddReqLo.logicalChannelId', 'logicalChannelId', base.HEX)
LoUser_UserSetupReq_t_drbAddReqLo.logicalChannelGroupId = ProtoField.uint8('LoUser_UserSetupReq_t_drbAddReqLo.logicalChannelGroupId', 'logicalChannelGroupId', base.HEX)
LoUser_UserSetupReq_t_drbAddReqLo.bearerIndex = ProtoField.uint16('LoUser_UserSetupReq_t_drbAddReqLo.bearerIndex', 'bearerIndex', base.HEX)
LoUser_UserSetupReq_t_drbAddReqLo.loDataUlRlcPduReceiverAddress = ProtoField.uint32('LoUser_UserSetupReq_t_drbAddReqLo.loDataUlRlcPduReceiverAddress', 'loDataUlRlcPduReceiverAddress', base.HEX)
LoUser_UserSetupReq_t_drbAddReqLo.loDataFlowControlAddress = ProtoField.uint32('LoUser_UserSetupReq_t_drbAddReqLo.loDataFlowControlAddress', 'loDataFlowControlAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOUSER_USERSETUPREQ_T, buffer())
  subtree:set_text('LoUser_UserSetupReq_t')
  subtree:add_le (LoUser_UserSetupReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoUser_UserSetupReq_t.cRnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoUser_UserSetupReq_t.ngutranCellId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoUser_UserSetupReq_t.ueAddCause, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoUser_UserSetupReq_t.numSrbs, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoUser_UserSetupReq_t.numSrbs_padding, buffer(offset, 2))
  offset = offset + 2
  local LoUser_UserSetupReq_t_srbAddReqLoTree = subtree:add (LOUSER_USERSETUPREQ_T_SRBADDREQLO, buffer(offset))
  LoUser_UserSetupReq_t_srbAddReqLoTree:set_text('LoUser_UserSetupReq_t_srbAddReqLo')
  LoUser_UserSetupReq_t_srbAddReqLoTree:add_le (LoUser_UserSetupReq_t_srbAddReqLo.srbAddReqLo_length, buffer(offset, 4))
  offset = offset + 4
  LoUser_UserSetupReq_t_srbAddReqLoTree:add_le (LoUser_UserSetupReq_t_srbAddReqLo.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  LoUser_UserSetupReq_t_srbAddReqLoTree:add_le (LoUser_UserSetupReq_t_srbAddReqLo.logicalChannelGroupId, buffer(offset, 1))
  offset = offset + 1
  LoUser_UserSetupReq_t_srbAddReqLoTree:add_le (LoUser_UserSetupReq_t_srbAddReqLo.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  LoUser_UserSetupReq_t_srbAddReqLoTree:add_le (LoUser_UserSetupReq_t_srbAddReqLo.loDataUlRlcPduReceiverAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoUser_UserSetupReq_t.numDrbs, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoUser_UserSetupReq_t.numDrbs_padding, buffer(offset, 3))
  offset = offset + 3
  local LoUser_UserSetupReq_t_drbAddReqLoTree = subtree:add (LOUSER_USERSETUPREQ_T_DRBADDREQLO, buffer(offset))
  LoUser_UserSetupReq_t_drbAddReqLoTree:set_text('LoUser_UserSetupReq_t_drbAddReqLo')
  LoUser_UserSetupReq_t_drbAddReqLoTree:add_le (LoUser_UserSetupReq_t_drbAddReqLo.drbAddReqLo_length, buffer(offset, 4))
  offset = offset + 4
  LoUser_UserSetupReq_t_drbAddReqLoTree:add_le (LoUser_UserSetupReq_t_drbAddReqLo.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  LoUser_UserSetupReq_t_drbAddReqLoTree:add_le (LoUser_UserSetupReq_t_drbAddReqLo.logicalChannelGroupId, buffer(offset, 1))
  offset = offset + 1
  LoUser_UserSetupReq_t_drbAddReqLoTree:add_le (LoUser_UserSetupReq_t_drbAddReqLo.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  LoUser_UserSetupReq_t_drbAddReqLoTree:add_le (LoUser_UserSetupReq_t_drbAddReqLo.loDataUlRlcPduReceiverAddress, buffer(offset, 4))
  offset = offset + 4
  LoUser_UserSetupReq_t_drbAddReqLoTree:add_le (LoUser_UserSetupReq_t_drbAddReqLo.loDataFlowControlAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
