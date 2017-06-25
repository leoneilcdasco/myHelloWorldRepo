local p_5g_dl_mac = Proto("5g_dl_mac", "5G DL MAC")
local p_5g_ul_mac = Proto("5g_ul_mac", "5G UL MAC")

local f_dl_mac_header = ProtoField.none("5g_dl_mac.header", "Header")
local f_dl_mac_subheader = ProtoField.none("5g_dl_mac.header.subheader", "Subheader")
local f_dl_next_subheader_exists = ProtoField.new("Next subheader exists", "5g_dl_mac.header.next_subheader_exists", ftypes.BOOLEAN, nil, 8, 0x20)
local f_dl_lcid = ProtoField.new("LCID", "5g_dl_mac.header.lcid", ftypes.UINT8, nil, base.DEC, 0x1F)
local f_dl_length = ProtoField.new("Length", "5g_dl_mac.header.length", ftypes.UINT16)
local f_dl_mac_payload = ProtoField.none("5g_dl_mac.payload", "Payload")
local f_dl_mac_element = ProtoField.none("5g_dl_mac.payload.element", "Element")
local f_dl_bi = ProtoField.new("Beam index", "5g_dl_mac.payload.bi", ftypes.UINT16, nil, base.DEC, 0xFF80)
local f_dl_brrs_ri = ProtoField.new("Beam index", "5g_dl_mac.payload.brrs_ri", ftypes.UINT8, nil, base.DEC, 0xE0)
local f_dl_brrs_proc_id = ProtoField.new("BRRS process index", "5g_dl_mac.payload.brrs_proc_id", ftypes.UINT8, nil, base.DEC, 0x18)
local f_dl_ta = ProtoField.new("TA", "5g_dl_mac.payload.ta", ftypes.UINT8, nil, base.DEC, 0x3F)
local f_ul_mac_header = ProtoField.none("5g_ul_mac.header", "Header")
local f_ul_mac_subheader = ProtoField.none("5g_ul_mac.header.subheader", "Subheader")
local f_ul_next_subheader_exists = ProtoField.new("Next subheader exists", "5g_ul_mac.header.next_subheader_exists", ftypes.BOOLEAN, nil, 8, 0x20)
local f_ul_lcid = ProtoField.new("LCID", "5g_ul_mac.header.lcid", ftypes.UINT8, nil, base.DEC, 0x1F)
local f_ul_length = ProtoField.new("Length", "5g_ul_mac.header.length", ftypes.UINT16)
local f_ul_mac_payload = ProtoField.none("5g_ul_mac.payload", "Payload")
local f_ul_mac_element = ProtoField.none("5g_ul_mac.payload.element", "Element")
local f_ul_pcell = ProtoField.new("PCell", "5g_ul_mac.payload.pcell", ftypes.BOOLEAN, nil, 8, 0x01)
local f_ul_scell1 = ProtoField.new("SCell 1", "5g_ul_mac.payload.scell1", ftypes.BOOLEAN, nil, 8, 0x02)
local f_ul_scell2 = ProtoField.new("SCell 2", "5g_ul_mac.payload.scell2", ftypes.BOOLEAN, nil, 8, 0x04)
local f_ul_scell3 = ProtoField.new("SCell 3", "5g_ul_mac.payload.scell3", ftypes.BOOLEAN, nil, 8, 0x08)
local f_ul_scell4 = ProtoField.new("SCell 4", "5g_ul_mac.payload.scell4", ftypes.BOOLEAN, nil, 8, 0x10)
local f_ul_scell5 = ProtoField.new("SCell 5", "5g_ul_mac.payload.scell5", ftypes.BOOLEAN, nil, 8, 0x20)
local f_ul_scell6 = ProtoField.new("SCell 6", "5g_ul_mac.payload.scell6", ftypes.BOOLEAN, nil, 8, 0x40)
local f_ul_scell7 = ProtoField.new("SCell 7", "5g_ul_mac.payload.scell7", ftypes.BOOLEAN, nil, 8, 0x80)
local f_ul_bi = ProtoField.new("Beam index", "5g_ul_mac.payload.bi", ftypes.UINT16, nil, base.DEC, 0xFF80)
local f_ul_brsrp = ProtoField.new("Beam reference signal received power", "5g_ul_mac.payload.brsrp", ftypes.UINT8, nil, base.DEC, 0x7F)
local f_ul_ph = ProtoField.new("Power headroom", "5g_ul_mac.payload.ph", ftypes.UINT8, nil, base.DEC, 0x3F)
local f_ul_crnti = ProtoField.new("C-RNTI", "5g_ul_mac.payload.crnti", ftypes.UINT16)
local f_ul_bs_lcg0 = ProtoField.new("Buffer Size LCG 0", "5g_ul_mac.payload.bs_lcg0", ftypes.UINT8, nil, base.DEC, 0x3F)
local f_ul_bs_lcg1 = ProtoField.new("Buffer Size LCG 1", "5g_ul_mac.payload.bs_lcg1", ftypes.UINT8, nil, base.DEC, 0x3F)
local f_ul_bs_lcg2 = ProtoField.new("Buffer Size LCG 2", "5g_ul_mac.payload.bs_lcg2", ftypes.UINT8, nil, base.DEC, 0x3F)
local f_ul_bs_lcg3 = ProtoField.new("Buffer Size LCG 3", "5g_ul_mac.payload.bs_lcg3", ftypes.UINT8, nil, base.DEC, 0x3F)

