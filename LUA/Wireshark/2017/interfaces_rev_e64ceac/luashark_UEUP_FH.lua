--[[

  L1-L2 interface wireshark lua dissector script

  Wireshark Lua API:
    https://wiki.wireshark.org/Lua
    https://wiki.wireshark.org/LuaAPI

  Wireshark Developer’s Guide:
    https://www.wireshark.org/docs/wsdg_html_chunked/PartDevelopment.html
    https://www.wireshark.org/docs/wsdg_html_chunked/wsluarm_modules.html

--]]

-------------------------------------------------------------------------------
-- LuaShark local modules and packages
-------------------------------------------------------------------------------

-- From standard LUA
local luadbg = require("debug")
local package = require("package")
local io = require("io")
local tostring = tostring
local tonumber = tonumber
local pairs = pairs
local table = table
local format = string.format
local string = string
local print = print

-- From Wireshark LUA API
local get_version = get_version

-- LuaShark local variables
local debugPrints = true

-------------------------------------------------------------------------------
-- LuaShark Helper functions
-------------------------------------------------------------------------------

local function print_table(tbl)
  for k,v in pairs(tbl) do
    print("k="..k.." v="..tostring(v))
  end
end

local function split(str, pat, debug)
  local debug = debug or false
  local t = {}
  local fpat = "(.-)" .. pat
  local last_end = 1
  local s, e, cap = str:find(fpat, 1)
  while s do
    if s ~= 1 or cap ~= "" then
      table.insert(t,cap)
    end
    last_end = e+1
    s, e, cap = str:find(fpat, last_end)
  end
  if last_end <= #str then
    cap = str:sub(last_end)
    table.insert(t, cap)
  end
  if debug then print_table(t) end
  return t
end

