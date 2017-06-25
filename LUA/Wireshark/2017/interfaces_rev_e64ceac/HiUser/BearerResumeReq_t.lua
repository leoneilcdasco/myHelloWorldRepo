local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiUser_BearerResumeReq'
end
function module:messageId()
  return 0x0706
end
----------------------------------------------------------------
local HIUSER_BEARERRESUMEREQ_T = Proto('HiUser_BearerResumeReq_t', 'HIUSER_BEARERRESUMEREQ_T')
local HiUser_BearerResumeReq_t = HIUSER_BEARERRESUMEREQ_T.fields
HiUser_BearerResumeReq_t.ueFsId = ProtoField.uint16('HiUser_BearerResumeReq_t.ueFsId', 'ueFsId', base.HEX)
HiUser_BearerResumeReq_t.logicalChannelIdentity = ProtoField.uint8('HiUser_BearerResumeReq_t.logicalChannelIdentity', 'logicalChannelIdentity', base.HEX)
HiUser_BearerResumeReq_t.logicalChannelIdentity_padding = ProtoField.int8('HiUser_BearerResumeReq_t.logicalChannelIdentity_padding', 'logicalChannelIdentity_padding', base.DEC)
HiUser_BearerResumeReq_t.bearerIndex = ProtoField.uint16('HiUser_BearerResumeReq_t.bearerIndex', 'bearerIndex', base.HEX)
HiUser_BearerResumeReq_t.bearerGroup = ProtoField.uint16('HiUser_BearerResumeReq_t.bearerGroup', 'bearerGroup', base.HEX)
HiUser_BearerResumeReq_t.isNewLoDataDlRlcPduReceiverAddress = ProtoField.int8('HiUser_BearerResumeReq_t.isNewLoDataDlRlcPduReceiverAddress', 'isNewLoDataDlRlcPduReceiverAddress', base.DEC)
HiUser_BearerResumeReq_t.isNewLoDataDlRlcPduReceiverAddress_padding = ProtoField.bytes('HiUser_BearerResumeReq_t.isNewLoDataDlRlcPduReceiverAddress_padding', 'isNewLoDataDlRlcPduReceiverAddress_padding', base.HEX)
HiUser_BearerResumeReq_t.loDataDlRlcPduReceiverAddress = ProtoField.uint32('HiUser_BearerResumeReq_t.loDataDlRlcPduReceiverAddress', 'loDataDlRlcPduReceiverAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HIUSER_BEARERRESUMEREQ_T, buffer())
  subtree:set_text('HiUser_BearerResumeReq_t')
  subtree:add_le (HiUser_BearerResumeReq_t.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerResumeReq_t.logicalChannelIdentity, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerResumeReq_t.logicalChannelIdentity_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerResumeReq_t.bearerIndex, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerResumeReq_t.bearerGroup, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiUser_BearerResumeReq_t.isNewLoDataDlRlcPduReceiverAddress, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiUser_BearerResumeReq_t.isNewLoDataDlRlcPduReceiverAddress_padding, buffer(offset, 3))
  offset = offset + 3
  subtree:add_le (HiUser_BearerResumeReq_t.loDataDlRlcPduReceiverAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
