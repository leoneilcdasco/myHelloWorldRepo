local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoCtrl_SubframeTriggerReq'
end
function module:messageId()
  return 0x0506
end
----------------------------------------------------------------
local LOCTRL_SUBFRAMETRIGGERREQ_T = Proto('LoCtrl_SubframeTriggerReq_t', 'LOCTRL_SUBFRAMETRIGGERREQ_T')
local LoCtrl_SubframeTriggerReq_t = LOCTRL_SUBFRAMETRIGGERREQ_T.fields
LoCtrl_SubframeTriggerReq_t.sfn = ProtoField.uint16('LoCtrl_SubframeTriggerReq_t.sfn', 'sfn', base.DEC)
LoCtrl_SubframeTriggerReq_t.subframeNo = ProtoField.uint8('LoCtrl_SubframeTriggerReq_t.subframeNo', 'subframeNo', base.HEX)
LoCtrl_SubframeTriggerReq_t.subframeNo_padding = ProtoField.bytes('LoCtrl_SubframeTriggerReq_t.subframeNo_padding', 'subframeNo_padding', base.HEX)
LoCtrl_SubframeTriggerReq_t.tscAtSubframeBoundary = ProtoField.uint64('LoCtrl_SubframeTriggerReq_t.tscAtSubframeBoundary', 'tscAtSubframeBoundary', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOCTRL_SUBFRAMETRIGGERREQ_T, buffer())
  subtree:set_text('LoCtrl_SubframeTriggerReq_t')
  subtree:add_le (LoCtrl_SubframeTriggerReq_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoCtrl_SubframeTriggerReq_t.subframeNo, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCtrl_SubframeTriggerReq_t.subframeNo_padding, buffer(offset, 5))
  offset = offset + 5
  subtree:add_le (LoCtrl_SubframeTriggerReq_t.tscAtSubframeBoundary, buffer(offset, 8))
  offset = offset + 8
end
----------------------------------------------------------------
return module
