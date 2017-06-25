Introduction
============

The "LuaShark" is a MuLTI code generator to automatically generate Wireshark
LUA Dissectors for decoding all messages from 5G-NB E2E Internal Communication
interfaces (e.g. UlData, DlData, PsCell, PsUser, PsCnfg, PsInternal, etc).

The LuaShark code generation is executed with MuLTI (https://wrgitlabv01.emea.nsn-net.net/5G/MuLTI)
and it is bound to a specific version of 5G interfaces repository (https://wrgitlabv01.emea.nsn-net.net/5G/interfaces).

The LUA Dissectors scripts should match the interface version that is used by
5G SW System Components (e.g. L2-RT, L1, AirPhone, etc). If the generated Lua
Dissectors do NOT match the interface version from 5G SW System Components, the
interface messages may not be decoded correctly due to interface changes.

When analyzing and verifying the captured Wireshark traces (e.g. PCAP), please
keep in mind that the LUA Dissector might have bugs which could lead to wrong
fault descriptions. In case of doubt please confirm always the original interface
definitions in 5G interface repository (https://wrgitlabv01.emea.nsn-net.net/5G/interfaces).

The "LuaShark" generated Lua Dissectors should work with standard Wireshark and
WiresharkLTE versions, under Linux or Windows.


How To Run Wireshark with LuaShark generated LUA dissectors
===========================================================

1. Copy LuaShark output directory (e.g. "luashark") to your local disk

2. Open command line terminal

3. Execute Wireshark/Tshark with the following arguments:

    $ <path_to_wireshark.exe> -X lua_script:<path_to_luashark.lua> <pcap_file>

    Example under Linux
        $ wireshark-gtk -X lua_script:/tmp/multi/luashark/luashark.lua -r trace.pcap

    Example under Windows7
        > "C:\Program Files\Wireshark\Wireshark.exe" -X lua_script:"C:\Program Files\Wireshark\plugins\luashark\luashark.lua" trace.pcap

    Example under Cygwin
        $ ./Wireshark.exe -X lua_script:/cygdrive/c/Program\ Files/Wireshark/plugins/luashark/luashark.lua trace.pcap


Troubleshooting
===============

1. Confirm that the default protocol decoder from NSN (e.g. "FLIP") is disabled

    ETHERTYPE_FLIP 0x8901 /* Nokia Solutions and Networks Flow Layer Internal Protocol */

2. The lua_script command line argument should contain the full path to luashark.lua



How To Generate Wireshark LUA Dissectors with LuaShark
======================================================

For execute the LuaShark code generation it is necessary to clone the MuLTI and
5G interfaces repositories.

    cd <workspaceDir>
    git clone git@wrgitlabv01.emea.nsn-net.net:5G/MuLTI.git
    git clone git@wrgitlabv01.emea.nsn-net.net:5G/interfaces.git

For general usage of MuLTI tool please refer to the WikiPage
https://confluence.int.net.nokia.com/pages/viewpage.action?pageId=437130394

To generate LuaShark code, it's necessary to execute MuLTI with the argument
"-g LUASHARK".

Bash Script example for LuaShark code generation:

    #!/bin/bash
    # global variables
    MULTI_DIR=MuLTI
    OUT_DIR=out_luashark
    MULTI_JAR=build/jar/CompileMsgCat.jar
    INTERFACES_DIR=../interfaces
    PG_FILES_LIST=$(cat << END
    5G_L2-PS_L2-PS.pg
    5G_L2-PS_CP-RT_PsCell.pg
    5G_L2-PS_CP-RT_PsCnfg.pg
    5G_L2-PS_CP-RT_PsUser.pg
    5G_L1-UL_L2-PS.pg
    5G_L1-DL_L2-PS.pg
    END
    )
    echo +++++++++++++++++++++++++++++
    echo + Compile MULTI
    echo +++++++++++++++++++++++++++++
    cd $MULTI_DIR
    rm -fr $OUT_DIR
    ant
    echo +++++++++++++++++++++++++++++
    echo + Generate LUASHARK code
    echo +++++++++++++++++++++++++++++
    for PG_FILE in $PG_FILES_LIST ; do
        java -jar $MULTI_JAR -i $INTERFACES_DIR/$PG_FILE -I $INTERFACES_DIR -o $OUT_DIR -g LUASHARK
    done
    echo ++++++++++++++++++++++++++++++++
    echo + Execute LUASHARK codegen SCT
    echo ++++++++++++++++++++++++++++++++
    cd sct/luashark
    bash build.sh
    cd $MULTI_DIR

After code generation the output directory should contain the following file
structure:

    out_luashark/luashark/
    ├── UlData
    ├── DlData
    ├── PsCell
    ├── PsCnfg
    ├── PsInternal
    ├── PsUser
    ├── luashark.lua
    └── README.txt

