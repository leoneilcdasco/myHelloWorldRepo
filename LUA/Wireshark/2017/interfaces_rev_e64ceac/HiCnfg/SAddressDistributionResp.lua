local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'HiCnfg_SAddressDistributionResp'
end
function module:messageId()
  return 0x0751
end
----------------------------------------------------------------
local HICNFG_SADDRESSDISTRIBUTIONRESP = Proto('HiCnfg_SAddressDistributionResp', 'HICNFG_SADDRESSDISTRIBUTIONRESP')
local HiCnfg_SAddressDistributionResp = HICNFG_SADDRESSDISTRIBUTIONRESP.fields
local HICNFG_SADDRESSDISTRIBUTIONRESP_MESSAGERESULT = Proto('HiCnfg_SAddressDistributionResp_messageResult', 'HICNFG_SADDRESSDISTRIBUTIONRESP_MESSAGERESULT')
local HiCnfg_SAddressDistributionResp_messageResult = HICNFG_SADDRESSDISTRIBUTIONRESP_MESSAGERESULT.fields
HiCnfg_SAddressDistributionResp_messageResult.status = ProtoField.bytes('HiCnfg_SAddressDistributionResp_messageResult.status', 'status', base.HEX)
HiCnfg_SAddressDistributionResp_messageResult.status_padding = ProtoField.bytes('HiCnfg_SAddressDistributionResp_messageResult.status_padding', 'status_padding', base.HEX)
HiCnfg_SAddressDistributionResp_messageResult.cause = ProtoField.uint32('HiCnfg_SAddressDistributionResp_messageResult.cause', 'cause', base.HEX)
HiCnfg_SAddressDistributionResp.l2NrtPoolId = ProtoField.uint32('HiCnfg_SAddressDistributionResp.l2NrtPoolId', 'l2NrtPoolId', base.HEX)
HiCnfg_SAddressDistributionResp.hiUserAddress = ProtoField.uint32('HiCnfg_SAddressDistributionResp.hiUserAddress', 'hiUserAddress', base.HEX)
HiCnfg_SAddressDistributionResp.hiSgnlAddress = ProtoField.uint32('HiCnfg_SAddressDistributionResp.hiSgnlAddress', 'hiSgnlAddress', base.HEX)
HiCnfg_SAddressDistributionResp.numOfBearerGroups = ProtoField.uint8('HiCnfg_SAddressDistributionResp.numOfBearerGroups', 'numOfBearerGroups', base.HEX)
HiCnfg_SAddressDistributionResp.numOfBearersPerBearerGroup = ProtoField.uint8('HiCnfg_SAddressDistributionResp.numOfBearersPerBearerGroup', 'numOfBearersPerBearerGroup', base.HEX)
HiCnfg_SAddressDistributionResp.numOfBearersPerBearerGroup_padding = ProtoField.bytes('HiCnfg_SAddressDistributionResp.numOfBearersPerBearerGroup_padding', 'numOfBearersPerBearerGroup_padding', base.HEX)
local HICNFG_SADDRESSDISTRIBUTIONRESP_LODATAULRLCPDURECEIVERCLIENTADDRESS = Proto('HiCnfg_SAddressDistributionResp_loDataUlRlcPduReceiverClientAddress', 'HICNFG_SADDRESSDISTRIBUTIONRESP_LODATAULRLCPDURECEIVERCLIENTADDRESS')
local HiCnfg_SAddressDistributionResp_loDataUlRlcPduReceiverClientAddress = HICNFG_SADDRESSDISTRIBUTIONRESP_LODATAULRLCPDURECEIVERCLIENTADDRESS.fields
HiCnfg_SAddressDistributionResp_loDataUlRlcPduReceiverClientAddress.loDataUlRlcPduReceiverClientAddress_length = ProtoField.uint32('HiCnfg_SAddressDistributionResp_loDataUlRlcPduReceiverClientAddress.loDataUlRlcPduReceiverClientAddress_length', 'loDataUlRlcPduReceiverClientAddress_length', base.HEX)
HiCnfg_SAddressDistributionResp_loDataUlRlcPduReceiverClientAddress.loDataUlRlcPduReceiverClientAddress_values = ProtoField.bytes('HiCnfg_SAddressDistributionResp_loDataUlRlcPduReceiverClientAddress.loDataUlRlcPduReceiverClientAddress_values', 'loDataUlRlcPduReceiverClientAddress_values', base.HEX)
local HICNFG_SADDRESSDISTRIBUTIONRESP_LODATAFLOWCTRLCLIENTADDRESS = Proto('HiCnfg_SAddressDistributionResp_loDataFlowCtrlClientAddress', 'HICNFG_SADDRESSDISTRIBUTIONRESP_LODATAFLOWCTRLCLIENTADDRESS')
local HiCnfg_SAddressDistributionResp_loDataFlowCtrlClientAddress = HICNFG_SADDRESSDISTRIBUTIONRESP_LODATAFLOWCTRLCLIENTADDRESS.fields
HiCnfg_SAddressDistributionResp_loDataFlowCtrlClientAddress.loDataFlowCtrlClientAddress_length = ProtoField.uint32('HiCnfg_SAddressDistributionResp_loDataFlowCtrlClientAddress.loDataFlowCtrlClientAddress_length', 'loDataFlowCtrlClientAddress_length', base.HEX)
HiCnfg_SAddressDistributionResp_loDataFlowCtrlClientAddress.loDataFlowCtrlClientAddress_values = ProtoField.bytes('HiCnfg_SAddressDistributionResp_loDataFlowCtrlClientAddress.loDataFlowCtrlClientAddress_values', 'loDataFlowCtrlClientAddress_values', base.HEX)
local HICNFG_SADDRESSDISTRIBUTIONRESP_TPUPBACKHAULPDURECEIVERADDRESS = Proto('HiCnfg_SAddressDistributionResp_tPUPBackHaulPduReceiverAddress', 'HICNFG_SADDRESSDISTRIBUTIONRESP_TPUPBACKHAULPDURECEIVERADDRESS')
local HiCnfg_SAddressDistributionResp_tPUPBackHaulPduReceiverAddress = HICNFG_SADDRESSDISTRIBUTIONRESP_TPUPBACKHAULPDURECEIVERADDRESS.fields
HiCnfg_SAddressDistributionResp_tPUPBackHaulPduReceiverAddress.tPUPBackHaulPduReceiverAddress_length = ProtoField.uint32('HiCnfg_SAddressDistributionResp_tPUPBackHaulPduReceiverAddress.tPUPBackHaulPduReceiverAddress_length', 'tPUPBackHaulPduReceiverAddress_length', base.HEX)
HiCnfg_SAddressDistributionResp_tPUPBackHaulPduReceiverAddress.tPUPBackHaulPduReceiverAddress_values = ProtoField.bytes('HiCnfg_SAddressDistributionResp_tPUPBackHaulPduReceiverAddress.tPUPBackHaulPduReceiverAddress_values', 'tPUPBackHaulPduReceiverAddress_values', base.HEX)
----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (HICNFG_SADDRESSDISTRIBUTIONRESP, buffer())
  subtree:set_text('HiCnfg_SAddressDistributionResp')
  local HiCnfg_SAddressDistributionResp_messageResultTree = subtree:add (HICNFG_SADDRESSDISTRIBUTIONRESP_MESSAGERESULT, buffer(offset))
  HiCnfg_SAddressDistributionResp_messageResultTree:set_text('HiCnfg_SAddressDistributionResp_messageResult')
  HiCnfg_SAddressDistributionResp_messageResultTree:add_le (HiCnfg_SAddressDistributionResp_messageResult.status, buffer(offset, 1))
  offset = offset + 1
  HiCnfg_SAddressDistributionResp_messageResultTree:add_le (HiCnfg_SAddressDistributionResp_messageResult.status_padding, buffer(offset, 3))
  offset = offset + 3
  HiCnfg_SAddressDistributionResp_messageResultTree:add_le (HiCnfg_SAddressDistributionResp_messageResult.cause, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (HiCnfg_SAddressDistributionResp.l2NrtPoolId, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (HiCnfg_SAddressDistributionResp.hiUserAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (HiCnfg_SAddressDistributionResp.hiSgnlAddress, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (HiCnfg_SAddressDistributionResp.numOfBearerGroups, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiCnfg_SAddressDistributionResp.numOfBearersPerBearerGroup, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (HiCnfg_SAddressDistributionResp.numOfBearersPerBearerGroup_padding, buffer(offset, 2))
  offset = offset + 2
  local HiCnfg_SAddressDistributionResp_loDataUlRlcPduReceiverClientAddressTree = subtree:add (HICNFG_SADDRESSDISTRIBUTIONRESP_LODATAULRLCPDURECEIVERCLIENTADDRESS, buffer(offset))
  HiCnfg_SAddressDistributionResp_loDataUlRlcPduReceiverClientAddressTree:set_text('HiCnfg_SAddressDistributionResp_loDataUlRlcPduReceiverClientAddress')
  HiCnfg_SAddressDistributionResp_loDataUlRlcPduReceiverClientAddressTree:add_le (HiCnfg_SAddressDistributionResp_loDataUlRlcPduReceiverClientAddress.loDataUlRlcPduReceiverClientAddress_length, buffer(offset, 4))
  offset = offset + 4
  HiCnfg_SAddressDistributionResp_loDataUlRlcPduReceiverClientAddressTree:add_le (HiCnfg_SAddressDistributionResp_loDataUlRlcPduReceiverClientAddress.loDataUlRlcPduReceiverClientAddress_values, buffer(offset, ( (msglen >= 80) and 80 or (msglen-offset) )))
  offset = offset + ( (msglen >= 80) and 80 or (msglen-offset) )
  local HiCnfg_SAddressDistributionResp_loDataFlowCtrlClientAddressTree = subtree:add (HICNFG_SADDRESSDISTRIBUTIONRESP_LODATAFLOWCTRLCLIENTADDRESS, buffer(offset))
  HiCnfg_SAddressDistributionResp_loDataFlowCtrlClientAddressTree:set_text('HiCnfg_SAddressDistributionResp_loDataFlowCtrlClientAddress')
  HiCnfg_SAddressDistributionResp_loDataFlowCtrlClientAddressTree:add_le (HiCnfg_SAddressDistributionResp_loDataFlowCtrlClientAddress.loDataFlowCtrlClientAddress_length, buffer(offset, 4))
  offset = offset + 4
  HiCnfg_SAddressDistributionResp_loDataFlowCtrlClientAddressTree:add_le (HiCnfg_SAddressDistributionResp_loDataFlowCtrlClientAddress.loDataFlowCtrlClientAddress_values, buffer(offset, ( (msglen >= 80) and 80 or (msglen-offset) )))
  offset = offset + ( (msglen >= 80) and 80 or (msglen-offset) )
  local HiCnfg_SAddressDistributionResp_tPUPBackHaulPduReceiverAddressTree = subtree:add (HICNFG_SADDRESSDISTRIBUTIONRESP_TPUPBACKHAULPDURECEIVERADDRESS, buffer(offset))
  HiCnfg_SAddressDistributionResp_tPUPBackHaulPduReceiverAddressTree:set_text('HiCnfg_SAddressDistributionResp_tPUPBackHaulPduReceiverAddress')
  HiCnfg_SAddressDistributionResp_tPUPBackHaulPduReceiverAddressTree:add_le (HiCnfg_SAddressDistributionResp_tPUPBackHaulPduReceiverAddress.tPUPBackHaulPduReceiverAddress_length, buffer(offset, 4))
  offset = offset + 4
  HiCnfg_SAddressDistributionResp_tPUPBackHaulPduReceiverAddressTree:add_le (HiCnfg_SAddressDistributionResp_tPUPBackHaulPduReceiverAddress.tPUPBackHaulPduReceiverAddress_values, buffer(offset, ( (msglen >= 80) and 80 or (msglen-offset) )))
  offset = offset + ( (msglen >= 80) and 80 or (msglen-offset) )
end
----------------------------------------------------------------
return module
