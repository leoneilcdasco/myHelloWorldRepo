local p_5g_rlc = Proto("5g_rlc", "5G RLC")

local f_control_pdu_header = ProtoField.new("Control PDU header", "5g_rlc.control_pdu.header", ftypes.UINT8, nil, base.HEX, 0xF0)
local f_data_pdu_header = ProtoField.new("Data PDU header", "5g_rlc.data_pdu.header", ftypes.UINT8, nil, base.HEX, 0xFC)
local f_dc_flag = ProtoField.new("D/C", "5g_rlc.dc", ftypes.UINT8, { [0] = "Control", [1] = "Data" }, base.DEC, 0x80)
local f_cpt = ProtoField.new("CPT", "5g_rlc.control_pdu.header.cpt", ftypes.UINT8, { [0] = "Status PDU" }, base.DEC, 0x70)
local f_status_ack_sn = ProtoField.new("AckSN", "5g_rlc.control_pdu.status.ack_sn", ftypes.UINT24, nil, base.DEC, 0xFFFFC)
local f_e1_starting_bit_0 = ProtoField.new("E1", "5g_rlc.control_pdu.status.e1", ftypes.BOOLEAN, nil, 8, 0x80)
local f_e1_starting_bit_1 = ProtoField.new("E1", "5g_rlc.control_pdu.status.e1", ftypes.BOOLEAN, nil, 8, 0x40)
local f_e1_starting_bit_2 = ProtoField.new("E1", "5g_rlc.control_pdu.status.e1", ftypes.BOOLEAN, nil, 8, 0x20)
local f_e1_starting_bit_3 = ProtoField.new("E1", "5g_rlc.control_pdu.status.e1", ftypes.BOOLEAN, nil, 8, 0x10)
local f_e1_starting_bit_4 = ProtoField.new("E1", "5g_rlc.control_pdu.status.e1", ftypes.BOOLEAN, nil, 8, 0x08)
local f_e1_starting_bit_5 = ProtoField.new("E1", "5g_rlc.control_pdu.status.e1", ftypes.BOOLEAN, nil, 8, 0x04)
local f_e1_starting_bit_6 = ProtoField.new("E1", "5g_rlc.control_pdu.status.e1", ftypes.BOOLEAN, nil, 8, 0x02)
local f_e1_starting_bit_7 = ProtoField.new("E1", "5g_rlc.control_pdu.status.e1", ftypes.BOOLEAN, nil, 8, 0x01)
local f_e2_starting_bit_0 = ProtoField.new("E2", "5g_rlc.control_pdu.status.e2", ftypes.BOOLEAN, nil, 8, 0x80)
local f_e2_starting_bit_1 = ProtoField.new("E2", "5g_rlc.control_pdu.status.e2", ftypes.BOOLEAN, nil, 8, 0x40)
local f_e2_starting_bit_2 = ProtoField.new("E2", "5g_rlc.control_pdu.status.e2", ftypes.BOOLEAN, nil, 8, 0x20)
local f_e2_starting_bit_3 = ProtoField.new("E2", "5g_rlc.control_pdu.status.e2", ftypes.BOOLEAN, nil, 8, 0x10)
local f_e2_starting_bit_4 = ProtoField.new("E2", "5g_rlc.control_pdu.status.e2", ftypes.BOOLEAN, nil, 8, 0x08)
local f_e2_starting_bit_5 = ProtoField.new("E2", "5g_rlc.control_pdu.status.e2", ftypes.BOOLEAN, nil, 8, 0x04)
local f_e2_starting_bit_6 = ProtoField.new("E2", "5g_rlc.control_pdu.status.e2", ftypes.BOOLEAN, nil, 8, 0x02)
local f_e2_starting_bit_7 = ProtoField.new("E2", "5g_rlc.control_pdu.status.e2", ftypes.BOOLEAN, nil, 8, 0x01)
local f_e3_starting_bit_0 = ProtoField.new("E3", "5g_rlc.control_pdu.status.e3", ftypes.BOOLEAN, nil, 8, 0x80)
local f_e3_starting_bit_1 = ProtoField.new("E3", "5g_rlc.control_pdu.status.e3", ftypes.BOOLEAN, nil, 8, 0x40)
local f_e3_starting_bit_2 = ProtoField.new("E3", "5g_rlc.control_pdu.status.e3", ftypes.BOOLEAN, nil, 8, 0x20)
local f_e3_starting_bit_3 = ProtoField.new("E3", "5g_rlc.control_pdu.status.e3", ftypes.BOOLEAN, nil, 8, 0x10)
local f_e3_starting_bit_4 = ProtoField.new("E3", "5g_rlc.control_pdu.status.e3", ftypes.BOOLEAN, nil, 8, 0x08)
local f_e3_starting_bit_5 = ProtoField.new("E3", "5g_rlc.control_pdu.status.e3", ftypes.BOOLEAN, nil, 8, 0x04)
local f_e3_starting_bit_6 = ProtoField.new("E3", "5g_rlc.control_pdu.status.e3", ftypes.BOOLEAN, nil, 8, 0x02)
local f_e3_starting_bit_7 = ProtoField.new("E3", "5g_rlc.control_pdu.status.e3", ftypes.BOOLEAN, nil, 8, 0x01)
local f_nack_sn_starting_bit_0 = ProtoField.new("Nack SN", "5g_rlc.control_pdu.status.nack_sn", ftypes.UINT24, nil, base.DEC, 0xFFFFC0)
local f_nack_sn_starting_bit_1 = ProtoField.new("Nack SN", "5g_rlc.control_pdu.status.nack_sn", ftypes.UINT24, nil, base.DEC, 0x7FFFE0)
local f_nack_sn_starting_bit_2 = ProtoField.new("Nack SN", "5g_rlc.control_pdu.status.nack_sn", ftypes.UINT24, nil, base.DEC, 0x3FFFF0)
local f_nack_sn_starting_bit_3 = ProtoField.new("Nack SN", "5g_rlc.control_pdu.status.nack_sn", ftypes.UINT24, nil, base.DEC, 0x1FFFF8)
local f_nack_sn_starting_bit_4 = ProtoField.new("Nack SN", "5g_rlc.control_pdu.status.nack_sn", ftypes.UINT24, nil, base.DEC, 0xFFFFC)
local f_nack_sn_starting_bit_5 = ProtoField.new("Nack SN", "5g_rlc.control_pdu.status.nack_sn", ftypes.UINT24, nil, base.DEC, 0x7FFFE)
local f_nack_sn_starting_bit_6 = ProtoField.new("Nack SN", "5g_rlc.control_pdu.status.nack_sn", ftypes.UINT24, nil, base.DEC, 0x3FFFF)
local f_nack_sn_starting_bit_7 = ProtoField.new("Nack SN", "5g_rlc.control_pdu.status.nack_sn", ftypes.UINT32, nil, base.DEC, 0x1FFFF80)
local f_so_start_starting_bit_0 = ProtoField.new("SO start", "5g_rlc.control_pdu.status.so_start", ftypes.UINT16, nil, base.DEC, 0xFFFF)
local f_so_start_starting_bit_1 = ProtoField.new("SO start", "5g_rlc.control_pdu.status.so_start", ftypes.UINT24, nil, base.DEC, 0x7FFF80)
local f_so_start_starting_bit_2 = ProtoField.new("SO start", "5g_rlc.control_pdu.status.so_start", ftypes.UINT24, nil, base.DEC, 0x3FFFC0)
local f_so_start_starting_bit_3 = ProtoField.new("SO start", "5g_rlc.control_pdu.status.so_start", ftypes.UINT24, nil, base.DEC, 0x1FFFE0)
local f_so_start_starting_bit_4 = ProtoField.new("SO start", "5g_rlc.control_pdu.status.so_start", ftypes.UINT24, nil, base.DEC, 0xFFFF0)
local f_so_start_starting_bit_5 = ProtoField.new("SO start", "5g_rlc.control_pdu.status.so_start", ftypes.UINT24, nil, base.DEC, 0x7FFF8)
local f_so_start_starting_bit_6 = ProtoField.new("SO start", "5g_rlc.control_pdu.status.so_start", ftypes.UINT24, nil, base.DEC, 0x3FFFC)
local f_so_start_starting_bit_7 = ProtoField.new("SO start", "5g_rlc.control_pdu.status.so_start", ftypes.UINT24, nil, base.DEC, 0x1FFFE)
local f_so_end_starting_bit_0 = ProtoField.new("SO end", "5g_rlc.control_pdu.status.so_end", ftypes.UINT16, nil, base.DEC, 0xFFFF)
local f_so_end_starting_bit_1 = ProtoField.new("SO end", "5g_rlc.control_pdu.status.so_end", ftypes.UINT24, nil, base.DEC, 0x7FFF80)
local f_so_end_starting_bit_2 = ProtoField.new("SO end", "5g_rlc.control_pdu.status.so_end", ftypes.UINT24, nil, base.DEC, 0x3FFFC0)
local f_so_end_starting_bit_3 = ProtoField.new("SO end", "5g_rlc.control_pdu.status.so_end", ftypes.UINT24, nil, base.DEC, 0x1FFFE0)
local f_so_end_starting_bit_4 = ProtoField.new("SO end", "5g_rlc.control_pdu.status.so_end", ftypes.UINT24, nil, base.DEC, 0xFFFF0)
local f_so_end_starting_bit_5 = ProtoField.new("SO end", "5g_rlc.control_pdu.status.so_end", ftypes.UINT24, nil, base.DEC, 0x7FFF8)
local f_so_end_starting_bit_6 = ProtoField.new("SO end", "5g_rlc.control_pdu.status.so_end", ftypes.UINT24, nil, base.DEC, 0x3FFFC)
local f_so_end_starting_bit_7 = ProtoField.new("SO end", "5g_rlc.control_pdu.status.so_end", ftypes.UINT24, nil, base.DEC, 0x1FFFE)
local f_nack_length_starting_bit_0 = ProtoField.new("Nack length", "5g_rlc.control_pdu.status.nack_length", ftypes.UINT8, nil, base.DEC, 0xFF)
local f_nack_length_starting_bit_1 = ProtoField.new("Nack length", "5g_rlc.control_pdu.status.nack_length", ftypes.UINT16, nil, base.DEC, 0x7F80)
local f_nack_length_starting_bit_2 = ProtoField.new("Nack length", "5g_rlc.control_pdu.status.nack_length", ftypes.UINT16, nil, base.DEC, 0x3FC0)
local f_nack_length_starting_bit_3 = ProtoField.new("Nack length", "5g_rlc.control_pdu.status.nack_length", ftypes.UINT16, nil, base.DEC, 0x1FE0)
local f_nack_length_starting_bit_4 = ProtoField.new("Nack length", "5g_rlc.control_pdu.status.nack_length", ftypes.UINT16, nil, base.DEC, 0xFF0)
local f_nack_length_starting_bit_5 = ProtoField.new("Nack length", "5g_rlc.control_pdu.status.nack_length", ftypes.UINT16, nil, base.DEC, 0x7F8)
local f_nack_length_starting_bit_6 = ProtoField.new("Nack length", "5g_rlc.control_pdu.status.nack_length", ftypes.UINT16, nil, base.DEC, 0x3FC)
local f_nack_length_starting_bit_7 = ProtoField.new("Nack length", "5g_rlc.control_pdu.status.nack_length", ftypes.UINT16, nil, base.DEC, 0x1FE)
local f_segment_flag = ProtoField.new("Segmented", "5g_rlc.data_pdu.header.segmentation", ftypes.BOOLEAN, { "Yes", "No" }, 8, 0x40)
local f_polling_bit_flag = ProtoField.new("Polling", "5g_rlc.data_pdu.header.polling", ftypes.BOOLEAN, { "Yes", "No" }, 8, 0x20)
local f_lsf = ProtoField.new("LSF", "5g_rlc.data_pdu.header.lsf", ftypes.BOOLEAN, { "Last segment of PDU", "Not last segment of PDU" }, 8, 0x04)
local f_sn = ProtoField.new("SN", "5g_rlc.data_pdu.sn", ftypes.UINT24, nil, base.DEC, 0x3FFFF)
local f_so = ProtoField.new("SO", "5g_rlc.data_pdu.so", ftypes.UINT16)

