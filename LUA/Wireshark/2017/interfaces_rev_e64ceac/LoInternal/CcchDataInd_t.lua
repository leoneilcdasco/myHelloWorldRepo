local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'LoInternal_CcchDataInd'
end
function module:messageId()
  return 0x0552
end
----------------------------------------------------------------
local LOINTERNAL_CCCHDATAIND_T = Proto('LoInternal_CcchDataInd_t', 'LOINTERNAL_CCCHDATAIND_T')
local LoInternal_CcchDataInd_t = LOINTERNAL_CCCHDATAIND_T.fields
LoInternal_CcchDataInd_t.rnti = ProtoField.uint16('LoInternal_CcchDataInd_t.rnti', 'rnti', base.HEX)
LoInternal_CcchDataInd_t.rnti_padding = ProtoField.bytes('LoInternal_CcchDataInd_t.rnti_padding', 'rnti_padding', base.HEX)
local LOINTERNAL_CCCHDATAIND_T_CRI = Proto('LoInternal_CcchDataInd_t_cri', 'LOINTERNAL_CCCHDATAIND_T_CRI')
local LoInternal_CcchDataInd_t_cri = LOINTERNAL_CCCHDATAIND_T_CRI.fields
LoInternal_CcchDataInd_t_cri.cri_length = ProtoField.uint32('LoInternal_CcchDataInd_t_cri.cri_length', 'cri_length', base.HEX)
LoInternal_CcchDataInd_t_cri.cri_values = ProtoField.bytes('LoInternal_CcchDataInd_t_cri.cri_values', 'cri_values', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (LOINTERNAL_CCCHDATAIND_T, buffer())
  subtree:set_text('LoInternal_CcchDataInd_t')
  subtree:add_le (LoInternal_CcchDataInd_t.rnti, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (LoInternal_CcchDataInd_t.rnti_padding, buffer(offset, 2))
  offset = offset + 2
  local LoInternal_CcchDataInd_t_criTree = subtree:add (LOINTERNAL_CCCHDATAIND_T_CRI, buffer(offset))
  LoInternal_CcchDataInd_t_criTree:set_text('LoInternal_CcchDataInd_t_cri')
  LoInternal_CcchDataInd_t_criTree:add_le (LoInternal_CcchDataInd_t_cri.cri_length, buffer(offset, 4))
  offset = offset + 4
  LoInternal_CcchDataInd_t_criTree:add_le (LoInternal_CcchDataInd_t_cri.cri_values, buffer(offset, ( (msglen >= 8) and 8 or (msglen-offset) )))
  offset = offset + ( (msglen >= 8) and 8 or (msglen-offset) )
end
----------------------------------------------------------------
return module
