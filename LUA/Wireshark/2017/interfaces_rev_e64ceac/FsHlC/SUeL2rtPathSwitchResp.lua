local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'FsHlC_SUeL2rtPathSwitchResp'
end
function module:messageId()
  return 0x701b
end
----------------------------------------------------------------
local FSHLC_SUEL2RTPATHSWITCHRESP = Proto('FsHlC_SUeL2rtPathSwitchResp', 'FSHLC_SUEL2RTPATHSWITCHRESP')
local FsHlC_SUeL2rtPathSwitchResp = FSHLC_SUEL2RTPATHSWITCHRESP.fields
FsHlC_SUeL2rtPathSwitchResp.messageType = ProtoField.uint16('FsHlC_SUeL2rtPathSwitchResp.messageType', 'messageType', base.HEX)
FsHlC_SUeL2rtPathSwitchResp.ueFsId = ProtoField.uint16('FsHlC_SUeL2rtPathSwitchResp.ueFsId', 'ueFsId', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (FSHLC_SUEL2RTPATHSWITCHRESP, buffer())
  subtree:set_text('FsHlC_SUeL2rtPathSwitchResp')
  subtree:add_le (FsHlC_SUeL2rtPathSwitchResp.messageType, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (FsHlC_SUeL2rtPathSwitchResp.ueFsId, buffer(offset, 2))
  offset = offset + 2
end
----------------------------------------------------------------
return module
