local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_SSubCellGroupSetupReq'
end
function module:messageId()
  return 0x600d
end
----------------------------------------------------------------
local CPCM_SSUBCELLGROUPSETUPREQ = Proto('CpCm_SSubCellGroupSetupReq', 'CPCM_SSUBCELLGROUPSETUPREQ')
local CpCm_SSubCellGroupSetupReq = CPCM_SSUBCELLGROUPSETUPREQ.fields
CpCm_SSubCellGroupSetupReq.subcellGroupId = ProtoField.uint8('CpCm_SSubCellGroupSetupReq.subcellGroupId', 'subcellGroupId', base.HEX)
CpCm_SSubCellGroupSetupReq.subcellGroupId_padding = ProtoField.bytes('CpCm_SSubCellGroupSetupReq.subcellGroupId_padding', 'subcellGroupId_padding', base.HEX)
local CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE = Proto('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE', 'CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE')
local CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE = CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE.fields
local CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE_ANTPORTBRSIDLIST = Proto('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_antPortBrsIdList', 'CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE_ANTPORTBRSIDLIST')
local CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_antPortBrsIdList = CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE_ANTPORTBRSIDLIST.fields
CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_antPortBrsIdList.antPortBrsIdList_length = ProtoField.uint32('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_antPortBrsIdList.antPortBrsIdList_length', 'antPortBrsIdList_length', base.HEX)
CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_antPortBrsIdList.antPortBrsIdList_values = ProtoField.bytes('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_antPortBrsIdList.antPortBrsIdList_values', 'antPortBrsIdList_values', base.HEX)
local CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE_SUBCELLLIST = Proto('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList', 'CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE_SUBCELLLIST')
local CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList = CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE_SUBCELLLIST.fields
CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList.subcellList_length = ProtoField.uint32('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList.subcellList_length', 'subcellList_length', base.HEX)
CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList.subCellId = ProtoField.uint8('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList.subCellId', 'subCellId', base.HEX)
CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList.l1subcellProcessingInstance = ProtoField.uint8('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList.l1subcellProcessingInstance', 'l1subcellProcessingInstance', base.HEX)
CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList.l1subcellProcessingInstance_padding = ProtoField.bytes('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList.l1subcellProcessingInstance_padding', 'l1subcellProcessingInstance_padding', base.HEX)
local CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE_SUBCELLLIST_CELLPARAMETERSIE = Proto('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList_cellParametersIE', 'CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE_SUBCELLLIST_CELLPARAMETERSIE')
local CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList_cellParametersIE = CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE_SUBCELLLIST_CELLPARAMETERSIE.fields
CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList_cellParametersIE.ngutranCellId = ProtoField.uint32('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList_cellParametersIE.ngutranCellId', 'ngutranCellId', base.HEX)
CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList_cellParametersIE.ccPosId = ProtoField.uint32('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList_cellParametersIE.ccPosId', 'ccPosId', base.HEX)
CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE.actDigitalBF = ProtoField.int8('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE.actDigitalBF', 'actDigitalBF', base.DEC)
CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE.actDigitalBF_padding = ProtoField.bytes('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE.actDigitalBF_padding', 'actDigitalBF_padding', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_SSUBCELLGROUPSETUPREQ, buffer())
  subtree:set_text('CpCm_SSubCellGroupSetupReq')
  subtree:add_le (CpCm_SSubCellGroupSetupReq.subcellGroupId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (CpCm_SSubCellGroupSetupReq.subcellGroupId_padding, buffer(offset, 3))
  offset = offset + 3
  local CpCm_SSubCellGroupSetupReq_subcellGroupParametersIETree = subtree:add (CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE, buffer(offset))
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIETree:set_text('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE')
  local CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_antPortBrsIdListTree = CpCm_SSubCellGroupSetupReq_subcellGroupParametersIETree:add (CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE_ANTPORTBRSIDLIST, buffer(offset))
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_antPortBrsIdListTree:set_text('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_antPortBrsIdList')
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_antPortBrsIdListTree:add_le (CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_antPortBrsIdList.antPortBrsIdList_length, buffer(offset, 4))
  offset = offset + 4
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_antPortBrsIdListTree:add_le (CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_antPortBrsIdList.antPortBrsIdList_values, buffer(offset, ( (msglen >= 512) and 512 or (msglen-offset) )))
  offset = offset + ( (msglen >= 512) and 512 or (msglen-offset) )
  local CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellListTree = CpCm_SSubCellGroupSetupReq_subcellGroupParametersIETree:add (CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE_SUBCELLLIST, buffer(offset))
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellListTree:set_text('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList')
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellListTree:add_le (CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList.subcellList_length, buffer(offset, 4))
  offset = offset + 4
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellListTree:add_le (CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList.subCellId, buffer(offset, 1))
  offset = offset + 1
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellListTree:add_le (CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList.l1subcellProcessingInstance, buffer(offset, 1))
  offset = offset + 1
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellListTree:add_le (CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList.l1subcellProcessingInstance_padding, buffer(offset, 2))
  offset = offset + 2
  local CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList_cellParametersIETree = CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellListTree:add (CPCM_SSUBCELLGROUPSETUPREQ_SUBCELLGROUPPARAMETERSIE_SUBCELLLIST_CELLPARAMETERSIE, buffer(offset))
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList_cellParametersIETree:set_text('CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList_cellParametersIE')
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList_cellParametersIETree:add_le (CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList_cellParametersIE.ngutranCellId, buffer(offset, 4))
  offset = offset + 4
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList_cellParametersIETree:add_le (CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE_subcellList_cellParametersIE.ccPosId, buffer(offset, 4))
  offset = offset + 4
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIETree:add_le (CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE.actDigitalBF, buffer(offset, 1))
  offset = offset + 1
  CpCm_SSubCellGroupSetupReq_subcellGroupParametersIETree:add_le (CpCm_SSubCellGroupSetupReq_subcellGroupParametersIE.actDigitalBF_padding, buffer(offset, 3))
  offset = offset + 3
end
----------------------------------------------------------------
return module
