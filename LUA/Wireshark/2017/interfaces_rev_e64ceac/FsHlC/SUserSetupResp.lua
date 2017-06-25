local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUserSetupResp'
end
function module:messageId()
  return 0x7012
end
----------------------------------------------------------------
local FSHLC_SUSERSETUPRESP = Proto('FsHlC_SUserSetupResp', 'FSHLC_SUSERSETUPRESP')
local FsHlC_SUserSetupResp = FSHLC_SUSERSETUPRESP.fields
FsHlC_SUserSetupResp.messageType = ProtoField.uint16('FsHlC_SUserSetupResp.messageType', 'messageType', base.HEX)
FsHlC_SUserSetupResp.ueFsId = ProtoField.uint16('FsHlC_SUserSetupResp.ueFsId', 'ueFsId', base.HEX)
FsHlC_SUserSetupResp.loDataUeId = ProtoField.uint16('FsHlC_SUserSetupResp.loDataUeId', 'loDataUeId', base.HEX)
FsHlC_SUserSetupResp.loDataUeId_padding = ProtoField.bytes('FsHlC_SUserSetupResp.loDataUeId_padding', 'loDataUeId_padding', base.HEX)
FsHlC_SUserSetupResp.loDataDlRlcPduReceiverAddress = ProtoField.uint32('FsHlC_SUserSetupResp.loDataDlRlcPduReceiverAddress', 'loDataDlRlcPduReceiverAddress', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUSERSETUPRESP, buffer())
  subtree:set_text('FsHlC_SUserSetupResp')
  subtree:add_le (FsHlC_SUserSetupResp.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUserSetupResp.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUserSetupResp.loDataUeId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUserSetupResp.loDataUeId_padding, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUserSetupResp.loDataDlRlcPduReceiverAddress, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
