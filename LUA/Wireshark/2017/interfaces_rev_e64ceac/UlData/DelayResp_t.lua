local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_DelayResp'
end
function module:messageId()
  return 0x020d
end
----------------------------------------------------------------
local ULDATA_DELAYRESP_T = Proto('UlData_DelayResp_t', 'ULDATA_DELAYRESP_T')
local UlData_DelayResp_t = ULDATA_DELAYRESP_T.fields
UlData_DelayResp_t.sfn = ProtoField.uint16('UlData_DelayResp_t.sfn', 'sfn', base.DEC)
UlData_DelayResp_t.subframeNumber = ProtoField.uint8('UlData_DelayResp_t.subframeNumber', 'subframeNumber', base.DEC)
UlData_DelayResp_t.subcellId = ProtoField.uint8('UlData_DelayResp_t.subcellId', 'subcellId', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_DELAYRESP_T, buffer())
  subtree:set_text('UlData_DelayResp_t')
  subtree:add_le (UlData_DelayResp_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_DelayResp_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_DelayResp_t.subcellId, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
