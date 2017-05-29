<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="EN" />
        <signal name="XLXN_10(31:0)" />
        <signal name="XLXN_27" />
        <signal name="instruction(31:26)" />
        <signal name="XLXN_35" />
        <signal name="instruction(31:0)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_44" />
        <signal name="instruction(25:21)" />
        <signal name="instruction(20:16)" />
        <signal name="XLXN_47(4:0)" />
        <signal name="instruction(15:11)" />
        <signal name="XLXN_50" />
        <signal name="instruction(15:0)" />
        <signal name="XLXN_76(31:0)" />
        <signal name="XLXN_77(31:0)" />
        <signal name="XLXN_82(31:0)" />
        <signal name="XLXN_83(31:0)" />
        <signal name="XLXN_86" />
        <signal name="XLXN_88" />
        <signal name="XLXN_94(31:0)" />
        <signal name="XLXN_97(31:0)" />
        <signal name="XLXN_99" />
        <signal name="XLXN_108" />
        <signal name="XLXN_111" />
        <signal name="XLXN_125(31:0)" />
        <signal name="XLXN_128(31:0)" />
        <signal name="XLXN_134(31:0)" />
        <signal name="XLXN_145(31:0)" />
        <signal name="XLXN_146" />
        <signal name="XLXN_148" />
        <signal name="XLXN_149" />
        <signal name="XLXN_151(3:0)" />
        <signal name="XLXN_152(1:0)" />
        <signal name="instruction(5:0)" />
        <signal name="XLXN_159" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="EN" />
        <port polarity="Output" name="XLXN_145(31:0)" />
        <blockdef name="PC">
            <timestamp>2017-5-26T1:5:35</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <blockdef name="FSM">
            <timestamp>2017-5-26T1:6:7</timestamp>
            <rect width="336" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="ADD1">
            <timestamp>2017-5-26T1:7:28</timestamp>
            <rect width="400" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
        </blockdef>
        <blockdef name="CTL">
            <timestamp>2017-5-26T1:50:9</timestamp>
            <rect width="400" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="528" y1="-480" y2="-480" x1="464" />
            <line x2="528" y1="-416" y2="-416" x1="464" />
            <line x2="528" y1="-352" y2="-352" x1="464" />
            <line x2="528" y1="-288" y2="-288" x1="464" />
            <line x2="528" y1="-224" y2="-224" x1="464" />
            <line x2="528" y1="-160" y2="-160" x1="464" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
        </blockdef>
        <blockdef name="MUX5">
            <timestamp>2017-5-26T2:5:35</timestamp>
            <rect width="336" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
        </blockdef>
        <blockdef name="REG">
            <timestamp>2017-5-26T2:6:24</timestamp>
            <rect width="496" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="560" y="-364" height="24" />
            <line x2="624" y1="-352" y2="-352" x1="560" />
            <rect width="64" x="560" y="-44" height="24" />
            <line x2="624" y1="-32" y2="-32" x1="560" />
        </blockdef>
        <blockdef name="EXT">
            <timestamp>2017-5-26T2:30:15</timestamp>
            <rect width="352" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="MUX32">
            <timestamp>2017-5-26T2:31:57</timestamp>
            <rect width="368" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2017-5-26T2:33:24</timestamp>
            <rect width="384" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-224" y2="-224" x1="448" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <blockdef name="ADD2">
            <timestamp>2017-5-26T2:39:30</timestamp>
            <rect width="384" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-108" height="24" />
            <line x2="512" y1="-96" y2="-96" x1="448" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="RAM">
            <timestamp>2017-5-26T2:47:28</timestamp>
            <rect width="432" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-300" height="24" />
            <line x2="560" y1="-288" y2="-288" x1="496" />
        </blockdef>
        <blockdef name="ALUCTR">
            <timestamp>2017-5-26T2:59:24</timestamp>
            <rect width="400" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
        </blockdef>
        <blockdef name="ROM">
            <timestamp>2017-5-27T15:43:28</timestamp>
            <rect width="432" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-108" height="24" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
        </blockdef>
        <block symbolname="FSM" name="FSM_1">
            <blockpin signalname="CLK" name="I_FSM_CLK" />
            <blockpin signalname="EN" name="I_FSM_EN" />
            <blockpin signalname="instruction(31:0)" name="I_FSM_INST(31:0)" />
            <blockpin signalname="XLXN_27" name="O_FEM_IF" />
            <blockpin signalname="XLXN_35" name="O_FEM_ID" />
            <blockpin signalname="XLXN_88" name="O_FEM_EX" />
            <blockpin signalname="XLXN_146" name="O_FEM_ME" />
            <blockpin signalname="XLXN_2" name="O_FEM_WB" />
        </block>
        <block symbolname="PC" name="PC_1">
            <blockpin signalname="XLXN_2" name="I_PC_UPDATE" />
            <blockpin signalname="XLXN_125(31:0)" name="I_PC(31:0)" />
            <blockpin signalname="XLXN_10(31:0)" name="O_PC(31:0)" />
        </block>
        <block symbolname="ADD1" name="ADD1_1">
            <blockpin signalname="XLXN_10(31:0)" name="I_ADD1_A(31:0)" />
            <blockpin signalname="XLXN_94(31:0)" name="O_ADD1_OUT(31:0)" />
        </block>
        <block symbolname="CTL" name="ctl_1">
            <blockpin signalname="XLXN_35" name="I_CTL_EN" />
            <blockpin signalname="instruction(31:26)" name="I_CTL_INST(5:0)" />
            <blockpin signalname="XLXN_50" name="O_CTL_RegDst" />
            <blockpin signalname="XLXN_111" name="O_CTL_Branch" />
            <blockpin signalname="XLXN_149" name="O_CTL_MemRead" />
            <blockpin signalname="XLXN_159" name="O_CTL_MemtoReg" />
            <blockpin signalname="XLXN_148" name="O_CTL_MemWrite" />
            <blockpin signalname="XLXN_86" name="O_CTL_ALUSrc" />
            <blockpin signalname="XLXN_44" name="O_CTL_RegWrite" />
            <blockpin signalname="XLXN_152(1:0)" name="O_CTL_ALUOp(1:0)" />
        </block>
        <block symbolname="REG" name="reg_1">
            <blockpin signalname="XLXN_2" name="I_REG_EN" />
            <blockpin signalname="XLXN_44" name="I_REG_WE" />
            <blockpin signalname="instruction(25:21)" name="I_REG_SEL_RS(4:0)" />
            <blockpin signalname="instruction(20:16)" name="I_REG_SEL_RT(4:0)" />
            <blockpin signalname="XLXN_47(4:0)" name="I_REG_SEL_RD(4:0)" />
            <blockpin signalname="XLXN_145(31:0)" name="I_REG_DATA_RD(31:0)" />
            <blockpin signalname="XLXN_83(31:0)" name="O_REG_DATA_A(31:0)" />
            <blockpin signalname="XLXN_76(31:0)" name="O_REG_DATA_B(31:0)" />
        </block>
        <block symbolname="MUX5" name="mux5_4">
            <blockpin signalname="XLXN_50" name="I_MUX_Sel" />
            <blockpin signalname="instruction(20:16)" name="I_MUX_0(4:0)" />
            <blockpin signalname="instruction(15:11)" name="I_MUX_1(4:0)" />
            <blockpin signalname="XLXN_47(4:0)" name="O_MUX_Out(4:0)" />
        </block>
        <block symbolname="EXT" name="ext_1">
            <blockpin signalname="instruction(15:0)" name="I_EXT_16(15:0)" />
            <blockpin signalname="XLXN_77(31:0)" name="O_EXT_32(31:0)" />
        </block>
        <block symbolname="MUX32" name="mux32_3">
            <blockpin signalname="XLXN_86" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_76(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_77(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_82(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="ALU" name="alu_1">
            <blockpin signalname="XLXN_88" name="I_ALU_EN" />
            <blockpin signalname="XLXN_151(3:0)" name="I_ALU_CTL(3:0)" />
            <blockpin signalname="XLXN_83(31:0)" name="I_ALU_A(31:0)" />
            <blockpin signalname="XLXN_82(31:0)" name="I_ALU_B(31:0)" />
            <blockpin signalname="XLXN_108" name="O_ALU_Zero" />
            <blockpin signalname="XLXN_128(31:0)" name="O_ALU_OUT(31:0)" />
        </block>
        <block symbolname="ADD2" name="add2_1">
            <blockpin signalname="XLXN_94(31:0)" name="I_ADD2_A(31:0)" />
            <blockpin signalname="XLXN_77(31:0)" name="I_ADD2_B(31:0)" />
            <blockpin signalname="XLXN_97(31:0)" name="I_ADD2_Out(31:0)" />
        </block>
        <block symbolname="MUX32" name="mux32_1">
            <blockpin signalname="XLXN_99" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_94(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_97(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_125(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="XLXN_108" name="I0" />
            <blockpin signalname="XLXN_111" name="I1" />
            <blockpin signalname="XLXN_99" name="O" />
        </block>
        <block symbolname="MUX32" name="mux32_2">
            <blockpin signalname="XLXN_159" name="I_MUX_Sel" />
            <blockpin signalname="XLXN_128(31:0)" name="I_MUX_0(31:0)" />
            <blockpin signalname="XLXN_134(31:0)" name="I_MUX_1(31:0)" />
            <blockpin signalname="XLXN_145(31:0)" name="O_MUX_Out(31:0)" />
        </block>
        <block symbolname="RAM" name="ram_1">
            <blockpin signalname="XLXN_146" name="I_RAM_EN" />
            <blockpin signalname="XLXN_149" name="I_RAM_RE" />
            <blockpin signalname="XLXN_148" name="I_RAM_WE" />
            <blockpin signalname="XLXN_128(31:0)" name="I_RAM_ADDR(31:0)" />
            <blockpin signalname="XLXN_76(31:0)" name="I_RAM_DATA(31:0)" />
            <blockpin signalname="XLXN_134(31:0)" name="O_RAM_DATA(31:0)" />
        </block>
        <block symbolname="ALUCTR" name="ALUCTR_1">
            <blockpin signalname="XLXN_152(1:0)" name="I_ALU_OP(1:0)" />
            <blockpin signalname="instruction(5:0)" name="I_ALU_FUNCT(5:0)" />
            <blockpin signalname="XLXN_151(3:0)" name="O_ALU_CTR(3:0)" />
        </block>
        <block symbolname="ROM" name="rom_1">
            <blockpin signalname="XLXN_27" name="I_ROM_EN" />
            <blockpin signalname="XLXN_10(31:0)" name="I_ROM_ADDR(31:0)" />
            <blockpin signalname="instruction(31:0)" name="O_ROM_DATA(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="CLK">
            <wire x2="384" y1="2832" y2="2832" x1="352" />
        </branch>
        <branch name="EN">
            <wire x2="384" y1="2960" y2="2960" x1="352" />
        </branch>
        <branch name="XLXN_10(31:0)">
            <wire x2="880" y1="2128" y2="2128" x1="816" />
            <wire x2="1040" y1="2128" y2="2128" x1="880" />
            <wire x2="896" y1="688" y2="688" x1="880" />
            <wire x2="880" y1="688" y2="2128" x1="880" />
        </branch>
        <branch name="instruction(31:26)">
            <wire x2="1824" y1="1776" y2="1776" x1="1728" />
            <wire x2="1728" y1="1776" y2="1968" x1="1728" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="384" y1="2128" y2="2128" x1="320" />
            <wire x2="320" y1="2128" y2="2304" x1="320" />
            <wire x2="1104" y1="2304" y2="2304" x1="320" />
            <wire x2="1104" y1="2304" y2="2336" x1="1104" />
            <wire x2="2464" y1="2336" y2="2336" x1="1104" />
            <wire x2="1104" y1="2336" y2="3088" x1="1104" />
            <wire x2="1104" y1="3088" y2="3088" x1="848" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="2400" y1="1712" y2="1712" x1="2352" />
            <wire x2="2400" y1="1712" y2="2400" x1="2400" />
            <wire x2="2464" y1="2400" y2="2400" x1="2400" />
        </branch>
        <branch name="instruction(25:21)">
            <wire x2="2160" y1="2256" y2="2256" x1="1872" />
            <wire x2="2160" y1="2256" y2="2464" x1="2160" />
            <wire x2="2464" y1="2464" y2="2464" x1="2160" />
        </branch>
        <branch name="instruction(20:16)">
            <wire x2="2464" y1="2528" y2="2528" x1="1872" />
            <wire x2="1872" y1="2528" y2="2640" x1="1872" />
            <wire x2="1904" y1="2640" y2="2640" x1="1872" />
            <wire x2="1904" y1="2640" y2="2656" x1="1904" />
            <wire x2="1952" y1="2656" y2="2656" x1="1904" />
        </branch>
        <branch name="XLXN_47(4:0)">
            <wire x2="2464" y1="2592" y2="2592" x1="2416" />
        </branch>
        <branch name="instruction(15:11)">
            <wire x2="1936" y1="2832" y2="2832" x1="1872" />
            <wire x2="1936" y1="2720" y2="2832" x1="1936" />
            <wire x2="1952" y1="2720" y2="2720" x1="1936" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="2352" y1="1168" y2="1168" x1="1680" />
            <wire x2="2352" y1="1168" y2="1328" x1="2352" />
            <wire x2="1680" y1="1168" y2="2592" x1="1680" />
            <wire x2="1952" y1="2592" y2="2592" x1="1680" />
        </branch>
        <instance x="384" y="2224" name="PC_1" orien="R0">
        </instance>
        <bustap x2="1728" y1="2064" y2="1968" x1="1728" />
        <instance x="1824" y="1808" name="ctl_1" orien="R0">
        </instance>
        <instance x="2464" y="2688" name="reg_1" orien="R0">
        </instance>
        <bustap x2="1872" y1="2256" y2="2256" x1="1776" />
        <bustap x2="1872" y1="2640" y2="2640" x1="1776" />
        <bustap x2="1872" y1="2832" y2="2832" x1="1776" />
        <instance x="1952" y="2752" name="mux5_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="352" y="2832" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="352" y="2960" name="EN" orien="R180" />
        <bustap x2="1872" y1="3168" y2="3168" x1="1776" />
        <branch name="instruction(15:0)">
            <wire x2="2560" y1="3168" y2="3168" x1="1872" />
        </branch>
        <instance x="2560" y="3200" name="ext_1" orien="R0">
        </instance>
        <branch name="XLXN_76(31:0)">
            <wire x2="3168" y1="2656" y2="2656" x1="3088" />
            <wire x2="3280" y1="2656" y2="2656" x1="3168" />
            <wire x2="3168" y1="2656" y2="2816" x1="3168" />
            <wire x2="4704" y1="2816" y2="2816" x1="3168" />
            <wire x2="4704" y1="2608" y2="2816" x1="4704" />
            <wire x2="4816" y1="2608" y2="2608" x1="4704" />
        </branch>
        <branch name="XLXN_77(31:0)">
            <wire x2="3216" y1="3168" y2="3168" x1="3040" />
            <wire x2="3328" y1="768" y2="768" x1="3216" />
            <wire x2="3216" y1="768" y2="2720" x1="3216" />
            <wire x2="3280" y1="2720" y2="2720" x1="3216" />
            <wire x2="3216" y1="2720" y2="3168" x1="3216" />
        </branch>
        <instance x="3280" y="2752" name="mux32_3" orien="R0">
        </instance>
        <branch name="XLXN_82(31:0)">
            <wire x2="3792" y1="2592" y2="2592" x1="3776" />
            <wire x2="4000" y1="2528" y2="2528" x1="3792" />
            <wire x2="3792" y1="2528" y2="2592" x1="3792" />
        </branch>
        <branch name="XLXN_83(31:0)">
            <wire x2="3104" y1="2336" y2="2336" x1="3088" />
            <wire x2="3104" y1="2336" y2="2464" x1="3104" />
            <wire x2="4000" y1="2464" y2="2464" x1="3104" />
        </branch>
        <branch name="XLXN_86">
            <wire x2="3168" y1="1648" y2="1648" x1="2352" />
            <wire x2="3168" y1="1648" y2="2592" x1="3168" />
            <wire x2="3280" y1="2592" y2="2592" x1="3168" />
        </branch>
        <branch name="XLXN_88">
            <wire x2="3904" y1="2960" y2="2960" x1="848" />
            <wire x2="3904" y1="2336" y2="2960" x1="3904" />
            <wire x2="4000" y1="2336" y2="2336" x1="3904" />
        </branch>
        <instance x="4000" y="2560" name="alu_1" orien="R0">
        </instance>
        <instance x="896" y="720" name="ADD1_1" orien="R0">
        </instance>
        <branch name="XLXN_97(31:0)">
            <wire x2="4336" y1="704" y2="704" x1="3840" />
        </branch>
        <instance x="3328" y="800" name="add2_1" orien="R0">
        </instance>
        <branch name="XLXN_94(31:0)">
            <wire x2="3168" y1="688" y2="688" x1="1424" />
            <wire x2="3168" y1="688" y2="704" x1="3168" />
            <wire x2="3328" y1="704" y2="704" x1="3168" />
            <wire x2="4336" y1="640" y2="640" x1="3168" />
            <wire x2="3168" y1="640" y2="688" x1="3168" />
        </branch>
        <instance x="4576" y="1504" name="XLXI_22" orien="R0" />
        <branch name="XLXN_111">
            <wire x2="2368" y1="1392" y2="1392" x1="2352" />
            <wire x2="4576" y1="1376" y2="1376" x1="2368" />
            <wire x2="2368" y1="1376" y2="1392" x1="2368" />
        </branch>
        <branch name="XLXN_108">
            <wire x2="4528" y1="2336" y2="2336" x1="4512" />
            <wire x2="4576" y1="1440" y2="1440" x1="4528" />
            <wire x2="4528" y1="1440" y2="2336" x1="4528" />
        </branch>
        <instance x="4336" y="736" name="mux32_1" orien="R0">
        </instance>
        <branch name="XLXN_99">
            <wire x2="4336" y1="576" y2="576" x1="4272" />
            <wire x2="4272" y1="576" y2="800" x1="4272" />
            <wire x2="4848" y1="800" y2="800" x1="4272" />
            <wire x2="4848" y1="800" y2="1408" x1="4848" />
            <wire x2="4848" y1="1408" y2="1408" x1="4832" />
        </branch>
        <branch name="XLXN_125(31:0)">
            <wire x2="4912" y1="432" y2="432" x1="336" />
            <wire x2="4912" y1="432" y2="576" x1="4912" />
            <wire x2="336" y1="432" y2="2192" x1="336" />
            <wire x2="384" y1="2192" y2="2192" x1="336" />
            <wire x2="4912" y1="576" y2="576" x1="4832" />
        </branch>
        <instance x="4816" y="2640" name="ram_1" orien="R0">
        </instance>
        <branch name="XLXN_146">
            <wire x2="4592" y1="3024" y2="3024" x1="848" />
            <wire x2="4816" y1="2352" y2="2352" x1="4592" />
            <wire x2="4592" y1="2352" y2="3024" x1="4592" />
        </branch>
        <branch name="XLXN_148">
            <wire x2="4544" y1="1584" y2="1584" x1="2352" />
            <wire x2="4544" y1="1584" y2="2480" x1="4544" />
            <wire x2="4816" y1="2480" y2="2480" x1="4544" />
        </branch>
        <branch name="XLXN_149">
            <wire x2="4560" y1="1456" y2="1456" x1="2352" />
            <wire x2="4560" y1="1456" y2="2416" x1="4560" />
            <wire x2="4816" y1="2416" y2="2416" x1="4560" />
        </branch>
        <instance x="2560" y="1888" name="ALUCTR_1" orien="R0">
        </instance>
        <branch name="XLXN_151(3:0)">
            <wire x2="3536" y1="1792" y2="1792" x1="3088" />
            <wire x2="3536" y1="1792" y2="2400" x1="3536" />
            <wire x2="4000" y1="2400" y2="2400" x1="3536" />
        </branch>
        <branch name="XLXN_152(1:0)">
            <wire x2="2448" y1="1776" y2="1776" x1="2352" />
            <wire x2="2448" y1="1776" y2="1792" x1="2448" />
            <wire x2="2560" y1="1792" y2="1792" x1="2448" />
        </branch>
        <bustap x2="1872" y1="2144" y2="2144" x1="1776" />
        <branch name="instruction(5:0)">
            <wire x2="1984" y1="2144" y2="2144" x1="1872" />
            <wire x2="2560" y1="1856" y2="1856" x1="1984" />
            <wire x2="1984" y1="1856" y2="2144" x1="1984" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="992" y1="2896" y2="2896" x1="848" />
            <wire x2="992" y1="1328" y2="2896" x1="992" />
            <wire x2="1824" y1="1328" y2="1328" x1="992" />
        </branch>
        <instance x="384" y="3120" name="FSM_1" orien="R0">
        </instance>
        <branch name="XLXN_128(31:0)">
            <wire x2="4528" y1="2528" y2="2528" x1="4512" />
            <wire x2="4528" y1="2528" y2="2544" x1="4528" />
            <wire x2="4816" y1="2544" y2="2544" x1="4528" />
            <wire x2="4528" y1="2544" y2="2640" x1="4528" />
            <wire x2="5632" y1="2640" y2="2640" x1="4528" />
        </branch>
        <instance x="5632" y="2736" name="mux32_2" orien="R0">
        </instance>
        <branch name="XLXN_159">
            <wire x2="5456" y1="1520" y2="1520" x1="2352" />
            <wire x2="5456" y1="1520" y2="2576" x1="5456" />
            <wire x2="5632" y1="2576" y2="2576" x1="5456" />
        </branch>
        <branch name="XLXN_134(31:0)">
            <wire x2="5392" y1="2352" y2="2352" x1="5376" />
            <wire x2="5392" y1="2352" y2="2416" x1="5392" />
            <wire x2="5392" y1="2416" y2="2704" x1="5392" />
            <wire x2="5632" y1="2704" y2="2704" x1="5392" />
        </branch>
        <branch name="XLXN_145(31:0)">
            <wire x2="2416" y1="2656" y2="3344" x1="2416" />
            <wire x2="6208" y1="3344" y2="3344" x1="2416" />
            <wire x2="2464" y1="2656" y2="2656" x1="2416" />
            <wire x2="6208" y1="2576" y2="2576" x1="6128" />
            <wire x2="6208" y1="2576" y2="2624" x1="6208" />
            <wire x2="6208" y1="2624" y2="3344" x1="6208" />
            <wire x2="6272" y1="2624" y2="2624" x1="6208" />
            <wire x2="6272" y1="2576" y2="2624" x1="6272" />
            <wire x2="6352" y1="2576" y2="2576" x1="6272" />
        </branch>
        <iomarker fontsize="28" x="6352" y="2576" name="XLXN_145(31:0)" orien="R0" />
        <branch name="instruction(31:0)">
            <wire x2="320" y1="3088" y2="3200" x1="320" />
            <wire x2="1776" y1="3200" y2="3200" x1="320" />
            <wire x2="384" y1="3088" y2="3088" x1="320" />
            <wire x2="1712" y1="2064" y2="2064" x1="1600" />
            <wire x2="1728" y1="2064" y2="2064" x1="1712" />
            <wire x2="1776" y1="2064" y2="2064" x1="1728" />
            <wire x2="1776" y1="2064" y2="2144" x1="1776" />
            <wire x2="1776" y1="2144" y2="2256" x1="1776" />
            <wire x2="1776" y1="2256" y2="2640" x1="1776" />
            <wire x2="1776" y1="2640" y2="2832" x1="1776" />
            <wire x2="1776" y1="2832" y2="3168" x1="1776" />
            <wire x2="1776" y1="3168" y2="3200" x1="1776" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="864" y1="2832" y2="2832" x1="848" />
            <wire x2="944" y1="2832" y2="2832" x1="864" />
            <wire x2="944" y1="2064" y2="2832" x1="944" />
            <wire x2="1040" y1="2064" y2="2064" x1="944" />
        </branch>
        <instance x="1040" y="2160" name="rom_1" orien="R0">
        </instance>
    </sheet>
</drawing>