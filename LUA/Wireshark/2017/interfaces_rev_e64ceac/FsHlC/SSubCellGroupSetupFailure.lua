local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SSubCellGroupSetupFailure'
end
function module:messageId()
  return 0x7006
end
----------------------------------------------------------------
local FSHLC_SSUBCELLGROUPSETUPFAILURE = Proto('FsHlC_SSubCellGroupSetupFailure', 'FSHLC_SSUBCELLGROUPSETUPFAILURE')
local FsHlC_SSubCellGroupSetupFailure = FSHLC_SSUBCELLGROUPSETUPFAILURE.fields
FsHlC_SSubCellGroupSetupFailure.messageType = ProtoField.uint16('FsHlC_SSubCellGroupSetupFailure.messageType', 'messageType', base.HEX)
FsHlC_SSubCellGroupSetupFailure.subcellGroupId = ProtoField.uint8('FsHlC_SSubCellGroupSetupFailure.subcellGroupId', 'subcellGroupId', base.HEX)
FsHlC_SSubCellGroupSetupFailure.subcellGroupId_padding = ProtoField.int8('FsHlC_SSubCellGroupSetupFailure.subcellGroupId_padding', 'subcellGroupId_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SSUBCELLGROUPSETUPFAILURE, buffer())
  subtree:set_text('FsHlC_SSubCellGroupSetupFailure')
  subtree:add_le (FsHlC_SSubCellGroupSetupFailure.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SSubCellGroupSetupFailure.subcellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (FsHlC_SSubCellGroupSetupFailure.subcellGroupId_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
