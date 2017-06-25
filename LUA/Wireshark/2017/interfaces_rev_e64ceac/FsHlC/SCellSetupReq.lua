local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SCellSetupReq'
end
function module:messageId()
  return 0x7009
end
----------------------------------------------------------------
local FSHLC_SCELLSETUPREQ = Proto('FsHlC_SCellSetupReq', 'FSHLC_SCELLSETUPREQ')
local FsHlC_SCellSetupReq = FSHLC_SCELLSETUPREQ.fields
FsHlC_SCellSetupReq.messageType = ProtoField.uint16('FsHlC_SCellSetupReq.messageType', 'messageType', base.HEX)
FsHlC_SCellSetupReq.messageType_padding = ProtoField.bytes('FsHlC_SCellSetupReq.messageType_padding', 'messageType_padding', base.HEX)
FsHlC_SCellSetupReq.ngutrancellId = ProtoField.uint32('FsHlC_SCellSetupReq.ngutrancellId', 'ngutrancellId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SCELLSETUPREQ, buffer())
  subtree:set_text('FsHlC_SCellSetupReq')
  subtree:add_le (FsHlC_SCellSetupReq.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCellSetupReq.messageType_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCellSetupReq.ngutrancellId, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
