local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SCellSetupFailure'
end
function module:messageId()
  return 0x700b
end
----------------------------------------------------------------
local FSHLC_SCELLSETUPFAILURE = Proto('FsHlC_SCellSetupFailure', 'FSHLC_SCELLSETUPFAILURE')
local FsHlC_SCellSetupFailure = FSHLC_SCELLSETUPFAILURE.fields
FsHlC_SCellSetupFailure.messageType = ProtoField.uint16('FsHlC_SCellSetupFailure.messageType', 'messageType', base.HEX)
FsHlC_SCellSetupFailure.messageType_padding = ProtoField.bytes('FsHlC_SCellSetupFailure.messageType_padding', 'messageType_padding', base.HEX)
FsHlC_SCellSetupFailure.ngutrancellId = ProtoField.uint32('FsHlC_SCellSetupFailure.ngutrancellId', 'ngutrancellId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SCELLSETUPFAILURE, buffer())
  subtree:set_text('FsHlC_SCellSetupFailure')
  subtree:add_le (FsHlC_SCellSetupFailure.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCellSetupFailure.messageType_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCellSetupFailure.ngutrancellId, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