p_5g_dl_mac.fields = { 
    f_dl_bi,
    f_dl_brrs_ri,
    f_dl_brrs_proc_id,
    f_dl_ta
}
p_5g_dl_mac.fields.mac_header = f_dl_mac_header
p_5g_dl_mac.fields.mac_subheader = f_dl_mac_subheader
p_5g_dl_mac.fields.next_subheader_exists = f_dl_next_subheader_exists
p_5g_dl_mac.fields.lcid = f_dl_lcid
p_5g_dl_mac.fields.length = f_dl_length
p_5g_dl_mac.fields.mac_payload = f_dl_mac_payload
p_5g_dl_mac.fields.mac_element = f_dl_mac_element

p_5g_ul_mac.fields = {
	f_ul_pcell,
	f_ul_scell1,
	f_ul_scell2,
	f_ul_scell3,
	f_ul_scell4,
	f_ul_scell5,
	f_ul_scell6,
	f_ul_scell7,
	f_ul_bi,
	f_ul_brsrp,
	f_ul_ph,
	f_ul_crnti,
	f_ul_bs_lcg0,
	f_ul_bs_lcg1,
	f_ul_bs_lcg2,
	f_ul_bs_lcg3
}
p_5g_ul_mac.fields.mac_header = f_ul_mac_header
p_5g_ul_mac.fields.mac_subheader = f_ul_mac_subheader
p_5g_ul_mac.fields.next_subheader_exists = f_ul_next_subheader_exists
p_5g_ul_mac.fields.lcid = f_ul_lcid
p_5g_ul_mac.fields.length = f_ul_length
p_5g_ul_mac.fields.mac_payload = f_ul_mac_payload
p_5g_ul_mac.fields.mac_element = f_ul_mac_element

function does_next_subheader_exists(pdu_buf, position)
    return pdu_buf(position, 1):bitfield(2) == 1
end

function get_lcid(pdu_buf, position)
    return pdu_buf(position, 1):bitfield(3, 5)
end

function get_length(pdu_buf, position)
    return pdu_buf(position, 2):uint()
end

