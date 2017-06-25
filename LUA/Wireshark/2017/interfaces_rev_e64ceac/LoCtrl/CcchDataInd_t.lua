local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoCtrl_CcchDataInd'
end
function module:messageId()
  return 0x0505
end
----------------------------------------------------------------
local LOCTRL_CCCHDATAIND_T = Proto('LoCtrl_CcchDataInd_t', 'LOCTRL_CCCHDATAIND_T')
local LoCtrl_CcchDataInd_t = LOCTRL_CCCHDATAIND_T.fields
LoCtrl_CcchDataInd_t.subCellId = ProtoField.uint8('LoCtrl_CcchDataInd_t.subCellId', 'subCellId', base.HEX)
LoCtrl_CcchDataInd_t.subCellId_padding = ProtoField.int8('LoCtrl_CcchDataInd_t.subCellId_padding', 'subCellId_padding', base.DEC)
LoCtrl_CcchDataInd_t.crnti = ProtoField.uint16('LoCtrl_CcchDataInd_t.crnti', 'crnti', base.HEX)
LoCtrl_CcchDataInd_t.sizeOfRrcMsg = ProtoField.uint32('LoCtrl_CcchDataInd_t.sizeOfRrcMsg', 'sizeOfRrcMsg', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOCTRL_CCCHDATAIND_T, buffer())
  subtree:set_text('LoCtrl_CcchDataInd_t')
  subtree:add_le (LoCtrl_CcchDataInd_t.subCellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCtrl_CcchDataInd_t.subCellId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (LoCtrl_CcchDataInd_t.crnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoCtrl_CcchDataInd_t.sizeOfRrcMsg, buffer(offset, 4))
  offset = offset + 4
end
----------------------------------------------------------------
return module