local f_e1s = {
	[0] = f_e1_starting_bit_0,
	f_e1_starting_bit_1,
	f_e1_starting_bit_2,
	f_e1_starting_bit_3,
	f_e1_starting_bit_4,
	f_e1_starting_bit_5,
	f_e1_starting_bit_6,
	f_e1_starting_bit_7
}
local f_e2s = {
	[0] = f_e2_starting_bit_0,
	f_e2_starting_bit_1,
	f_e2_starting_bit_2,
	f_e2_starting_bit_3,
	f_e2_starting_bit_4,
	f_e2_starting_bit_5,
	f_e2_starting_bit_6,
	f_e2_starting_bit_7
}
local f_e3s = {
	[0] = f_e3_starting_bit_0,
	f_e3_starting_bit_1,
	f_e3_starting_bit_2,
	f_e3_starting_bit_3,
	f_e3_starting_bit_4,
	f_e3_starting_bit_5,
	f_e3_starting_bit_6,
	f_e3_starting_bit_7
}
local f_nack_sns = {
	[0] = f_nack_sn_starting_bit_0,
	f_nack_sn_starting_bit_1,
	f_nack_sn_starting_bit_2,
	f_nack_sn_starting_bit_3,
	f_nack_sn_starting_bit_4,
	f_nack_sn_starting_bit_5,
	f_nack_sn_starting_bit_6,
	f_nack_sn_starting_bit_7
}
local f_so_starts = {
	[0] = f_so_start_starting_bit_0,
	f_so_start_starting_bit_1,
	f_so_start_starting_bit_2,
	f_so_start_starting_bit_3,
	f_so_start_starting_bit_4,
	f_so_start_starting_bit_5,
	f_so_start_starting_bit_6,
	f_so_start_starting_bit_7,
}
local f_so_ends = {
	[0] = f_so_end_starting_bit_0,
	f_so_end_starting_bit_1,
	f_so_end_starting_bit_2,
	f_so_end_starting_bit_3,
	f_so_end_starting_bit_4,
	f_so_end_starting_bit_5,
	f_so_end_starting_bit_6,
	f_so_end_starting_bit_7,
}
local f_nack_lengths = {
	[0] = f_nack_length_starting_bit_0,
	f_nack_length_starting_bit_1,
	f_nack_length_starting_bit_2,
	f_nack_length_starting_bit_3,
	f_nack_length_starting_bit_4,
	f_nack_length_starting_bit_5,
	f_nack_length_starting_bit_6,
	f_nack_length_starting_bit_7,
}