function dissect_dl_subheader(mac_pdu_buf, position, mac_subheader_tree, subheader, mac_descriptor)
    if subheader.lcid == 0 then
        mac_subheader_tree:add(mac_descriptor.fields.length, mac_pdu_buf(position, 2))
        subheader.element_length = get_length(mac_pdu_buf, position)
        position = position + 2
        subheader.name = "xCCCH, length " .. subheader.element_length .. " bytes"
    elseif subheader.lcid >= 1 and subheader.lcid <= 10 then
        mac_subheader_tree:add(mac_descriptor.fields.length, mac_pdu_buf(position, 2))
        subheader.element_length = get_length(mac_pdu_buf, position)
        position = position + 2
        subheader.name = "Identity of logical channel, LC ID " .. subheader.lcid .. ", " .. subheader.element_length .. " bytes"
    elseif subheader.lcid == 11 then
        subheader.element_length = 2
        subheader.name = "BRS Beam Change Indication"
    elseif subheader.lcid == 12 then
        subheader.element_length = 1
        subheader.name = "BRRS Beam Change Indication"
    elseif subheader.lcid == 28 then
        subheader.element_length = 6
        subheader.name = "UE Contention Resolution Identity"
    elseif subheader.lcid == 29 then
        subheader.element_length = 1
        subheader.name = "Timing Advance Command"
    elseif subheader.lcid == 31 then
        subheader.element_length = 0
        subheader.name = "Padding"
    else
        subheader.element_length = 0
        subheader.name = "Reserved"
    end
    return position
end

function dissect_ul_subheader(mac_pdu_buf, position, mac_subheader_tree, subheader, mac_descriptor)
    if subheader.lcid == 0 then
        mac_subheader_tree:add(mac_descriptor.fields.length, mac_pdu_buf(position, 2))
        subheader.element_length = get_length(mac_pdu_buf, position)
        position = position + 2
        subheader.name = "xCCCH, length " .. subheader.element_length .. " bytes"
    elseif subheader.lcid >= 1 and subheader.lcid <= 10 then
        mac_subheader_tree:add(mac_descriptor.fields.length, mac_pdu_buf(position, 2))
        subheader.element_length = get_length(mac_pdu_buf, position)
        position = position + 2
        subheader.name = "Identity of logical channel, LC ID " .. subheader.lcid .. ", " .. subheader.element_length .. " bytes"
    elseif subheader.lcid == 12 then
        subheader.element_length = 1
        subheader.name = "Beam Adjustment Request"
    elseif subheader.lcid == 13 then
        subheader.element_length = 8
        subheader.name = "BSI Feedback"
    elseif subheader.lcid == 26 then
        subheader.element_length = 1
        subheader.name = "Power Headroom Report"
    elseif subheader.lcid == 27 then
        subheader.element_length = 2
        subheader.name = "C-RNTI"
    elseif subheader.lcid == 29 then
        subheader.element_length = 4
        subheader.name = "Buffer Status Report"
    elseif subheader.lcid == 31 then
        subheader.element_length = 0
        subheader.name = "Padding"
    else
        subheader.element_length = 0
        subheader.name = "Reserved"
    end
    return position
end

function dissect_subheader(mac_pdu_buf, position, mac_header_tree, mac_descriptor)
    local subheader_start_position = position
    local mac_subheader_tree = mac_header_tree:add(mac_descriptor.fields.mac_subheader, mac_pdu_buf(position))
    mac_subheader_tree:add(mac_descriptor.fields.next_subheader_exists, mac_pdu_buf(position, 1))
    mac_subheader_tree:add(mac_descriptor.fields.lcid, mac_pdu_buf(position, 1))
    local subheader = { }
    subheader.next_subheader_exists = does_next_subheader_exists(mac_pdu_buf, position)
    subheader.lcid = get_lcid(mac_pdu_buf, position)
    position = position + 1
    position = mac_descriptor.subheader_dissector(mac_pdu_buf, position, mac_subheader_tree, subheader, mac_descriptor)
    mac_subheader_tree:append_text(" - " .. subheader.name)
    local subheader_length = position - subheader_start_position
    mac_subheader_tree:set_len(subheader_length)
    return subheader, position
end

