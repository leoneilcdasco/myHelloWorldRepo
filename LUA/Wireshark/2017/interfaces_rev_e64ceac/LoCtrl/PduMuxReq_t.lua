local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoCtrl_PduMuxReq'
end
function module:messageId()
  return 0x0500
end
----------------------------------------------------------------
local LOCTRL_PDUMUXREQ_T = Proto('LoCtrl_PduMuxReq_t', 'LOCTRL_PDUMUXREQ_T')
local LoCtrl_PduMuxReq_t = LOCTRL_PDUMUXREQ_T.fields
LoCtrl_PduMuxReq_t.subCellId = ProtoField.uint8('LoCtrl_PduMuxReq_t.subCellId', 'subCellId', base.HEX)
LoCtrl_PduMuxReq_t.subCellId_padding = ProtoField.int8('LoCtrl_PduMuxReq_t.subCellId_padding', 'subCellId_padding', base.DEC)
LoCtrl_PduMuxReq_t.sfn = ProtoField.uint16('LoCtrl_PduMuxReq_t.sfn', 'sfn', base.DEC)
LoCtrl_PduMuxReq_t.subFrame = ProtoField.uint8('LoCtrl_PduMuxReq_t.subFrame', 'subFrame', base.HEX)
LoCtrl_PduMuxReq_t.subFrame_padding = ProtoField.int8('LoCtrl_PduMuxReq_t.subFrame_padding', 'subFrame_padding', base.DEC)
LoCtrl_PduMuxReq_t.rnti = ProtoField.uint16('LoCtrl_PduMuxReq_t.rnti', 'rnti', base.HEX)
local LOCTRL_PDUMUXREQ_T_CODEWORDPARAMS = Proto('LoCtrl_PduMuxReq_t_codeWordParams', 'LOCTRL_PDUMUXREQ_T_CODEWORDPARAMS')
local LoCtrl_PduMuxReq_t_codeWordParams = LOCTRL_PDUMUXREQ_T_CODEWORDPARAMS.fields
LoCtrl_PduMuxReq_t_codeWordParams.requestType = ProtoField.bytes('LoCtrl_PduMuxReq_t_codeWordParams.requestType', 'requestType', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams.requestType_padding = ProtoField.int8('LoCtrl_PduMuxReq_t_codeWordParams.requestType_padding', 'requestType_padding', base.DEC)
LoCtrl_PduMuxReq_t_codeWordParams.absoluteDlHarqProcessIndex = ProtoField.uint16('LoCtrl_PduMuxReq_t_codeWordParams.absoluteDlHarqProcessIndex', 'absoluteDlHarqProcessIndex', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams.pdschPaylodTbSendReqAddr = ProtoField.uint32('LoCtrl_PduMuxReq_t_codeWordParams.pdschPaylodTbSendReqAddr', 'pdschPaylodTbSendReqAddr', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams.tbSize = ProtoField.uint32('LoCtrl_PduMuxReq_t_codeWordParams.tbSize', 'tbSize', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams.tbIndex = ProtoField.uint32('LoCtrl_PduMuxReq_t_codeWordParams.tbIndex', 'tbIndex', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams.tbStartOffset = ProtoField.uint32('LoCtrl_PduMuxReq_t_codeWordParams.tbStartOffset', 'tbStartOffset', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams.mcs = ProtoField.uint32('LoCtrl_PduMuxReq_t_codeWordParams.mcs', 'mcs', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams.harqId = ProtoField.uint32('LoCtrl_PduMuxReq_t_codeWordParams.harqId', 'harqId', base.HEX)
local LOCTRL_PDUMUXREQ_T_CODEWORDPARAMS_MACCEPARAMS = Proto('LoCtrl_PduMuxReq_t_codeWordParams_macCeParams', 'LOCTRL_PDUMUXREQ_T_CODEWORDPARAMS_MACCEPARAMS')
local LoCtrl_PduMuxReq_t_codeWordParams_macCeParams = LOCTRL_PDUMUXREQ_T_CODEWORDPARAMS_MACCEPARAMS.fields
LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.ueCriMacCeAvail = ProtoField.int8('LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.ueCriMacCeAvail', 'ueCriMacCeAvail', base.DEC)
LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.taMacCeAvail = ProtoField.int8('LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.taMacCeAvail', 'taMacCeAvail', base.DEC)
LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.taMacCeAvail_padding = ProtoField.bytes('LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.taMacCeAvail_padding', 'taMacCeAvail_padding', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.taMacCeValue = ProtoField.uint32('LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.taMacCeValue', 'taMacCeValue', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brsBeamChangeMacCeAvail = ProtoField.int8('LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brsBeamChangeMacCeAvail', 'brsBeamChangeMacCeAvail', base.DEC)
LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brsBeamChangeMacCeAvail_padding = ProtoField.bytes('LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brsBeamChangeMacCeAvail_padding', 'brsBeamChangeMacCeAvail_padding', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brsBeamChangeMacCeValue = ProtoField.uint32('LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brsBeamChangeMacCeValue', 'brsBeamChangeMacCeValue', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brrsBeamChangeMacCeAvail = ProtoField.int8('LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brrsBeamChangeMacCeAvail', 'brrsBeamChangeMacCeAvail', base.DEC)
LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brrsBeamChangeMacCeAvail_padding = ProtoField.bytes('LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brrsBeamChangeMacCeAvail_padding', 'brrsBeamChangeMacCeAvail_padding', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brrsBeamChangeMacCeValue = ProtoField.uint32('LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brrsBeamChangeMacCeValue', 'brrsBeamChangeMacCeValue', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams.amountRbs = ProtoField.uint8('LoCtrl_PduMuxReq_t_codeWordParams.amountRbs', 'amountRbs', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams.amountRbs_padding = ProtoField.bytes('LoCtrl_PduMuxReq_t_codeWordParams.amountRbs_padding', 'amountRbs_padding', base.HEX)
local LOCTRL_PDUMUXREQ_T_CODEWORDPARAMS_RBMULTIPLEXLIST = Proto('LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList', 'LOCTRL_PDUMUXREQ_T_CODEWORDPARAMS_RBMULTIPLEXLIST')
local LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList = LOCTRL_PDUMUXREQ_T_CODEWORDPARAMS_RBMULTIPLEXLIST.fields
LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList.rbMultiplexList_length = ProtoField.uint32('LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList.rbMultiplexList_length', 'rbMultiplexList_length', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList.logicalChannelId = ProtoField.uint8('LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList.logicalChannelId', 'logicalChannelId', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList.logicalChannelId_padding = ProtoField.bytes('LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList.logicalChannelId_padding', 'logicalChannelId_padding', base.HEX)
LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList.amountBytes = ProtoField.uint32('LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList.amountBytes', 'amountBytes', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOCTRL_PDUMUXREQ_T, buffer())
  subtree:set_text('LoCtrl_PduMuxReq_t')
  subtree:add_le (LoCtrl_PduMuxReq_t.subCellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCtrl_PduMuxReq_t.subCellId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCtrl_PduMuxReq_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoCtrl_PduMuxReq_t.subFrame, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCtrl_PduMuxReq_t.subFrame_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCtrl_PduMuxReq_t.rnti, buffer(offset, 2))
  offset = offset + 2
  local LoCtrl_PduMuxReq_t_codeWordParamsTree = subtree:add (LOCTRL_PDUMUXREQ_T_CODEWORDPARAMS, buffer(offset))
  LoCtrl_PduMuxReq_t_codeWordParamsTree:set_text('LoCtrl_PduMuxReq_t_codeWordParams')
  LoCtrl_PduMuxReq_t_codeWordParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams.requestType, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_PduMuxReq_t_codeWordParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams.requestType_padding, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_PduMuxReq_t_codeWordParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams.absoluteDlHarqProcessIndex, buffer(offset, 2))
  offset = offset + 2
  LoCtrl_PduMuxReq_t_codeWordParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams.pdschPaylodTbSendReqAddr, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_PduMuxReq_t_codeWordParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams.tbSize, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_PduMuxReq_t_codeWordParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams.tbIndex, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_PduMuxReq_t_codeWordParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams.tbStartOffset, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_PduMuxReq_t_codeWordParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams.mcs, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_PduMuxReq_t_codeWordParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams.harqId, buffer(offset, 4))
  offset = offset + 4
  local LoCtrl_PduMuxReq_t_codeWordParams_macCeParamsTree = LoCtrl_PduMuxReq_t_codeWordParamsTree:add (LOCTRL_PDUMUXREQ_T_CODEWORDPARAMS_MACCEPARAMS, buffer(offset))
  LoCtrl_PduMuxReq_t_codeWordParams_macCeParamsTree:set_text('LoCtrl_PduMuxReq_t_codeWordParams_macCeParams')
  LoCtrl_PduMuxReq_t_codeWordParams_macCeParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.ueCriMacCeAvail, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_PduMuxReq_t_codeWordParams_macCeParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.taMacCeAvail, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_PduMuxReq_t_codeWordParams_macCeParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.taMacCeAvail_padding, buffer(offset, 2))
  offset = offset + 2
  LoCtrl_PduMuxReq_t_codeWordParams_macCeParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.taMacCeValue, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_PduMuxReq_t_codeWordParams_macCeParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brsBeamChangeMacCeAvail, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_PduMuxReq_t_codeWordParams_macCeParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brsBeamChangeMacCeAvail_padding, buffer(offset, 3))
  offset = offset + 3
  LoCtrl_PduMuxReq_t_codeWordParams_macCeParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brsBeamChangeMacCeValue, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_PduMuxReq_t_codeWordParams_macCeParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brrsBeamChangeMacCeAvail, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_PduMuxReq_t_codeWordParams_macCeParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brrsBeamChangeMacCeAvail_padding, buffer(offset, 3))
  offset = offset + 3
  LoCtrl_PduMuxReq_t_codeWordParams_macCeParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_macCeParams.brrsBeamChangeMacCeValue, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_PduMuxReq_t_codeWordParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams.amountRbs, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_PduMuxReq_t_codeWordParamsTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams.amountRbs_padding, buffer(offset, 3))
  offset = offset + 3
  local LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexListTree = LoCtrl_PduMuxReq_t_codeWordParamsTree:add (LOCTRL_PDUMUXREQ_T_CODEWORDPARAMS_RBMULTIPLEXLIST, buffer(offset))
  LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexListTree:set_text('LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList')
  LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexListTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList.rbMultiplexList_length, buffer(offset, 4))
  offset = offset + 4
  LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexListTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList.logicalChannelId, buffer(offset, 1))
  offset = offset + 1
  LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexListTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList.logicalChannelId_padding, buffer(offset, 3))
  offset = offset + 3
  LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexListTree:add_le (LoCtrl_PduMuxReq_t_codeWordParams_rbMultiplexList.amountBytes, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