p_5g_rlc.fields = {
	f_control_pdu_header, f_data_pdu_header,
	f_dc_flag,
	f_cpt,
	f_status_ack_sn,
	f_e1_starting_bit_0, f_e1_starting_bit_1, f_e1_starting_bit_2, f_e1_starting_bit_3,
	f_e1_starting_bit_4, f_e1_starting_bit_5, f_e1_starting_bit_6, f_e1_starting_bit_7,
	f_e2_starting_bit_0, f_e2_starting_bit_1, f_e2_starting_bit_2, f_e2_starting_bit_3,
	f_e2_starting_bit_4, f_e2_starting_bit_5, f_e2_starting_bit_6, f_e2_starting_bit_7,
	f_e3_starting_bit_0, f_e3_starting_bit_1, f_e3_starting_bit_2, f_e3_starting_bit_3,
	f_e3_starting_bit_4, f_e3_starting_bit_5, f_e3_starting_bit_6, f_e3_starting_bit_7,
	f_nack_sn_starting_bit_0, f_nack_sn_starting_bit_1, f_nack_sn_starting_bit_2, f_nack_sn_starting_bit_3,
	f_nack_sn_starting_bit_4, f_nack_sn_starting_bit_5, f_nack_sn_starting_bit_6, f_nack_sn_starting_bit_7,
	f_so_start_starting_bit_0, f_so_start_starting_bit_1, f_so_start_starting_bit_2, f_so_start_starting_bit_3,
	f_so_start_starting_bit_4, f_so_start_starting_bit_5, f_so_start_starting_bit_6, f_so_start_starting_bit_7,
	f_so_end_starting_bit_0, f_so_end_starting_bit_1, f_so_end_starting_bit_2, f_so_end_starting_bit_3,
	f_so_end_starting_bit_4, f_so_end_starting_bit_5, f_so_end_starting_bit_6, f_so_end_starting_bit_7,
	f_nack_length_starting_bit_0, f_nack_length_starting_bit_1, f_nack_length_starting_bit_2, f_nack_length_starting_bit_3,
	f_nack_length_starting_bit_4, f_nack_length_starting_bit_5, f_nack_length_starting_bit_6, f_nack_length_starting_bit_7,
	f_segment_flag, f_polling_bit_flag, f_lsf,
	f_sn, f_so
}