function dissect_header(mac_pdu_buf, mac_tree, mac_descriptor)
    local mac_header_tree = mac_tree:add(mac_descriptor.fields.mac_header)
    local subheaders = {}
    local position = 0
    local subheaders_number = 0
    repeat 
        subheader, position = dissect_subheader(mac_pdu_buf, position, mac_header_tree, mac_descriptor)
        table.insert(subheaders, subheader)
        subheaders_number = subheaders_number + 1
    until position >= mac_pdu_buf:len() or not subheader.next_subheader_exists
    mac_header_tree:set_len(position)
    mac_header_tree:append_text(", " .. subheaders_number .. " subheader(s)" )
    return subheaders, position
end

function add_data_tree(buf, position, tree, data_length)
    local data_tree = tree:add(buf(position), "Data (" .. data_length .. " bytes)")
    local MAX_DISPLAYED_BYTES = 20
    local data_dump_tree = data_tree:add(buf(position), "Data: " .. tostring(buf(position, math.min(data_length, MAX_DISPLAYED_BYTES)):bytes()))
    if data_length > MAX_DISPLAYED_BYTES then
        data_dump_tree:append_text("...")
    end
    data_tree:add("[Length: " .. data_length .. "]")
end

function dissect_dl_element(mac_pdu_buf, position, mac_element_tree, subheader, mac_descriptor, pkt)
    if subheader.lcid == 0 then
		local rrc_dissector = Dissector.get("v5gra.dl_xccch")
		if rrc_dissector == nil then
			add_data_tree(mac_pdu_buf, position, mac_element_tree, subheader.element_length)
		else
			rrc_dissector:call(mac_pdu_buf(position, subheader.element_length):tvb(), pkt, mac_element_tree)
		end
    elseif subheader.lcid >= 1 and subheader.lcid <= 10 then
		if subheader.lcid == 1 or subheader.lcid == 2 then
			local pdcp_data_offset = Dissector.get("5g_rlc"):call(mac_pdu_buf(position, subheader.element_length):tvb(), pkt, mac_element_tree)
			if pdcp_data_offset >= 0 then
				Dissector.get("v5gra.dl_xdcch"):call(mac_pdu_buf(position + pdcp_data_offset):tvb(), pkt, mac_element_tree)
			end
		end
    elseif subheader.lcid == 11 then
        mac_element_tree:add(f_dl_bi, mac_pdu_buf(position, 2))
        mac_element_tree:append_text(", beam index " .. mac_pdu_buf(position, 2):bitfield(0, 9))
    elseif subheader.lcid == 12 then
        mac_element_tree:add(f_dl_brrs_ri, mac_pdu_buf(position, 1))
        mac_element_tree:add(f_dl_brrs_proc_id, mac_pdu_buf(position, 1))
        mac_element_tree:append_text(
            ", beam index " .. mac_pdu_buf(position, 1):bitfield(0, 3) .. 
            ", BRRS process index " .. mac_pdu_buf(position, 1):bitfield(3, 2))
    elseif subheader.lcid == 28 then
		local rrc_dissector = Dissector.get("v5gra.ul_xccch")
		if rrc_dissector == nil then
			add_data_tree(mac_pdu_buf, position, mac_element_tree, subheader.element_length)
		else
			rrc_dissector:call(mac_pdu_buf(position, subheader.element_length):tvb(), pkt, mac_element_tree)
		end
    elseif subheader.lcid == 29 then
        mac_element_tree:add(f_dl_ta, mac_pdu_buf(position, 1))
        mac_element_tree:append_text(", TA " .. mac_pdu_buf(position, 1):bitfield(2, 6))
    elseif subheader.lcid == 31 then
        if not subheader.next_subheader_exists then
            subheader.element_length = mac_pdu_buf:len() - position
            mac_element_tree:set_len(subheader.element_length)
            mac_element_tree:append_text(", " .. subheader.element_length .. " bytes")
        end
    end
    position = position + subheader.element_length
    return position
end

function single_bsi_to_string(mac_pdu_buf, position)
    return "Beam " .. mac_pdu_buf(position, 2):bitfield(0, 9) ..
		" BRS RX power " .. mac_pdu_buf(position + 1, 1):bitfield(1, 7)
end