local function get_os()
  local cpathTable = split(package.cpath, "[\\.]+")
  local binaryFormat = cpathTable[#cpathTable]
  if binaryFormat == "so" then
    return "Linux"
  elseif binaryFormat == "dll" then
    return "Windows"
  else
    return "UnknownOS"
  end
end

local function get_dir_list(path, debug)
  local debug = debug or false
  local t = {}
  local cmd = nil
  if get_os() == "Linux" then
    cmd = 'find "'..path..'" -type d'
  elseif get_os() == "Windows" then
    cmd = 'dir "'..path..'" /b /ad /s'
  end
  local p = io.popen(cmd)
  for subDir in p:lines() do
    if subDir ~= path then
      table.insert(t, subDir)
    end
  end
  if debug then print_table(t) end
  return t
end

local function get_file_list(path, debug)
  local debug = debug or false
  local t = {}
  local cmd = nil
  if get_os() == "Linux" then
    cmd = 'find "'..path..'" -type f'
  elseif get_os() == "Windows" then
    cmd = 'dir "'..path..'" /b /s'
  end
  local p = io.popen(cmd)
  for subDir in p:lines() do
    if subDir ~= path then
      table.insert(t, subDir)
    end
  end
  if debug then print("get_file_list cmd=\""..cmd.."\"") end
  if debug then print_table(t) end
  return t
end

local function script_path()
  return luadbg.getinfo(1).source
end

local function get_dir_path(filepath)
  if get_os() == "Linux" then
    return filepath:match("(.*/)")
  elseif get_os() == "Windows" then
    return filepath:match("(.*\\)")
  end
  return nil 
end

local function get_last_path_item(filepath)
  local pathTable = {}
  if get_os() == "Linux" then
    pathTable = split(filepath, "[/]+")
  elseif get_os() == "Windows" then
    pathTable = split(filepath, "[\\]+")
  end
  return pathTable[#pathTable]
end


-------------------------------------------------------------------------------
-- import L1L2 interfaces MessageIDs and Dissectors
-------------------------------------------------------------------------------

print("--------------------------------------------------")
local luasharkScriptPath = script_path()
local luasharkDirPath = get_dir_path(luasharkScriptPath)
print("Wireshark Version: "..get_version())
print("Operating System: "..get_os())
print("LuaShark Script path: "..luasharkScriptPath)
print("LuaShark Directory path: "..luasharkDirPath)
package.path = package.path .. ';'..luasharkDirPath..'/?.lua'
print("--------------------------------------------------")
L1L2DissectorTable = {}
for _,subDirPath in pairs(get_dir_list(luasharkDirPath)) do
  local interfaceName = get_last_path_item(subDirPath)
  print("Import L1L2 Message Dissectors from "..interfaceName)
  for _, filePath in pairs(get_file_list(subDirPath)) do
    local fileName = get_last_path_item(filePath)
    local fileNameModule = split(fileName, "[\\.]+")[1]
    local dissectorObj = require(interfaceName.."."..fileNameModule)
    L1L2DissectorTable[dissectorObj:messageName()] = dissectorObj
    if debugPrints then
      print("  adding dissector="..dissectorObj:messageName()..
            " msgId="..format("0x%04x", dissectorObj:messageId())..
            " module="..fileNameModule)
    end
  end
end
print("--------------------------------------------------")


-------------------------------------------------------------------------------
-- Wireshark LUA API helper functions
-------------------------------------------------------------------------------

local function set_info_column(pinfo, newText)
  pinfo.cols.info:set(newText)
  pinfo.cols.info:fence()
end

local function append_to_info_column(pinfo, newText)
  local currText = tostring(pinfo.cols.info)
  pinfo.cols.info:set(currText.." / "..newText)
  pinfo.cols.info:fence()
end

local function get_swe_message_name(messageIdTable, sweMessageId)
  local sweMsgName = "sweMessageId=0x"..tostring(sweMessageId)
  for msgName, msgId in pairs(messageIdTable) do
    if msgId == tonumber(tostring(sweMessageId), 16) then sweMsgName = msgName end
  end
  return sweMsgName
end

-------------------------------------------------------------------------------
-- ICOM Interface Message Decoders
-------------------------------------------------------------------------------

--------------------------------------------------------------
BIP = Proto("lua_bip", "BIP")
local lua_bip = BIP.fields
lua_bip.bipTypeId = ProtoField.uint16("lua_bip.TypeId", "TypeID")
lua_bip.bipEventSize = ProtoField.uint16("lua_bip.EventSize", "Event Size")
lua_bip.bipEventSeqNum = ProtoField.uint16("lua_bip.EventSeqNum", "EventSeqNum")
lua_bip.bipFragmentIndex = ProtoField.uint16("lua_bip.FragmentIndex", "FragmentIndex")
lua_bip.bipLocalQId = ProtoField.uint16("lua_bip.LocalQId", "LocalQId")

local function BIP(buffer, offset, pinfo, tree)
  local subtree = tree:add (BIP, buffer())
  subtree:set_text("BIP Header")

  local bipTypeId = buffer(offset, 2)
  subtree:add (lua_bip.bipTypeId, bipTypeId )
  offset = offset + 2

  local bipEventSize = buffer(offset, 2)
  subtree:add (lua_bip.bipEventSize, bipEventSize)
  offset = offset + 2

  local bipEventSeqNum = buffer(offset, 1)
  subtree:add (lua_bip.bipEventSeqNum, bipEventSeqNum)
  offset = offset + 1

  local bipFragmentIndex = buffer(offset, 1)
  subtree:add (lua_bip.bipFragmentIndex, bipFragmentIndex)
  offset = offset + 1

  local bipLocalQId = buffer(offset, 2)
  subtree:add (lua_bip.bipLocalQId, bipLocalQId)
  offset = offset + 2

  return offset
end

--------------------------------------------------------------
ICOM4 = Proto("lua_icom4", "ICOM4")
local lua_icom4 = ICOM4.fields
lua_icom4.Header = ProtoField.uint16("lua_icom4.Header", "Header", base.HEX)
lua_icom4.size = ProtoField.uint16("lua_icom4.size", "Size")
lua_icom4.destNodeid =  ProtoField.uint16("lua_icom4.destNodeid", "DestNodeid", base.HEX) 
lua_icom4.destQueue = ProtoField.uint16("lua_icom4.destNodeid", "DestQueue", base.HEX)

local function ICOM4(buffer, offset, pinfo, tree)
  local subtree = tree:add (ICOM4, buffer())
  subtree:set_text("ICom4 Header")

  local header = buffer(offset, 2)
  subtree:add (lua_icom4.Header, header)
  offset = offset + 2

  local size = buffer(offset, 2)
  subtree:add (lua_icom4.size, size)
  offset = offset + 2

  local destNodeid = buffer(offset, 2)
  subtree:add (lua_icom4.destNodeid, destNodeid)
  offset = offset + 2

  local destQueue = buffer(offset, 2)
  subtree:add (lua_icom4.destQueue, destQueue)
  offset = offset + 2

  return offset
end

--------------------------------------------------------------
SWE = Proto("lua_swe", "SWE")
local lua_swe = SWE.fields
lua_swe.sweReserved1 = ProtoField.bytes("lua_swe.sweReserved1", "Reserved1")
lua_swe.sweMessageId = ProtoField.uint16("lua_swe.MessageId", "MessageId", base.HEX)
lua_swe.sweReserved2 = ProtoField.bytes("lua_swe.sweReserved2", "Reserved2")

local function SWE(buffer, offset, pinfo, tree)
  local subtree = tree:add (SWE, buffer())
  subtree:set_text("SwEvent Header")

  local sweReserved1 = buffer(offset, 2)
  subtree:add (lua_swe.sweReserved1, sweReserved1)
  offset = offset + 2

  local sweMessageId = buffer(offset, 2)
  subtree:add (lua_swe.sweMessageId, sweMessageId)
  offset = offset + 2

  local sweReserved2 = buffer(offset, 4)
  subtree:add (lua_swe.sweReserved2, sweReserved2)
  offset = offset + 4

  return offset, tonumber(tostring(sweMessageId), 16)
end

-------------------------------------------------------------
SYSCOM = Proto("lua_syscom", "SYSCOM")
local lua_syscom = SYSCOM.fields
lua_syscom.version = ProtoField.uint8("lua_syscom.version", "version")
lua_syscom.reserved = ProtoField.uint8("lua_syscom.reserved", "reserved")
lua_syscom.msgid = ProtoField.uint16("lua_syscom.msgid", "msgid", base.HEX)
lua_syscom.receiver = ProtoField.uint16("lua_syscom.receiver", "receiver", base.HEX)
lua_syscom.sender = ProtoField.uint32("lua_syscom.sender", "sender", base.HEX)
lua_syscom.length = ProtoField.uint16("lua_syscom.length", "length")
lua_syscom.flags1 = ProtoField.uint8("lua_syscom.flags1", "flags1")
lua_syscom.flags2 = ProtoField.uint8("lua_syscom.flags2", "flags2")

local function SYSCOM(buffer, offset, pinfo, tree)
  local subtree = tree:add (SYSCOM, buffer())
  subtree:set_text("SysCom Header")

  local version = buffer(offset, 1)
  subtree:add (lua_syscom.version, version)
  offset = offset + 1

  local reserved = buffer(offset, 1)
  subtree:add (lua_syscom.reserved, reserved)
  offset = offset + 1

  local msgid = buffer(offset, 2)
  subtree:add (lua_syscom.msgid, msgid)
  offset = offset + 2

  local receiver = buffer(offset, 4)
  subtree:add (lua_syscom.receiver, receiver)
  offset = offset + 4

  local sender = buffer(offset, 4)
  subtree:add (lua_syscom.sender, sender)
  offset = offset + 4

  local length = buffer(offset, 2)
  subtree:add (lua_syscom.length, length)
  offset = offset + 2

  local flags1 = buffer(offset, 1)
  subtree:add (lua_syscom.flags1, flags1)
  offset = offset + 1

  local flags2 = buffer(offset, 1)
  subtree:add (lua_syscom.flags2, flags2)
  offset = offset + 1

  local payload_len = tonumber(tostring(length), 16) - 16

  return offset, tonumber(tostring(msgid), 16), payload_len
end

-------------------------------------------------------------
L1L2MSG = Proto("l1l2", "L1L2MSG")
local l1l2 = L1L2MSG.fields
l1l2.payload = ProtoField.bytes("l1l2.payload", "payload", base.HEX)

local function L1L2MSG(buffer, offset, pinfo, tree, colinfo, sweMessageId, length)

  local subtree = tree:add (L1L2MSG, buffer())
  subtree:set_text("L1L2 Message")

  if debugPrints then
    print("--------------------------------------------------")
    print("Search for sweMessageId="..format("0x%04x", sweMessageId).." in L1L2DissectorTable")
  end

  local dissectorFound = false
  for dissectorName,dissectorObj in pairs(L1L2DissectorTable) do
    if sweMessageId == dissectorObj:messageId() then
      set_info_column(pinfo, colinfo .. " / " .. dissectorObj:messageName())
      dissectorObj:dissector(buffer, offset, pinfo, subtree)
      dissectorFound = true
      break
    end
  end
  if not dissectorFound then
    set_info_column(pinfo, colinfo .. format(" / msgId=0x%04x", sweMessageId))
    subtree:add (l1l2.payload, buffer(offset, length))
  end

end

--------------------------------------------------------------
RLC = Proto("lua_rlc", "RLC")
local lua_rlc = RLC.fields
lua_rlc.DC = ProtoField.uint8("lua_rlc.DC", "D/C", base.HEX, {[0]="Control Packet", [1]="Data Packet"}, 0x80)
lua_rlc.SF = ProtoField.uint8("lua_rlc.SF", "SF", base.HEX, {[0]="No segment", [1]="Segment"}, 0x40)
lua_rlc.P = ProtoField.uint8("lua_rlc.P", "Polling bit", base.HEX, {[0]="No polling", [1]="Polling"}, 0x20)
lua_rlc.R1 = ProtoField.uint8("lua_rlc.R", "Reserved", base.HEX, nil, 0x18)
lua_rlc.LSF = ProtoField.uint8("lua_rlc.LSF", "Last Segment Flag", base.HEX, {[0]="Not last", [1]="Last Segment"}, 0x4)
lua_rlc.Sn = ProtoField.uint24("lua_rlc.Sn", "Sn", base.HEX, nil, 0x3ffff)

local function RLC(buffer, offset, pinfo, tree)
  local subtree = tree:add (RLC, buffer())
  subtree:set_text("RLC Header")

  local firstByte = buffer(offset, 1)
  subtree:add (lua_rlc.DC, firstByte)
  subtree:add (lua_rlc.SF, firstByte)
  subtree:add (lua_rlc.P, firstByte)
  subtree:add (lua_rlc.R1, firstByte)
  subtree:add (lua_rlc.LSF, firstByte)

  local Sn = buffer(offset, 3)
  subtree:add (lua_rlc.Sn, Sn)
  offset = offset + 3

  return offset
end

-------------------------------------------------------------------------------
-- Create L1L2 interface release "517" dissector
-------------------------------------------------------------------------------

--------------------------------------------------------------
--- 5G_ICOM_5
L2L1If_ICOM5_ETH_TYPE = 0x8951
L2L1if_ICOM5_PROTO = Proto ("icom5", "5G_ICOM_5 (BIP/SWE/L1L2 message)")
local icom5 = L2L1if_ICOM5_PROTO.fields
icom5.bip = ProtoField.bytes("icom5.bip", "BIP")
icom5.swe = ProtoField.bytes("icom5.swe", "SWE")
icom5.l1l2 = ProtoField.bytes("icom5.l1l2", "L1L2 Message")

--- The BipSwe dissector function
function L2L1if_ICOM5_PROTO.dissector (buffer, pinfo, tree)
  local subtree = tree:add (L2L1if_ICOM5_PROTO, buffer())
  local offset = 0
  local offset = BIP(buffer, offset, pinfo, subtree)
  local offset, sweMessageId = SWE(buffer, offset, pinfo, subtree)
  local offset = L1L2MSG(buffer, offset, pinfo, subtree, "BIP / SWE", sweMessageId)
end

--------------------------------------------------------------
--- 5G_ICOM_14
L2L1If_ICOM14_UDP_PORT = 29211
L2L1if_ICOM14_PROTO = Proto ("icom14", "5G_ICOM_14 (UDP,UDPCP,SCTP/SysCom/L1L2 message)")
local icom14 = L2L1if_ICOM14_PROTO.fields
icom14.syscom = ProtoField.bytes("icom14.syscom", "BIP")
icom14.l1l2 = ProtoField.bytes("icom14.l1l2", "L1L2 Message")

--- The SysCom dissector function
function L2L1if_ICOM14_PROTO.dissector (buffer, pinfo, tree)
  local subtree = tree:add (L2L1if_ICOM14_PROTO, buffer())
  local offset = 0
  local offset, msgid, length = SYSCOM(buffer, offset, pinfo, subtree)
  local offset = L1L2MSG(buffer, offset, pinfo, subtree, "SYSCOM", msgid, length)
end


--------------------------------------------------------------
--- 5G_ICOM_4
L2HiLoIf_ICOM4_UDP_PORT = 52152
L2HiLoIf_ICOM4_PROTO = Proto ("icom4", "5G_ICOM_4 (UDP,SW event)")
local icom4 = L2HiLoIf_ICOM4_PROTO.fields
icom14.l2hilo = ProtoField.bytes("icom4.l2hilo", "L2HiLo Message")

--- The SwEvent dissector function
function L2HiLoIf_ICOM4_PROTO.dissector (buffer, pinfo, tree)
  local subtree = tree:add (L2HiLoIf_ICOM4_PROTO, buffer())
  local offset = 0
  local offset = ICOM4(buffer, offset, pinfo, subtree)
  local offset, sweMessageId = SWE(buffer, offset, pinfo, subtree)
  local offset = L1L2MSG(buffer, offset, pinfo, subtree, "SWE", sweMessageId)
  local offset = 36
  local offset = RLC(buffer, offset, pinfo, subtree)
end

-------------------------------------------------------------------------------
-- Subscribe Ethernet Types
-------------------------------------------------------------------------------
-- Subscribe L1L2 interface Ethernet Types
local eth_table = DissectorTable.get("ethertype")
local udp_table = DissectorTable.get("udp.port")
local sctp_table = DissectorTable.get("sctp.port")
eth_table:add(tonumber(L2L1If_ICOM5_ETH_TYPE), L2L1if_ICOM5_PROTO)
udp_table:add(tonumber(L2L1If_ICOM14_UDP_PORT), L2L1if_ICOM14_PROTO)
sctp_table:add(tonumber(L2L1If_ICOM14_UDP_PORT), L2L1if_ICOM14_PROTO)
udp_table:add(tonumber(L2HiLoIf_ICOM4_UDP_PORT), L2HiLoIf_ICOM4_PROTO)
sctp_table:add(tonumber(L2HiLoIf_ICOM4_UDP_PORT), L2HiLoIf_ICOM4_PROTO)
