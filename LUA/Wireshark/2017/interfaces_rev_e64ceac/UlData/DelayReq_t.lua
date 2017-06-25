local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'UlData_DelayReq'
end
function module:messageId()
  return 0x020e
end
----------------------------------------------------------------
local ULDATA_DELAYREQ_T = Proto('UlData_DelayReq_t', 'ULDATA_DELAYREQ_T')
local UlData_DelayReq_t = ULDATA_DELAYREQ_T.fields
UlData_DelayReq_t.sfn = ProtoField.uint16('UlData_DelayReq_t.sfn', 'sfn', base.DEC)
UlData_DelayReq_t.subframeNumber = ProtoField.uint8('UlData_DelayReq_t.subframeNumber', 'subframeNumber', base.DEC)
UlData_DelayReq_t.subcellId = ProtoField.uint8('UlData_DelayReq_t.subcellId', 'subcellId', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (ULDATA_DELAYREQ_T, buffer())
  subtree:set_text('UlData_DelayReq_t')
  subtree:add_le (UlData_DelayReq_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (UlData_DelayReq_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (UlData_DelayReq_t.subcellId, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
