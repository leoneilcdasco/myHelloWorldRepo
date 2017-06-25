local Proto = Proto
local ProtoField = ProtoField
local base = base
local module = {}
----------------------------------------------------------------
function module:messageName()
  return 'DlData_PdschPayloadTbSendReq'
end
function module:messageId()
  return 0x0108
end
----------------------------------------------------------------
local DLDATA_PDSCHPAYLOADTBSENDREQ_T = Proto('DlData_PdschPayloadTbSendReq_t', 'DLDATA_PDSCHPAYLOADTBSENDREQ_T')
local DlData_PdschPayloadTbSendReq_t = DLDATA_PDSCHPAYLOADTBSENDREQ_T.fields
DlData_PdschPayloadTbSendReq_t.subCellId = ProtoField.uint8('DlData_PdschPayloadTbSendReq_t.subCellId', 'subCellId', base.HEX)
DlData_PdschPayloadTbSendReq_t.subCellId_padding = ProtoField.int8('DlData_PdschPayloadTbSendReq_t.subCellId_padding', 'subCellId_padding', base.DEC)
DlData_PdschPayloadTbSendReq_t.sfn = ProtoField.uint16('DlData_PdschPayloadTbSendReq_t.sfn', 'sfn', base.DEC)
DlData_PdschPayloadTbSendReq_t.subframeNumber = ProtoField.uint8('DlData_PdschPayloadTbSendReq_t.subframeNumber', 'subframeNumber', base.DEC)
DlData_PdschPayloadTbSendReq_t.subframeNumber_padding = ProtoField.bytes('DlData_PdschPayloadTbSendReq_t.subframeNumber_padding', 'subframeNumber_padding', base.HEX)
DlData_PdschPayloadTbSendReq_t.tbIndex = ProtoField.uint32('DlData_PdschPayloadTbSendReq_t.tbIndex', 'tbIndex', base.HEX)
DlData_PdschPayloadTbSendReq_t.tbFragmentOffset = ProtoField.uint32('DlData_PdschPayloadTbSendReq_t.tbFragmentOffset', 'tbFragmentOffset', base.HEX)
DlData_PdschPayloadTbSendReq_t.tbFragmentSize = ProtoField.uint32('DlData_PdschPayloadTbSendReq_t.tbFragmentSize', 'tbFragmentSize', base.HEX)
DlData_PdschPayloadTbSendReq_t.payload = ProtoField.bytes('DlData_PdschPayloadTbSendReq_t.payload', 'payload', base.HEX)
local DLDATA_PDSCHPAYLOADTBSENDREQ_T_MAC_RAR = Proto('DlData_PdschPayloadTbSendReq_t_mac_rar', 'DLDATA_PDSCHPAYLOADTBSENDREQ_T_MAC_RAR')
local DlData_PdschPayloadTbSendReq_t_mac_rar = DLDATA_PDSCHPAYLOADTBSENDREQ_T_MAC_RAR.fields
DlData_PdschPayloadTbSendReq_t_mac_rar.mac_subhdr_e = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.mac_subhdr_e', 'mac_subhdr_e', base.DEC)
DlData_PdschPayloadTbSendReq_t_mac_rar.mac_subhdr_t = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.mac_subhdr_t', 'mac_subhdr_t', base.DEC)
DlData_PdschPayloadTbSendReq_t_mac_rar.mac_subhdr_rapid = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.mac_subhdr_rapid', 'mac_subhdr_rapid', base.DEC)
DlData_PdschPayloadTbSendReq_t_mac_rar.reserved = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.reserved', 'reserved', base.DEC)
DlData_PdschPayloadTbSendReq_t_mac_rar.ta_cmd = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.ta_cmd', 'ta_cmd', base.DEC)
DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_xpusch_range = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_xpusch_range', 'ul_grant_xpusch_range', base.DEC)
DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_resource_block_assignment = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_resource_block_assignment', 'ul_grant_resource_block_assignment', base.DEC)
DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_mcs = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_mcs', 'ul_grant_mcs', base.DEC)
DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_tpc_cmd = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_tpc_cmd', 'ul_grant_tpc_cmd', base.DEC)
DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_ul_delay = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_ul_delay', 'ul_grant_ul_delay', base.DEC)
DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_num_bsi_reports = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_num_bsi_reports', 'ul_grant_num_bsi_reports', base.DEC)
DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_bsi_beta_offset_index = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_bsi_beta_offset_index', 'ul_grant_bsi_beta_offset_index', base.DEC)
DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_ul_dual_pcrs = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_ul_dual_pcrs', 'ul_grant_ul_dual_pcrs', base.DEC)
DlData_PdschPayloadTbSendReq_t_mac_rar.temp_crnti = ProtoField.string('DlData_PdschPayloadTbSendReq_t_mac_rar.temp_crnti', 'temp_crnti', base.DEC)