function is_data_pdu(pdu_buf)
	return pdu_buf(0, 1):bitfield(0) == 1
end

function is_pdu_segment(pdu_buf)
	return pdu_buf(0, 1):bitfield(1) == 1
end

function is_first_e1_set(pdu_buf)
	return pdu_buf(2, 1):bitfield(6) == 1
end 

function is_bit_set(pdu_buf, position_byte, position_bit)
	return pdu_buf(position_byte, 1):bitfield(position_bit) == 1
end

function get_nack_sn_proto_field(nack_sn_position_bit)
	return ProtoField.new("NackSN", "5g_rlc.control_pdu.status.nack_sn", ftypes.UINT24, nil, base.DEC, get_nack_sn_mask(nack_sn_position_bit))
end

function get_nack_sn_mask(nack_sn_position_bit)
	if nack_sn_position_bit > 6 then
		return 0x1FFFF80
	else
		return bit.lshift(0x3FFFF, 6 - nack_sn_position_bit)
	end
end

function calculate_nack_sn_bytes_length(nack_sn_starting_bit)
	if nack_sn_starting_bit > 6 then
		return 4
	else
		return 3
	end
end

function calculate_so_bytes_length(so_starting_bit)
	if so_starting_bit == 0 then
		return 2
	else
		return 3
	end
