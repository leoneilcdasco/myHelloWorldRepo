local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SCellSystemInfoConfigurationResp'
end
function module:messageId()
  return 0x7008
end
----------------------------------------------------------------
local FSHLC_SCELLSYSTEMINFOCONFIGURATIONRESP = Proto('FsHlC_SCellSystemInfoConfigurationResp', 'FSHLC_SCELLSYSTEMINFOCONFIGURATIONRESP')
local FsHlC_SCellSystemInfoConfigurationResp = FSHLC_SCELLSYSTEMINFOCONFIGURATIONRESP.fields
FsHlC_SCellSystemInfoConfigurationResp.messageType = ProtoField.uint16('FsHlC_SCellSystemInfoConfigurationResp.messageType', 'messageType', base.HEX)
FsHlC_SCellSystemInfoConfigurationResp.messageType_padding = ProtoField.bytes('FsHlC_SCellSystemInfoConfigurationResp.messageType_padding', 'messageType_padding', base.HEX)
FsHlC_SCellSystemInfoConfigurationResp.ngutranCellId = ProtoField.uint32('FsHlC_SCellSystemInfoConfigurationResp.ngutranCellId', 'ngutranCellId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SCELLSYSTEMINFOCONFIGURATIONRESP, buffer())
  subtree:set_text('FsHlC_SCellSystemInfoConfigurationResp')
  subtree:add_le (FsHlC_SCellSystemInfoConfigurationResp.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCellSystemInfoConfigurationResp.messageType_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SCellSystemInfoConfigurationResp.ngutranCellId, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
