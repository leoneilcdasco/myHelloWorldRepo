local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SSubCellGroupSetupResp'
end
function module:messageId()
  return 0x7005
end
----------------------------------------------------------------
local FSHLC_SSUBCELLGROUPSETUPRESP = Proto('FsHlC_SSubCellGroupSetupResp', 'FSHLC_SSUBCELLGROUPSETUPRESP')
local FsHlC_SSubCellGroupSetupResp = FSHLC_SSUBCELLGROUPSETUPRESP.fields
FsHlC_SSubCellGroupSetupResp.messageType = ProtoField.uint16('FsHlC_SSubCellGroupSetupResp.messageType', 'messageType', base.HEX)
FsHlC_SSubCellGroupSetupResp.subcellGroupId = ProtoField.uint8('FsHlC_SSubCellGroupSetupResp.subcellGroupId', 'subcellGroupId', base.HEX)
FsHlC_SSubCellGroupSetupResp.subcellGroupId_padding = ProtoField.int8('FsHlC_SSubCellGroupSetupResp.subcellGroupId_padding', 'subcellGroupId_padding', base.DEC)
local FSHLC_SSUBCELLGROUPSETUPRESP_MESSAGERESULT = Proto('FsHlC_SSubCellGroupSetupResp_messageResult', 'FSHLC_SSUBCELLGROUPSETUPRESP_MESSAGERESULT')
local FsHlC_SSubCellGroupSetupResp_messageResult = FSHLC_SSUBCELLGROUPSETUPRESP_MESSAGERESULT.fields
FsHlC_SSubCellGroupSetupResp_messageResult.status = ProtoField.bytes('FsHlC_SSubCellGroupSetupResp_messageResult.status', 'status', base.HEX)
FsHlC_SSubCellGroupSetupResp_messageResult.status_padding = ProtoField.bytes('FsHlC_SSubCellGroupSetupResp_messageResult.status_padding', 'status_padding', base.HEX)
FsHlC_SSubCellGroupSetupResp_messageResult.cause = ProtoField.uint32('FsHlC_SSubCellGroupSetupResp_messageResult.cause', 'cause', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SSUBCELLGROUPSETUPRESP, buffer())
  subtree:set_text('FsHlC_SSubCellGroupSetupResp')
  subtree:add_le (FsHlC_SSubCellGroupSetupResp.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SSubCellGroupSetupResp.subcellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (FsHlC_SSubCellGroupSetupResp.subcellGroupId_padding, buffer(offset, 1))
  offset = offset + 1
  local FsHlC_SSubCellGroupSetupResp_messageResultTree = subtree:add (FSHLC_SSUBCELLGROUPSETUPRESP_MESSAGERESULT, buffer(offset))
  FsHlC_SSubCellGroupSetupResp_messageResultTree:set_text('FsHlC_SSubCellGroupSetupResp_messageResult')
  FsHlC_SSubCellGroupSetupResp_messageResultTree:add_le (FsHlC_SSubCellGroupSetupResp_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  FsHlC_SSubCellGroupSetupResp_messageResultTree:add_le (FsHlC_SSubCellGroupSetupResp_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  FsHlC_SSubCellGroupSetupResp_messageResultTree:add_le (FsHlC_SSubCellGroupSetupResp_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