function dissect_ul_element(mac_pdu_buf, position, mac_element_tree, subheader, mac_descriptor, pkt)
    if subheader.lcid == 0 then
		local rrc_dissector = Dissector.get("v5gra.ul_xccch")
		if rrc_dissector == nil then
			add_data_tree(mac_pdu_buf, position, mac_element_tree, subheader.element_length)
		else
			rrc_dissector:call(mac_pdu_buf(position, subheader.element_length):tvb(), pkt, mac_element_tree)
		end
    elseif subheader.lcid >= 1 and subheader.lcid <= 10 then
		if subheader.lcid == 1 or subheader.lcid == 2 then
			local pdcp_data_offset = Dissector.get("5g_rlc"):call(mac_pdu_buf(position, subheader.element_length):tvb(), pkt, mac_element_tree)
			if pdcp_data_offset >= 0 then
				Dissector.get("v5gra.ul_xdcch"):call(mac_pdu_buf(position + pdcp_data_offset):tvb(), pkt, mac_element_tree)
			end
		end
	elseif subheader.lcid == 12 then
        mac_element_tree:add(f_ul_pcell, mac_pdu_buf(position, 1))
        mac_element_tree:add(f_ul_scell1, mac_pdu_buf(position, 1))
        mac_element_tree:add(f_ul_scell2, mac_pdu_buf(position, 1))
        mac_element_tree:add(f_ul_scell3, mac_pdu_buf(position, 1))
        mac_element_tree:add(f_ul_scell4, mac_pdu_buf(position, 1))
        mac_element_tree:add(f_ul_scell5, mac_pdu_buf(position, 1))
        mac_element_tree:add(f_ul_scell6, mac_pdu_buf(position, 1))
        mac_element_tree:add(f_ul_scell7, mac_pdu_buf(position, 1))
		if mac_pdu_buf(position, 1):bitfield(7) == 1 then
			mac_element_tree:append_text(", PCell")
		end
		if mac_pdu_buf(position, 1):bitfield(6) == 1 then
			mac_element_tree:append_text(", SCell 1")
		end
		if mac_pdu_buf(position, 1):bitfield(5) == 1 then
			mac_element_tree:append_text(", SCell 2")
		end
		if mac_pdu_buf(position, 1):bitfield(4) == 1 then
			mac_element_tree:append_text(", SCell 3")
		end
		if mac_pdu_buf(position, 1):bitfield(3) == 1 then
			mac_element_tree:append_text(", SCell 4")
		end
		if mac_pdu_buf(position, 1):bitfield(2) == 1 then
			mac_element_tree:append_text(", SCell 5")
		end
		if mac_pdu_buf(position, 1):bitfield(1) == 1 then
			mac_element_tree:append_text(", SCell 6")
		end
		if mac_pdu_buf(position, 1):bitfield(0) == 1 then
			mac_element_tree:append_text(", SCell 7")
		end
	elseif subheader.lcid == 13 then
        mac_element_tree:add(f_ul_bi, mac_pdu_buf(position, 2))
        mac_element_tree:add(f_ul_brsrp, mac_pdu_buf(position + 1, 1))
        mac_element_tree:add(f_ul_bi, mac_pdu_buf(position + 2, 2))
        mac_element_tree:add(f_ul_brsrp, mac_pdu_buf(position + 3, 1))
        mac_element_tree:add(f_ul_bi, mac_pdu_buf(position + 4, 2))
        mac_element_tree:add(f_ul_brsrp, mac_pdu_buf(position + 5, 1))
        mac_element_tree:add(f_ul_bi, mac_pdu_buf(position + 6, 2))
        mac_element_tree:add(f_ul_brsrp, mac_pdu_buf(position + 7, 1))
        mac_element_tree:append_text(
			", " .. single_bsi_to_string(mac_pdu_buf, position) ..
			", " .. single_bsi_to_string(mac_pdu_buf, position + 2) ..
			", " .. single_bsi_to_string(mac_pdu_buf, position + 4) ..
			", " .. single_bsi_to_string(mac_pdu_buf, position + 6))
	elseif subheader.lcid == 26 then
        mac_element_tree:add(f_ul_ph, mac_pdu_buf(position, 1))
        mac_element_tree:append_text(", PH " .. mac_pdu_buf(position, 1):bitfield(2, 6))
	elseif subheader.lcid == 27 then
        mac_element_tree:add(f_ul_crnti, mac_pdu_buf(position, 2))
		mac_element_tree:append_text(" " .. mac_pdu_buf(position, 2):uint())
	elseif subheader.lcid == 29 then
        mac_element_tree:add(f_ul_bs_lcg0, mac_pdu_buf(position, 1))
        mac_element_tree:add(f_ul_bs_lcg1, mac_pdu_buf(position + 1, 1))
        mac_element_tree:add(f_ul_bs_lcg2, mac_pdu_buf(position + 2, 1))
        mac_element_tree:add(f_ul_bs_lcg3, mac_pdu_buf(position + 3, 1))
		mac_element_tree:append_text(
			", LCG 0: " .. mac_pdu_buf(position, 1):bitfield(2, 6) ..
			", LCG 1: " .. mac_pdu_buf(position + 1, 1):bitfield(2, 6) ..
			", LCG 2: " .. mac_pdu_buf(position + 2, 1):bitfield(2, 6) ..
			", LCG 3: " .. mac_pdu_buf(position + 3, 1):bitfield(2, 6))
	elseif subheader.lcid == 31 then
        if not subheader.next_subheader_exists then
            subheader.element_length = mac_pdu_buf:len() - position
            mac_element_tree:set_len(subheader.element_length)
            mac_element_tree:append_text(", " .. subheader.element_length .. " bytes")
        end
    end
    position = position + subheader.element_length
    return position
