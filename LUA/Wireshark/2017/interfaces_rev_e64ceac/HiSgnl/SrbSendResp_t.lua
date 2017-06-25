local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiSgnl_SrbSendResp'
end
function module:messageId()
  return 0x0792
end
----------------------------------------------------------------
local HISGNL_SRBSENDRESP_T = Proto('HiSgnl_SrbSendResp_t', 'HISGNL_SRBSENDRESP_T')
local HiSgnl_SrbSendResp_t = HISGNL_SRBSENDRESP_T.fields
local HISGNL_SRBSENDRESP_T_MESSAGERESULT = Proto('HiSgnl_SrbSendResp_t_messageResult', 'HISGNL_SRBSENDRESP_T_MESSAGERESULT')
local HiSgnl_SrbSendResp_t_messageResult = HISGNL_SRBSENDRESP_T_MESSAGERESULT.fields
HiSgnl_SrbSendResp_t_messageResult.status = ProtoField.bytes('HiSgnl_SrbSendResp_t_messageResult.status', 'status', base.HEX)
HiSgnl_SrbSendResp_t_messageResult.status_padding = ProtoField.bytes('HiSgnl_SrbSendResp_t_messageResult.status_padding', 'status_padding', base.HEX)
HiSgnl_SrbSendResp_t_messageResult.cause = ProtoField.uint32('HiSgnl_SrbSendResp_t_messageResult.cause', 'cause', base.HEX)
HiSgnl_SrbSendResp_t.ueFsID = ProtoField.uint16('HiSgnl_SrbSendResp_t.ueFsID', 'ueFsID', base.HEX)
HiSgnl_SrbSendResp_t.logicalChannelId = ProtoField.uint8('HiSgnl_SrbSendResp_t.logicalChannelId', 'logicalChannelId', base.HEX)
HiSgnl_SrbSendResp_t.logicalChannelId_padding = ProtoField.int8('HiSgnl_SrbSendResp_t.logicalChannelId_padding', 'logicalChannelId_padding', base.DEC)
HiSgnl_SrbSendResp_t.sizeOfRrcMsg = ProtoField.uint32('HiSgnl_SrbSendResp_t.sizeOfRrcMsg', 'sizeOfRrcMsg', base.HEX)
local HISGNL_SRBSENDRESP_T_RRCMSGPAYLOAD = Proto('HiSgnl_SrbSendResp_t_rrcMsgPayload', 'HISGNL_SRBSENDRESP_T_RRCMSGPAYLOAD')
local HiSgnl_SrbSendResp_t_rrcMsgPayload = HISGNL_SRBSENDRESP_T_RRCMSGPAYLOAD.fields
HiSgnl_SrbSendResp_t_rrcMsgPayload.rrcMsgPayload_offset = ProtoField.uint32('HiSgnl_SrbSendResp_t_rrcMsgPayload.rrcMsgPayload_offset', 'rrcMsgPayload_offset', base.HEX)
HiSgnl_SrbSendResp_t_rrcMsgPayload.rrcMsgPayload_length = ProtoField.uint32('HiSgnl_SrbSendResp_t_rrcMsgPayload.rrcMsgPayload_length', 'rrcMsgPayload_length', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HISGNL_SRBSENDRESP_T, buffer())
  subtree:set_text('HiSgnl_SrbSendResp_t')
  local HiSgnl_SrbSendResp_t_messageResultTree = subtree:add (HISGNL_SRBSENDRESP_T_MESSAGERESULT, buffer(offset))
  HiSgnl_SrbSendResp_t_messageResultTree:set_text('HiSgnl_SrbSendResp_t_messageResult')
  HiSgnl_SrbSendResp_t_messageResultTree:add_le (HiSgnl_SrbSendResp_t_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  HiSgnl_SrbSendResp_t_messageResultTree:add_le (HiSgnl_SrbSendResp_t_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  HiSgnl_SrbSendResp_t_messageResultTree:add_le (HiSgnl_SrbSendResp_t_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (HiSgnl_SrbSendResp_t.ueFsID, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (HiSgnl_SrbSendResp_t.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiSgnl_SrbSendResp_t.logicalChannelId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiSgnl_SrbSendResp_t.sizeOfRrcMsg, buffer(offset, 4))
  offset = offset + 4
  local HiSgnl_SrbSendResp_t_rrcMsgPayloadTree = subtree:add (HISGNL_SRBSENDRESP_T_RRCMSGPAYLOAD, buffer(offset))
  HiSgnl_SrbSendResp_t_rrcMsgPayloadTree:set_text('HiSgnl_SrbSendResp_t_rrcMsgPayload')
  HiSgnl_SrbSendResp_t_rrcMsgPayloadTree:add_le (HiSgnl_SrbSendResp_t_rrcMsgPayload.rrcMsgPayload_offset, buffer(offset, 4))
  offset = offset + 4
  HiSgnl_SrbSendResp_t_rrcMsgPayloadTree:add_le (HiSgnl_SrbSendResp_t_rrcMsgPayload.rrcMsgPayload_length, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
