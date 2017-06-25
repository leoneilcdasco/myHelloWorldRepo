local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'CpCm_SNetworkPlanUpdateInd'
end
function module:messageId()
  return 0x6014
end
----------------------------------------------------------------
local CPCM_SNETWORKPLANUPDATEIND = Proto('CpCm_SNetworkPlanUpdateInd', 'CPCM_SNETWORKPLANUPDATEIND')
local CpCm_SNetworkPlanUpdateInd = CPCM_SNETWORKPLANUPDATEIND.fields
CpCm_SNetworkPlanUpdateInd.persistanceInfo = ProtoField.bytes('CpCm_SNetworkPlanUpdateInd.persistanceInfo', 'persistanceInfo', base.HEX)
CpCm_SNetworkPlanUpdateInd.persistanceInfo_padding = ProtoField.bytes('CpCm_SNetworkPlanUpdateInd.persistanceInfo_padding', 'persistanceInfo_padding', base.HEX)
local CPCM_SNETWORKPLANUPDATEIND_DELTANETWORKPLANFILE = Proto('CpCm_SNetworkPlanUpdateInd_deltaNetworkPlanFile', 'CPCM_SNETWORKPLANUPDATEIND_DELTANETWORKPLANFILE')
local CpCm_SNetworkPlanUpdateInd_deltaNetworkPlanFile = CPCM_SNETWORKPLANUPDATEIND_DELTANETWORKPLANFILE.fields
CpCm_SNetworkPlanUpdateInd_deltaNetworkPlanFile.deltaNetworkPlanFile_length = ProtoField.uint32('CpCm_SNetworkPlanUpdateInd_deltaNetworkPlanFile.deltaNetworkPlanFile_length', 'deltaNetworkPlanFile_length', base.HEX)
CpCm_SNetworkPlanUpdateInd_deltaNetworkPlanFile.deltaNetworkPlanFile_values = ProtoField.bytes('CpCm_SNetworkPlanUpdateInd_deltaNetworkPlanFile.deltaNetworkPlanFile_values', 'deltaNetworkPlanFile_values', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (CPCM_SNETWORKPLANUPDATEIND, buffer())
  subtree:set_text('CpCm_SNetworkPlanUpdateInd')
  subtree:add_le (CpCm_SNetworkPlanUpdateInd.persistanceInfo, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (CpCm_SNetworkPlanUpdateInd.persistanceInfo_padding, buffer(offset, 3))
  offset = offset + 3
  local CpCm_SNetworkPlanUpdateInd_deltaNetworkPlanFileTree = subtree:add (CPCM_SNETWORKPLANUPDATEIND_DELTANETWORKPLANFILE, buffer(offset))
  CpCm_SNetworkPlanUpdateInd_deltaNetworkPlanFileTree:set_text('CpCm_SNetworkPlanUpdateInd_deltaNetworkPlanFile')
  CpCm_SNetworkPlanUpdateInd_deltaNetworkPlanFileTree:add_le (CpCm_SNetworkPlanUpdateInd_deltaNetworkPlanFile.deltaNetworkPlanFile_length, buffer(offset, 4))
  offset = offset + 4
  CpCm_SNetworkPlanUpdateInd_deltaNetworkPlanFileTree:add_le (CpCm_SNetworkPlanUpdateInd_deltaNetworkPlanFile.deltaNetworkPlanFile_values, buffer(offset, ( (msglen >= 256) and 256 or (msglen-offset) )))
  offset = offset + ( (msglen >= 256) and 256 or (msglen-offset) )
end
----------------------------------------------------------------
return module
