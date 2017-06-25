local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUeContextModifyResp'
end
function module:messageId()
  return 0x700d
end
----------------------------------------------------------------
local FSHLC_SUECONTEXTMODIFYRESP = Proto('FsHlC_SUeContextModifyResp', 'FSHLC_SUECONTEXTMODIFYRESP')
local FsHlC_SUeContextModifyResp = FSHLC_SUECONTEXTMODIFYRESP.fields
FsHlC_SUeContextModifyResp.messageType = ProtoField.uint16('FsHlC_SUeContextModifyResp.messageType', 'messageType', base.HEX)
FsHlC_SUeContextModifyResp.ueFsId = ProtoField.uint16('FsHlC_SUeContextModifyResp.ueFsId', 'ueFsId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUECONTEXTMODIFYRESP, buffer())
  subtree:set_text('FsHlC_SUeContextModifyResp')
  subtree:add_le (FsHlC_SUeContextModifyResp.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUeContextModifyResp.ueFsId, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
