local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUeContextModifyFailure'
end
function module:messageId()
  return 0x700e
end
----------------------------------------------------------------
local FSHLC_SUECONTEXTMODIFYFAILURE = Proto('FsHlC_SUeContextModifyFailure', 'FSHLC_SUECONTEXTMODIFYFAILURE')
local FsHlC_SUeContextModifyFailure = FSHLC_SUECONTEXTMODIFYFAILURE.fields
FsHlC_SUeContextModifyFailure.messageType = ProtoField.uint16('FsHlC_SUeContextModifyFailure.messageType', 'messageType', base.HEX)
FsHlC_SUeContextModifyFailure.ueFsId = ProtoField.uint16('FsHlC_SUeContextModifyFailure.ueFsId', 'ueFsId', base.HEX)
FsHlC_SUeContextModifyFailure.failureCause = ProtoField.bytes('FsHlC_SUeContextModifyFailure.failureCause', 'failureCause', base.HEX)
FsHlC_SUeContextModifyFailure.failureCause_padding = ProtoField.bytes('FsHlC_SUeContextModifyFailure.failureCause_padding', 'failureCause_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUECONTEXTMODIFYFAILURE, buffer())
  subtree:set_text('FsHlC_SUeContextModifyFailure')
  subtree:add_le (FsHlC_SUeContextModifyFailure.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUeContextModifyFailure.ueFsId, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUeContextModifyFailure.failureCause, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (FsHlC_SUeContextModifyFailure.failureCause_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
