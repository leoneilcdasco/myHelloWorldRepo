local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoInternal_LoIntUserSetupReq'
end
function module:messageId()
  return 0x0556
end
----------------------------------------------------------------
local LOINTERNAL_LOINTUSERSETUPREQ_T = Proto('LoInternal_LoIntUserSetupReq_t', 'LOINTERNAL_LOINTUSERSETUPREQ_T')
local LoInternal_LoIntUserSetupReq_t = LOINTERNAL_LOINTUSERSETUPREQ_T.fields
LoInternal_LoIntUserSetupReq_t.ueFsId = ProtoField.uint16('LoInternal_LoIntUserSetupReq_t.ueFsId', 'ueFsId', base.HEX)
LoInternal_LoIntUserSetupReq_t.cRnti = ProtoField.uint16('LoInternal_LoIntUserSetupReq_t.cRnti', 'cRnti', base.HEX)
LoInternal_LoIntUserSetupReq_t.ngutranCellId = ProtoField.uint32('LoInternal_LoIntUserSetupReq_t.ngutranCellId', 'ngutranCellId', base.HEX)
LoInternal_LoIntUserSetupReq_t.ueAddCause = ProtoField.bytes('LoInternal_LoIntUserSetupReq_t.ueAddCause', 'ueAddCause', base.HEX)
LoInternal_LoIntUserSetupReq_t.numSrbs = ProtoField.uint8('LoInternal_LoIntUserSetupReq_t.numSrbs', 'numSrbs', base.HEX)
LoInternal_LoIntUserSetupReq_t.numSrbs_padding = ProtoField.bytes('LoInternal_LoIntUserSetupReq_t.numSrbs_padding', 'numSrbs_padding', base.HEX)
local LOINTERNAL_LOINTUSERSETUPREQ_T_SRBADDREQLO = Proto('LoInternal_LoIntUserSetupReq_t_srbAddReqLo', 'LOINTERNAL_LOINTUSERSETUPREQ_T_SRBADDREQLO')
local LoInternal_LoIntUserSetupReq_t_srbAddReqLo = LOINTERNAL_LOINTUSERSETUPREQ_T_SRBADDREQLO.fields
LoInternal_LoIntUserSetupReq_t_srbAddReqLo.srbAddReqLo_length = ProtoField.uint32('LoInternal_LoIntUserSetupReq_t_srbAddReqLo.srbAddReqLo_length', 'srbAddReqLo_length', base.HEX)
LoInternal_LoIntUserSetupReq_t_srbAddReqLo.logicalChannelId = ProtoField.uint8('LoInternal_LoIntUserSetupReq_t_srbAddReqLo.logicalChannelId', 'logicalChannelId', base.HEX)
LoInternal_LoIntUserSetupReq_t_srbAddReqLo.logicalChannelGroupId = ProtoField.uint8('LoInternal_LoIntUserSetupReq_t_srbAddReqLo.logicalChannelGroupId', 'logicalChannelGroupId', base.HEX)
LoInternal_LoIntUserSetupReq_t_srbAddReqLo.bearerIndex = ProtoField.uint16('LoInternal_LoIntUserSetupReq_t_srbAddReqLo.bearerIndex', 'bearerIndex', base.HEX)
LoInternal_LoIntUserSetupReq_t_srbAddReqLo.loDataUlRlcPduReceiverAddress = ProtoField.uint32('LoInternal_LoIntUserSetupReq_t_srbAddReqLo.loDataUlRlcPduReceiverAddress', 'loDataUlRlcPduReceiverAddress', base.HEX)
LoInternal_LoIntUserSetupReq_t.numDrbs = ProtoField.uint8('LoInternal_LoIntUserSetupReq_t.numDrbs', 'numDrbs', base.HEX)
LoInternal_LoIntUserSetupReq_t.numDrbs_padding = ProtoField.bytes('LoInternal_LoIntUserSetupReq_t.numDrbs_padding', 'numDrbs_padding', base.HEX)
local LOINTERNAL_LOINTUSERSETUPREQ_T_DRBADDREQLO = Proto('LoInternal_LoIntUserSetupReq_t_drbAddReqLo', 'LOINTERNAL_LOINTUSERSETUPREQ_T_DRBADDREQLO')
local LoInternal_LoIntUserSetupReq_t_drbAddReqLo = LOINTERNAL_LOINTUSERSETUPREQ_T_DRBADDREQLO.fields
LoInternal_LoIntUserSetupReq_t_drbAddReqLo.drbAddReqLo_length = ProtoField.uint32('LoInternal_LoIntUserSetupReq_t_drbAddReqLo.drbAddReqLo_length', 'drbAddReqLo_length', base.HEX)
LoInternal_LoIntUserSetupReq_t_drbAddReqLo.logicalChannelId = ProtoField.uint8('LoInternal_LoIntUserSetupReq_t_drbAddReqLo.logicalChannelId', 'logicalChannelId', base.HEX)
LoInternal_LoIntUserSetupReq_t_drbAddReqLo.logicalChannelGroupId = ProtoField.uint8('LoInternal_LoIntUserSetupReq_t_drbAddReqLo.logicalChannelGroupId', 'logicalChannelGroupId', base.HEX)
LoInternal_LoIntUserSetupReq_t_drbAddReqLo.bearerIndex = ProtoField.uint16('LoInternal_LoIntUserSetupReq_t_drbAddReqLo.bearerIndex', 'bearerIndex', base.HEX)
LoInternal_LoIntUserSetupReq_t_drbAddReqLo.loDataUlRlcPduReceiverAddress = ProtoField.uint32('LoInternal_LoIntUserSetupReq_t_drbAddReqLo.loDataUlRlcPduReceiverAddress', 'loDataUlRlcPduReceiverAddress', base.HEX)
LoInternal_LoIntUserSetupReq_t_drbAddReqLo.loDataFlowControlAddress = ProtoField.uint32('LoInternal_LoIntUserSetupReq_t_drbAddReqLo.loDataFlowControlAddress', 'loDataFlowControlAddress', base.HEX)
LoInternal_LoIntUserSetupReq_t.loDataUeId = ProtoField.uint16('LoInternal_LoIntUserSetupReq_t.loDataUeId', 'loDataUeId', base.HEX)
LoInternal_LoIntUserSetupReq_t.loDataUeId_padding = ProtoField.bytes('LoInternal_LoIntUserSetupReq_t.loDataUeId_padding', 'loDataUeId_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOINTERNAL_LOINTUSERSETUPREQ_T, buffer())
  subtree:set_text('LoInternal_LoIntUserSetupReq_t')
  subtree:add_le (LoInternal_LoIntUserSetupReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoInternal_LoIntUserSetupReq_t.cRnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoInternal_LoIntUserSetupReq_t.ngutranCellId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoInternal_LoIntUserSetupReq_t.ueAddCause, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoInternal_LoIntUserSetupReq_t.numSrbs, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoInternal_LoIntUserSetupReq_t.numSrbs_padding, buffer(offset, 2))
  offset = offset + 2
  local LoInternal_LoIntUserSetupReq_t_srbAddReqLoTree = subtree:add (LOINTERNAL_LOINTUSERSETUPREQ_T_SRBADDREQLO, buffer(offset))
  LoInternal_LoIntUserSetupReq_t_srbAddReqLoTree:set_text('LoInternal_LoIntUserSetupReq_t_srbAddReqLo')
  LoInternal_LoIntUserSetupReq_t_srbAddReqLoTree:add_le (LoInternal_LoIntUserSetupReq_t_srbAddReqLo.srbAddReqLo_length, buffer(offset, 4))
  offset = offset + 4
  LoInternal_LoIntUserSetupReq_t_srbAddReqLoTree:add_le (LoInternal_LoIntUserSetupReq_t_srbAddReqLo.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  LoInternal_LoIntUserSetupReq_t_srbAddReqLoTree:add_le (LoInternal_LoIntUserSetupReq_t_srbAddReqLo.logicalChannelGroupId, buffer(offset, 1))
  offset = offset + 1
  LoInternal_LoIntUserSetupReq_t_srbAddReqLoTree:add_le (LoInternal_LoIntUserSetupReq_t_srbAddReqLo.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  LoInternal_LoIntUserSetupReq_t_srbAddReqLoTree:add_le (LoInternal_LoIntUserSetupReq_t_srbAddReqLo.loDataUlRlcPduReceiverAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoInternal_LoIntUserSetupReq_t.numDrbs, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoInternal_LoIntUserSetupReq_t.numDrbs_padding, buffer(offset, 3))
  offset = offset + 3
  local LoInternal_LoIntUserSetupReq_t_drbAddReqLoTree = subtree:add (LOINTERNAL_LOINTUSERSETUPREQ_T_DRBADDREQLO, buffer(offset))
  LoInternal_LoIntUserSetupReq_t_drbAddReqLoTree:set_text('LoInternal_LoIntUserSetupReq_t_drbAddReqLo')
  LoInternal_LoIntUserSetupReq_t_drbAddReqLoTree:add_le (LoInternal_LoIntUserSetupReq_t_drbAddReqLo.drbAddReqLo_length, buffer(offset, 4))
  offset = offset + 4
  LoInternal_LoIntUserSetupReq_t_drbAddReqLoTree:add_le (LoInternal_LoIntUserSetupReq_t_drbAddReqLo.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  LoInternal_LoIntUserSetupReq_t_drbAddReqLoTree:add_le (LoInternal_LoIntUserSetupReq_t_drbAddReqLo.logicalChannelGroupId, buffer(offset, 1))
  offset = offset + 1
  LoInternal_LoIntUserSetupReq_t_drbAddReqLoTree:add_le (LoInternal_LoIntUserSetupReq_t_drbAddReqLo.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  LoInternal_LoIntUserSetupReq_t_drbAddReqLoTree:add_le (LoInternal_LoIntUserSetupReq_t_drbAddReqLo.loDataUlRlcPduReceiverAddress, buffer(offset, 4))
  offset = offset + 4
  LoInternal_LoIntUserSetupReq_t_drbAddReqLoTree:add_le (LoInternal_LoIntUserSetupReq_t_drbAddReqLo.loDataFlowControlAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (LoInternal_LoIntUserSetupReq_t.loDataUeId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoInternal_LoIntUserSetupReq_t.loDataUeId_padding, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