end

function calculate_nack_length_bytes_length(so_starting_bit)
	if so_starting_bit == 0 then
		return 1
	else
		return 2
	end
end

function move_position_by_bits(position_byte, position_bit, n_bits)
	position_bit = position_bit + n_bits
	while position_bit > 7 do
		position_byte = position_byte + 1
		position_bit = position_bit - 8
	end
	return position_byte, position_bit
end

function add_status_pdu_extension_fields(status_pdu_buf, rlc_tree, starting_byte, starting_bit)
	local position_byte = starting_byte
	local position_bit = starting_bit
	local e1_set = true
	while e1_set do
		rlc_tree:add(f_nack_sns[position_bit], status_pdu_buf(position_byte, calculate_nack_sn_bytes_length(position_bit)))
		position_byte, position_bit = move_position_by_bits(position_byte, position_bit, 18)
		rlc_tree:add(f_e1s[position_bit], status_pdu_buf(position_byte, 1))
		e1_set = is_bit_set(status_pdu_buf, position_byte, position_bit)
		position_byte, position_bit = move_position_by_bits(position_byte, position_bit, 1)
		rlc_tree:add(f_e2s[position_bit], status_pdu_buf(position_byte, 1))
		local e2_set = is_bit_set(status_pdu_buf, position_byte, position_bit)
		position_byte, position_bit = move_position_by_bits(position_byte, position_bit, 1)
		rlc_tree:add(f_e3s[position_bit], status_pdu_buf(position_byte, 1))
		local e3_set = is_bit_set(status_pdu_buf, position_byte, position_bit)
		position_byte, position_bit = move_position_by_bits(position_byte, position_bit, 1)
		if e2_set then
			rlc_tree:add(f_so_starts[position_bit], status_pdu_buf(position_byte, calculate_so_bytes_length(position_bit)))
			position_byte, position_bit = move_position_by_bits(position_byte, position_bit, 16)
			rlc_tree:add(f_so_ends[position_bit], status_pdu_buf(position_byte, calculate_so_bytes_length(position_bit)))
			position_byte, position_bit = move_position_by_bits(position_byte, position_bit, 16)
		end
		if e3_set then
			rlc_tree:add(f_nack_lengths[position_bit], status_pdu_buf(position_byte, calculate_nack_length_bytes_length(position_bit)))
			position_byte, position_bit = move_position_by_bits(position_byte, position_bit, 8)
		end
	end
end

function p_5g_rlc.dissector(buf, pkt, tree)
	local rlc_tree = tree:add(p_5g_rlc)
	if is_data_pdu(buf) then
		local data_pdu_header_tree = rlc_tree:add(f_data_pdu_header, buf(0, 1))
		data_pdu_header_tree:add(f_dc_flag, buf(0, 1))
		data_pdu_header_tree:add(f_segment_flag, buf(0, 1))
		data_pdu_header_tree:add(f_polling_bit_flag, buf(0, 1))
		data_pdu_header_tree:add(f_lsf, buf(0, 1))
		rlc_tree:add(f_sn, buf(0, 3))
		local rlc_end_offset
		if is_pdu_segment(buf) then
			rlc_tree:append_text(" Data PDU segment")
			rlc_tree:add(f_so, buf(3, 2))
			rlc_end_offset = 5
		else
			rlc_tree:append_text(" Data PDU")
			rlc_end_offset = 3
		end
		rlc_tree:set_len(rlc_end_offset)
		local data_len = buf:len() - rlc_end_offset
		if data_len == 0 then
			return -1
		else
			local pdcp_data_offset = Dissector.get("5g_pdcp"):call(buf(rlc_end_offset):tvb(), pkt, tree)
			if pdcp_data_offset >= 0 then
				return rlc_end_offset + pdcp_data_offset
			else
				return -1
			end
		end
	else
		rlc_tree:append_text(" Control PDU")
		local control_pdu_header_tree = rlc_tree:add(f_control_pdu_header, buf(0, 1))
		control_pdu_header_tree:add(f_dc_flag, buf(0, 1))
		control_pdu_header_tree:add(f_cpt, buf(0, 1))
		rlc_tree:add(f_status_ack_sn, buf(0, 3))
		rlc_tree:add(f_e1_starting_bit_6, buf(2, 1))
		if is_first_e1_set(buf) then
			add_status_pdu_extension_fields(buf, rlc_tree, 2, 7)
		end
		rlc_tree:set_len(buf:len())
		return -1
	end
end
