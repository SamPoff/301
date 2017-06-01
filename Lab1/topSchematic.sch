<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="clk_in" />
        <signal name="reset" />
        <signal name="step" />
        <signal name="si" />
        <signal name="m1" />
        <signal name="m0" />
        <signal name="d(3:0)" />
        <signal name="q(3:0)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="step" />
        <port polarity="Input" name="si" />
        <port polarity="Input" name="m1" />
        <port polarity="Input" name="m0" />
        <port polarity="Input" name="d(3:0)" />
        <port polarity="Output" name="q(3:0)" />
        <blockdef name="clk_500Hz">
            <timestamp>2016-9-11T3:57:57</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="debounce">
            <timestamp>2016-9-11T3:58:48</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="shift_reg_4bit">
            <timestamp>2016-9-11T4:1:52</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
        </blockdef>
        <block symbolname="clk_500Hz" name="XLXI_1">
            <blockpin signalname="clk_in" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_1" name="clk_out" />
        </block>
        <block symbolname="debounce" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="step" name="Din" />
            <blockpin signalname="XLXN_2" name="Dout" />
        </block>
        <block symbolname="shift_reg_4bit" name="shift_register">
            <blockpin signalname="XLXN_2" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="si" name="si" />
            <blockpin signalname="m1" name="m1" />
            <blockpin signalname="m0" name="m0" />
            <blockpin signalname="d(3:0)" name="d(3:0)" />
            <blockpin signalname="q(3:0)" name="q(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="896" y="928" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1552" y="1200" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2080" y="1744" name="shift_register" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1408" y1="832" y2="832" x1="1280" />
            <wire x2="1408" y1="832" y2="1040" x1="1408" />
            <wire x2="1552" y1="1040" y2="1040" x1="1408" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2000" y1="1040" y2="1040" x1="1936" />
            <wire x2="2000" y1="1040" y2="1392" x1="2000" />
            <wire x2="2080" y1="1392" y2="1392" x1="2000" />
        </branch>
        <branch name="clk_in">
            <wire x2="896" y1="832" y2="832" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="832" name="clk_in" orien="R180" />
        <branch name="reset">
            <wire x2="512" y1="896" y2="896" x1="288" />
            <wire x2="544" y1="896" y2="896" x1="512" />
            <wire x2="896" y1="896" y2="896" x1="544" />
            <wire x2="544" y1="896" y2="1104" x1="544" />
            <wire x2="1552" y1="1104" y2="1104" x1="544" />
            <wire x2="512" y1="896" y2="1456" x1="512" />
            <wire x2="2080" y1="1456" y2="1456" x1="512" />
        </branch>
        <iomarker fontsize="28" x="288" y="896" name="reset" orien="R180" />
        <branch name="step">
            <wire x2="1552" y1="1168" y2="1168" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="1168" name="step" orien="R180" />
        <branch name="si">
            <wire x2="2080" y1="1520" y2="1520" x1="288" />
        </branch>
        <branch name="m1">
            <wire x2="2080" y1="1584" y2="1584" x1="288" />
        </branch>
        <branch name="m0">
            <wire x2="2080" y1="1648" y2="1648" x1="288" />
        </branch>
        <branch name="d(3:0)">
            <wire x2="2080" y1="1712" y2="1712" x1="288" />
        </branch>
        <branch name="q(3:0)">
            <wire x2="2560" y1="1392" y2="1392" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1392" name="q(3:0)" orien="R0" />
        <iomarker fontsize="28" x="288" y="1520" name="si" orien="R180" />
        <iomarker fontsize="28" x="288" y="1584" name="m1" orien="R180" />
        <iomarker fontsize="28" x="288" y="1648" name="m0" orien="R180" />
        <iomarker fontsize="28" x="288" y="1712" name="d(3:0)" orien="R180" />
    </sheet>
</drawing>