----------------------------------------------------------------
function module:dissector(buffer, offset, pinfo, tree, msglen)
  local subtree = tree:add (DLDATA_PDSCHPAYLOADTBSENDREQ_T, buffer())
  subtree:set_text('DlData_PdschPayloadTbSendReq_t')
  subtree:add_le (DlData_PdschPayloadTbSendReq_t.subCellId, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschPayloadTbSendReq_t.subCellId_padding, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschPayloadTbSendReq_t.sfn, buffer(offset, 2))
  offset = offset + 2
  subtree:add_le (DlData_PdschPayloadTbSendReq_t.subframeNumber, buffer(offset, 1))
  offset = offset + 1
  subtree:add_le (DlData_PdschPayloadTbSendReq_t.subframeNumber_padding, buffer(offset, 3))
  offset = offset + 3
  subtree:add_le (DlData_PdschPayloadTbSendReq_t.tbIndex, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (DlData_PdschPayloadTbSendReq_t.tbFragmentOffset, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (DlData_PdschPayloadTbSendReq_t.tbFragmentSize, buffer(offset, 4))
  offset = offset + 4
  subtree:add_le (DlData_PdschPayloadTbSendReq_t.payload, buffer(offset, ( (msglen >= 8964) and 8964 or (msglen-offset) )))
  local mac_subhdr_e = buffer(offset,8):bitfield(0,1)
  local mac_subhdr_t = buffer(offset,8):bitfield(1,1)
  if mac_subhdr_e == 0 and mac_subhdr_t == 1 then
    local DlData_PdschPayloadTbSendReq_t_macRarTree = subtree:add (DLDATA_PDSCHPAYLOADTBSENDREQ_T_MAC_RAR, buffer(offset))
    local MAC_RAR_STRUCT = [[
    > [ 8 | mac_subhdr_e:u1
            mac_subhdr_t:u1
            mac_subhdr_rapid:u6
            reserved:u2
            ta_cmd:u11
            ul_grant_xpusch_range:u2
            ul_grant_resource_block_assignment:u9
            ul_grant_mcs:u4
            ul_grant_tpc_cmd:u3
            ul_grant_ul_delay:u2
            ul_grant_num_bsi_reports:u2
            ul_grant_bsi_beta_offset_index:u4
            ul_grant_ul_dual_pcrs:u1
            temp_crnti:u16
      ]
    ]]
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.mac_subhdr_e, buffer(offset,8):bitfield(0,1))
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.mac_subhdr_t, buffer(offset,8):bitfield(1,1))
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.mac_subhdr_rapid, buffer(offset,8):bitfield(2,6))
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.reserved, buffer(offset,8):bitfield(8,2))
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.ta_cmd, buffer(offset,8):bitfield(10,11))
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_xpusch_range, buffer(offset,8):bitfield(21,2))
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_resource_block_assignment, buffer(offset,8):bitfield(23,9))
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_mcs, buffer(offset,8):bitfield(32,4))
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_tpc_cmd, buffer(offset,8):bitfield(36,2))
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_ul_delay, buffer(offset,8):bitfield(39,2))
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_num_bsi_reports, buffer(offset,8):bitfield(41,2))
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_bsi_beta_offset_index, buffer(offset,8):bitfield(43,4))
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.ul_grant_ul_dual_pcrs, buffer(offset,8):bitfield(47,1))
    DlData_PdschPayloadTbSendReq_t_macRarTree:add_le (DlData_PdschPayloadTbSendReq_t_mac_rar.temp_crnti, buffer(offset,8):bitfield(48,16))
	else
     local tb_size = buffer():len() - offset
     Dissector.get("5g_dl_mac"):call(buffer(offset, 100):tvb(), pinfo, subtree)
  end

  offset = offset + ( (msglen >= 8964) and 8964 or (msglen-offset) )
end
----------------------------------------------------------------
return module
