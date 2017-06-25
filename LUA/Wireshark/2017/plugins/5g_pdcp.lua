local p_5g_pdcp = Proto("5g_pdcp", "5G PDCP")

local f_dc_flag = ProtoField.new("D/C", "5g_pdcp.dc", ftypes.UINT8, { [0] = "Control", [1] = "Data" }, base.DEC, 0x80)
local f_sn = ProtoField.new("SN", "5g_pdcp.data_pdu.sn", ftypes.UINT24, nil, base.DEC, 0x3FFFF)
local f_data = ProtoField.bytes("5g_pdcp.data_pdu.data", "Data")

p_5g_pdcp.fields = { f_dc_flag, f_sn, f_data }

function is_data_pdu(pdu_buf)
	return pdu_buf(0, 1):bitfield(0) == 1
end

function p_5g_pdcp.dissector(buf, pkt, tree)
	if buf:len() < 3 then
		local pdcp_tree = tree:add(p_5g_pdcp, buf(0))
		pdcp_tree:append_text(" - Malformed")
		pdcp_tree:add_expert_info(PI_MALFORMED, PI_ERROR, "Required minimum length is 3")
		return -1
	end
	local pdcp_tree = tree:add(p_5g_pdcp, buf(0, 3))
	if is_data_pdu(buf) then
		pdcp_tree:append_text(" Data PDU")
	else
		pdcp_tree:append_text(" Control PDU")
	end
	pdcp_tree:add(f_dc_flag, buf(0, 1))
	pdcp_tree:add(f_sn, buf(0, 3))
	local data_len = buf:len() - 3
	if data_len == 0 then
		return -1
	else
		local data_tree = tree:add(buf(3), "Data (" .. data_len .. " bytes)")
		local MAX_DISPLAYED_BYTES = 20
		local data_dump_tree = data_tree:add(buf(3), "Data: " .. tostring(buf(3, math.min(data_len, MAX_DISPLAYED_BYTES)):bytes()))
		if data_len > MAX_DISPLAYED_BYTES then
			data_dump_tree:append_text("...")
		end
		data_tree:add("[Length: " .. data_len .. "]")
		return 3
	end
end
