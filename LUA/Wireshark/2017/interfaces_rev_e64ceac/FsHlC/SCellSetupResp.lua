local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SCellSetupResp'
end
function module:messageId()
  return 0x700a
end
----------------------------------------------------------------
local FSHLC_SCELLSETUPRESP = Proto('FsHlC_SCellSetupResp', 'FSHLC_SCELLSETUPRESP')
local FsHlC_SCellSetupResp = FSHLC_SCELLSETUPRESP.fields
FsHlC_SCellSetupResp.messageType = ProtoField.uint16('FsHlC_SCellSetupResp.messageType', 'messageType', base.HEX)
FsHlC_SCellSetupResp.messageType_padding = ProtoField.bytes('FsHlC_SCellSetupResp.messageType_padding', 'messageType_padding', base.HEX)
FsHlC_SCellSetupResp.ngutrancellId = ProtoField.uint32('FsHlC_SCellSetupResp.ngutrancellId', 'ngutrancellId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SCELLSETUPRESP, buffer())
  subtree:set_text('FsHlC_SCellSetupResp')
  subtree:add_le (FsHlC_SCellSetupResp.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCellSetupResp.messageType_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCellSetupResp.ngutrancellId, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
