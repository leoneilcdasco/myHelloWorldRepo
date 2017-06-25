local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'L1_LoopReq'
end
function module:messageId()
  return 0x0004
end
----------------------------------------------------------------
local L1_LOOPREQ_T = Proto('L1_LoopReq_t', 'L1_LOOPREQ_T')
local L1_LoopReq_t = L1_LOOPREQ_T.fields
L1_LoopReq_t.nextSubfrTypeSysFn = ProtoField.uint16('L1_LoopReq_t.nextSubfrTypeSysFn', 'nextSubfrTypeSysFn', base.HEX)
L1_LoopReq_t.nextSubfrTypeSubFn = ProtoField.uint8('L1_LoopReq_t.nextSubfrTypeSubFn', 'nextSubfrTypeSubFn', base.HEX)
L1_LoopReq_t.nextSubfrTypeSubFn_padding = ProtoField.int8('L1_LoopReq_t.nextSubfrTypeSubFn_padding', 'nextSubfrTypeSubFn_padding', base.DEC)
L1_LoopReq_t.nextPatternConfigSysFn = ProtoField.uint16('L1_LoopReq_t.nextPatternConfigSysFn', 'nextPatternConfigSysFn', base.HEX)
L1_LoopReq_t.nextPatternConfigSubFn = ProtoField.uint8('L1_LoopReq_t.nextPatternConfigSubFn', 'nextPatternConfigSubFn', base.HEX)
L1_LoopReq_t.nextPatternConfigSubFn_padding = ProtoField.int8('L1_LoopReq_t.nextPatternConfigSubFn_padding', 'nextPatternConfigSubFn_padding', base.DEC)
L1_LoopReq_t.nextXpbchSysFn = ProtoField.uint16('L1_LoopReq_t.nextXpbchSysFn', 'nextXpbchSysFn', base.HEX)
L1_LoopReq_t.nextXpbchSubFn = ProtoField.uint8('L1_LoopReq_t.nextXpbchSubFn', 'nextXpbchSubFn', base.HEX)
L1_LoopReq_t.nextXpbchSubFn_padding = ProtoField.int8('L1_LoopReq_t.nextXpbchSubFn_padding', 'nextXpbchSubFn_padding', base.DEC)
L1_LoopReq_t.nextEpbchSysFn = ProtoField.uint16('L1_LoopReq_t.nextEpbchSysFn', 'nextEpbchSysFn', base.HEX)
L1_LoopReq_t.nextEpbchSubFn = ProtoField.uint8('L1_LoopReq_t.nextEpbchSubFn', 'nextEpbchSubFn', base.HEX)
L1_LoopReq_t.nextEpbchSubFn_padding = ProtoField.int8('L1_LoopReq_t.nextEpbchSubFn_padding', 'nextEpbchSubFn_padding', base.DEC)
L1_LoopReq_t.nextPuschSysFn = ProtoField.uint16('L1_LoopReq_t.nextPuschSysFn', 'nextPuschSysFn', base.HEX)
L1_LoopReq_t.nextPuschSubFn = ProtoField.uint8('L1_LoopReq_t.nextPuschSubFn', 'nextPuschSubFn', base.HEX)
L1_LoopReq_t.nextPuschSubFn_padding = ProtoField.int8('L1_LoopReq_t.nextPuschSubFn_padding', 'nextPuschSubFn_padding', base.DEC)
L1_LoopReq_t.nextUlMeasSysFn = ProtoField.uint16('L1_LoopReq_t.nextUlMeasSysFn', 'nextUlMeasSysFn', base.HEX)
L1_LoopReq_t.nextUlMeasSubFn = ProtoField.uint8('L1_LoopReq_t.nextUlMeasSubFn', 'nextUlMeasSubFn', base.HEX)
L1_LoopReq_t.nextUlMeasSubFn_padding = ProtoField.int8('L1_LoopReq_t.nextUlMeasSubFn_padding', 'nextUlMeasSubFn_padding', base.DEC)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (L1_LOOPREQ_T, buffer())
  subtree:set_text('L1_LoopReq_t')
  subtree:add_le (L1_LoopReq_t.nextSubfrTypeSysFn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (L1_LoopReq_t.nextSubfrTypeSubFn, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1_LoopReq_t.nextSubfrTypeSubFn_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1_LoopReq_t.nextPatternConfigSysFn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (L1_LoopReq_t.nextPatternConfigSubFn, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1_LoopReq_t.nextPatternConfigSubFn_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1_LoopReq_t.nextXpbchSysFn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (L1_LoopReq_t.nextXpbchSubFn, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1_LoopReq_t.nextXpbchSubFn_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1_LoopReq_t.nextEpbchSysFn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (L1_LoopReq_t.nextEpbchSubFn, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1_LoopReq_t.nextEpbchSubFn_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1_LoopReq_t.nextPuschSysFn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (L1_LoopReq_t.nextPuschSubFn, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1_LoopReq_t.nextPuschSubFn_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1_LoopReq_t.nextUlMeasSysFn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (L1_LoopReq_t.nextUlMeasSubFn, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (L1_LoopReq_t.nextUlMeasSubFn_padding, buffer(offset, 1))
  offset = offset + 1
end
----------------------------------------------------------------
return module