end

function dissect_element(mac_pdu_buf, position, mac_payload_tree, subheader, mac_descriptor, pkt)
    local mac_element_tree = mac_payload_tree:add(mac_descriptor.fields.mac_element, mac_pdu_buf(position))
    if position + subheader.element_length > mac_pdu_buf:len() then
        mac_element_tree:append_text(" - Malformed")
        mac_element_tree:add_expert_info(PI_MALFORMED, PI_ERROR, "Required length is " .. subheader.element_length)
        return position, false
    end
    mac_element_tree:set_len(subheader.element_length)
    mac_element_tree:set_text(subheader.name)
    position = mac_descriptor.element_dissector(mac_pdu_buf, position, mac_element_tree, subheader, mac_descriptor, pkt)
    return position, true
end

function dissect_payload(mac_pdu_buf, position, mac_tree, subheaders, mac_descriptor, pkt)
    local mac_payload_tree = mac_tree:add(mac_descriptor.fields.mac_payload, mac_pdu_buf(position))
    for _, subheader in ipairs(subheaders) do
        position, dissection_successful = dissect_element(mac_pdu_buf, position, mac_payload_tree, subheader, mac_descriptor, pkt)
        if not dissection_successful then
            return
        end
    end
end

local dl_mac_descriptor = {
    fields = p_5g_dl_mac.fields,
    subheader_dissector = dissect_dl_subheader,
    element_dissector = dissect_dl_element
}

local ul_mac_descriptor = { 
    fields = p_5g_ul_mac.fields,
    subheader_dissector = dissect_ul_subheader,
    element_dissector = dissect_ul_element
}

function p_5g_dl_mac.dissector(buf, pkt, tree)
    local mac_tree = tree:add(p_5g_dl_mac, buf(0))
    subheaders, position = dissect_header(buf, mac_tree, dl_mac_descriptor)
    dissect_payload(buf, position, mac_tree, subheaders, dl_mac_descriptor, pkt)
end

function p_5g_ul_mac.dissector(buf, pkt, tree)
    local mac_tree = tree:add(p_5g_ul_mac, buf(0))
    subheaders, position = dissect_header(buf, mac_tree, ul_mac_descriptor)
    dissect_payload(buf, position, mac_tree, subheaders, ul_mac_descriptor, pkt)
end
