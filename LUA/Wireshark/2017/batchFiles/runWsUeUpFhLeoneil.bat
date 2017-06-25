SET wsPath="C:\Program Files\Wireshark\Wireshark.exe"

SET wsLuaScriptPath="D:\userdata\dasco\VirtualBox\Ubuntu1604\Wireshark\fromSeppo\interfaces_rev_e64ceac\luashark_UEUP_FH.lua"

SET wsCmd=%wsPath% -X lua_script:%wsLuaScriptPath%

ECHO %wsCmd%

ECHO "Starting Wireshark using %wsLuaScriptPath%"

%wsCmd%

