////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: TopModule_synthesis.v
// /___/   /\     Timestamp: Tue Oct 04 18:05:14 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim TopModule.ngc TopModule_synthesis.v 
// Device	: xc6slx16-2-csg324
// Input file	: TopModule.ngc
// Output file	: C:\Xilinx\Lab4\netgen\synthesis\TopModule_synthesis.v
// # of Modules	: 1
// Design Name	: TopModule
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module TopModule (
  clock, reset, step, a, b, c, d, e, f, g, switches, anode
);
  input clock;
  input reset;
  input step;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  input [7 : 0] switches;
  output [3 : 0] anode;
  wire switches_3_IBUF_0;
  wire switches_2_IBUF_1;
  wire switches_1_IBUF_2;
  wire switches_0_IBUF_3;
  wire switches_7_IBUF_4;
  wire switches_6_IBUF_5;
  wire switches_5_IBUF_6;
  wire switches_4_IBUF_7;
  wire clock_BUFGP_8;
  wire reset_IBUF_9;
  wire \led_0/outClk_10 ;
  wire anode_3_OBUF_11;
  wire anode_2_OBUF_12;
  wire anode_1_OBUF_13;
  wire anode_0_OBUF_14;
  wire a_OBUF_19;
  wire b_OBUF_20;
  wire c_OBUF_21;
  wire d_OBUF_22;
  wire e_OBUF_23;
  wire f_OBUF_24;
  wire g_OBUF_25;
  wire \ledCon_0/presentState_FSM_FFd4_28 ;
  wire \ledCon_0/presentState_FSM_FFd3_29 ;
  wire \ledCon_0/presentState_FSM_FFd2_30 ;
  wire \ledCon_0/presentState_FSM_FFd1_31 ;
  wire \led_0/Mcompar_n0002_lutdi3_37 ;
  wire \led_0/Mcompar_n0002_lutdi2_40 ;
  wire \led_0/Mcompar_n0002_lutdi1_43 ;
  wire \led_0/Mcompar_n0002_lutdi_46 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_47 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_48 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_49 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_50 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_51 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_52 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_53 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_54 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_55 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_56 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_57 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_58 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_59 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_60 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_61 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_62 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_63 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<0>_64 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_lut<0> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<0> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<1> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<2> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<3> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<4> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<5> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<6> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<7> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<8> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<9> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<10> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<11> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<12> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<13> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<14> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<15> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<16> ;
  wire \led_0/i[31]_GND_2_o_mux_3_OUT<17> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<0> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<1> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<2> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<3> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<4> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<5> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<6> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<7> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<8> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<9> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<10> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<11> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<12> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<13> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<14> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<15> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<16> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<17> ;
  wire \led_0/i[31]_GND_2_o_add_1_OUT<18> ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_rt_142 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_rt_143 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_rt_144 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_rt_145 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_rt_146 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_rt_147 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_rt_148 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_rt_149 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_rt_150 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_rt_151 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_rt_152 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_rt_153 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_rt_154 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_rt_155 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_rt_156 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_rt_157 ;
  wire \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_rt_158 ;
  wire \led_0/outClk_rstpot_159 ;
  wire \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT11_cy_rt_160 ;
  wire [3 : 0] hex;
  wire [2 : 1] inputs2;
  wire [6 : 0] \led_0/Mcompar_n0002_cy ;
  wire [3 : 0] \led_0/Mcompar_n0002_lut ;
  wire [17 : 0] \led_0/i ;
  VCC   XST_VCC (
    .P(inputs2[1])
  );
  GND   XST_GND (
    .G(inputs2[2])
  );
  FDC   \ledCon_0/presentState_FSM_FFd3  (
    .C(\led_0/outClk_10 ),
    .CLR(reset_IBUF_9),
    .D(\ledCon_0/presentState_FSM_FFd4_28 ),
    .Q(\ledCon_0/presentState_FSM_FFd3_29 )
  );
  FDC   \ledCon_0/presentState_FSM_FFd2  (
    .C(\led_0/outClk_10 ),
    .CLR(reset_IBUF_9),
    .D(\ledCon_0/presentState_FSM_FFd3_29 ),
    .Q(\ledCon_0/presentState_FSM_FFd2_30 )
  );
  FDC   \ledCon_0/presentState_FSM_FFd1  (
    .C(\led_0/outClk_10 ),
    .CLR(reset_IBUF_9),
    .D(\ledCon_0/presentState_FSM_FFd2_30 ),
    .Q(\ledCon_0/presentState_FSM_FFd1_31 )
  );
  FDP   \ledCon_0/presentState_FSM_FFd4  (
    .C(\led_0/outClk_10 ),
    .D(\ledCon_0/presentState_FSM_FFd1_31 ),
    .PRE(reset_IBUF_9),
    .Q(\ledCon_0/presentState_FSM_FFd4_28 )
  );
  MUXCY   \led_0/Mcompar_n0002_cy<6>  (
    .CI(\led_0/Mcompar_n0002_cy [5]),
    .DI(inputs2[1]),
    .S(inputs2[1]),
    .O(\led_0/Mcompar_n0002_cy [6])
  );
  MUXCY   \led_0/Mcompar_n0002_cy<5>  (
    .CI(\led_0/Mcompar_n0002_cy [4]),
    .DI(inputs2[1]),
    .S(inputs2[1]),
    .O(\led_0/Mcompar_n0002_cy [5])
  );
  MUXCY   \led_0/Mcompar_n0002_cy<4>  (
    .CI(\led_0/Mcompar_n0002_cy [3]),
    .DI(inputs2[1]),
    .S(inputs2[1]),
    .O(\led_0/Mcompar_n0002_cy [4])
  );
  MUXCY   \led_0/Mcompar_n0002_cy<3>  (
    .CI(\led_0/Mcompar_n0002_cy [2]),
    .DI(\led_0/Mcompar_n0002_lutdi3_37 ),
    .S(\led_0/Mcompar_n0002_lut [3]),
    .O(\led_0/Mcompar_n0002_cy [3])
  );
  LUT5 #(
    .INIT ( 32'h00100000 ))
  \led_0/Mcompar_n0002_lut<3>  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<15> ),
    .I1(\led_0/i[31]_GND_2_o_add_1_OUT<18> ),
    .I2(\led_0/i[31]_GND_2_o_add_1_OUT<16> ),
    .I3(inputs2[2]),
    .I4(\led_0/i[31]_GND_2_o_add_1_OUT<17> ),
    .O(\led_0/Mcompar_n0002_lut [3])
  );
  MUXCY   \led_0/Mcompar_n0002_cy<2>  (
    .CI(\led_0/Mcompar_n0002_cy [1]),
    .DI(\led_0/Mcompar_n0002_lutdi2_40 ),
    .S(\led_0/Mcompar_n0002_lut [2]),
    .O(\led_0/Mcompar_n0002_cy [2])
  );
  LUT5 #(
    .INIT ( 32'h00004000 ))
  \led_0/Mcompar_n0002_lut<2>  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<12> ),
    .I1(\led_0/i[31]_GND_2_o_add_1_OUT<11> ),
    .I2(\led_0/i[31]_GND_2_o_add_1_OUT<10> ),
    .I3(\led_0/i[31]_GND_2_o_add_1_OUT<13> ),
    .I4(\led_0/i[31]_GND_2_o_add_1_OUT<14> ),
    .O(\led_0/Mcompar_n0002_lut [2])
  );
  MUXCY   \led_0/Mcompar_n0002_cy<1>  (
    .CI(\led_0/Mcompar_n0002_cy [0]),
    .DI(\led_0/Mcompar_n0002_lutdi1_43 ),
    .S(\led_0/Mcompar_n0002_lut [1]),
    .O(\led_0/Mcompar_n0002_cy [1])
  );
  LUT5 #(
    .INIT ( 32'h00004000 ))
  \led_0/Mcompar_n0002_lut<1>  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<5> ),
    .I1(\led_0/i[31]_GND_2_o_add_1_OUT<6> ),
    .I2(\led_0/i[31]_GND_2_o_add_1_OUT<7> ),
    .I3(\led_0/i[31]_GND_2_o_add_1_OUT<8> ),
    .I4(\led_0/i[31]_GND_2_o_add_1_OUT<9> ),
    .O(\led_0/Mcompar_n0002_lut [1])
  );
  MUXCY   \led_0/Mcompar_n0002_cy<0>  (
    .CI(inputs2[2]),
    .DI(\led_0/Mcompar_n0002_lutdi_46 ),
    .S(\led_0/Mcompar_n0002_lut [0]),
    .O(\led_0/Mcompar_n0002_cy [0])
  );
  LUT5 #(
    .INIT ( 32'h00004000 ))
  \led_0/Mcompar_n0002_lut<0>  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<1> ),
    .I1(\led_0/i[31]_GND_2_o_add_1_OUT<0> ),
    .I2(\led_0/i[31]_GND_2_o_add_1_OUT<2> ),
    .I3(\led_0/i[31]_GND_2_o_add_1_OUT<3> ),
    .I4(\led_0/i[31]_GND_2_o_add_1_OUT<4> ),
    .O(\led_0/Mcompar_n0002_lut [0])
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<18>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_47 ),
    .LI(inputs2[2]),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<18> )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<17>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_48 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_rt_142 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<17> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_48 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_rt_142 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_47 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<16>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_49 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_rt_143 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<16> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_49 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_rt_143 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_48 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<15>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_50 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_rt_144 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<15> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_50 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_rt_144 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_49 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<14>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_51 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_rt_145 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<14> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_51 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_rt_145 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_50 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<13>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_52 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_rt_146 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<13> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_52 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_rt_146 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_51 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<12>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_53 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_rt_147 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<12> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_53 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_rt_147 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_52 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<11>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_54 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_rt_148 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<11> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_54 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_rt_148 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_53 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<10>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_55 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_rt_149 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<10> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_55 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_rt_149 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_54 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<9>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_56 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_rt_150 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<9> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_56 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_rt_150 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_55 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<8>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_57 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_rt_151 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<8> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_57 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_rt_151 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_56 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<7>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_58 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_rt_152 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<7> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_58 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_rt_152 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_57 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<6>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_59 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_rt_153 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<6> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_59 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_rt_153 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_58 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<5>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_60 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_rt_154 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<5> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_60 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_rt_154 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_59 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<4>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_61 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_rt_155 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<4> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_61 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_rt_155 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_60 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<3>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_62 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_rt_156 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<3> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_62 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_rt_156 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_61 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<2>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_63 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_rt_157 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<2> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_63 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_rt_157 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_62 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<1>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<0>_64 ),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_rt_158 ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<1> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>  (
    .CI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<0>_64 ),
    .DI(inputs2[2]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_rt_158 ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_63 )
  );
  XORCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_xor<0>  (
    .CI(inputs2[2]),
    .LI(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_lut<0> ),
    .O(\led_0/i[31]_GND_2_o_add_1_OUT<0> )
  );
  MUXCY   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<0>  (
    .CI(inputs2[2]),
    .DI(inputs2[1]),
    .S(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_lut<0> ),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<0>_64 )
  );
  FDC   \led_0/i_17  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<17> ),
    .Q(\led_0/i [17])
  );
  FDC   \led_0/i_16  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<16> ),
    .Q(\led_0/i [16])
  );
  FDC   \led_0/i_15  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<15> ),
    .Q(\led_0/i [15])
  );
  FDC   \led_0/i_14  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<14> ),
    .Q(\led_0/i [14])
  );
  FDC   \led_0/i_13  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<13> ),
    .Q(\led_0/i [13])
  );
  FDC   \led_0/i_12  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<12> ),
    .Q(\led_0/i [12])
  );
  FDC   \led_0/i_11  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<11> ),
    .Q(\led_0/i [11])
  );
  FDC   \led_0/i_10  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<10> ),
    .Q(\led_0/i [10])
  );
  FDC   \led_0/i_9  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<9> ),
    .Q(\led_0/i [9])
  );
  FDC   \led_0/i_8  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<8> ),
    .Q(\led_0/i [8])
  );
  FDC   \led_0/i_7  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<7> ),
    .Q(\led_0/i [7])
  );
  FDC   \led_0/i_6  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<6> ),
    .Q(\led_0/i [6])
  );
  FDC   \led_0/i_5  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<5> ),
    .Q(\led_0/i [5])
  );
  FDC   \led_0/i_4  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<4> ),
    .Q(\led_0/i [4])
  );
  FDC   \led_0/i_3  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<3> ),
    .Q(\led_0/i [3])
  );
  FDC   \led_0/i_2  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<2> ),
    .Q(\led_0/i [2])
  );
  FDC   \led_0/i_1  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<1> ),
    .Q(\led_0/i [1])
  );
  FDC   \led_0/i_0  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/i[31]_GND_2_o_mux_3_OUT<0> ),
    .Q(\led_0/i [0])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \mux_0/Mmux_outMux<0>1  (
    .I0(switches_0_IBUF_3),
    .I1(\ledCon_0/presentState_FSM_FFd4_28 ),
    .I2(switches_4_IBUF_7),
    .I3(\ledCon_0/presentState_FSM_FFd3_29 ),
    .O(hex[0])
  );
  LUT5 #(
    .INIT ( 32'hFFEAEAEA ))
  \mux_0/Mmux_outMux<1>1  (
    .I0(\ledCon_0/presentState_FSM_FFd2_30 ),
    .I1(switches_5_IBUF_6),
    .I2(\ledCon_0/presentState_FSM_FFd3_29 ),
    .I3(switches_1_IBUF_2),
    .I4(\ledCon_0/presentState_FSM_FFd4_28 ),
    .O(hex[1])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \mux_0/Mmux_outMux<2>1  (
    .I0(switches_2_IBUF_1),
    .I1(\ledCon_0/presentState_FSM_FFd4_28 ),
    .I2(switches_6_IBUF_5),
    .I3(\ledCon_0/presentState_FSM_FFd3_29 ),
    .O(hex[2])
  );
  LUT5 #(
    .INIT ( 32'hFFEAEAEA ))
  \mux_0/Mmux_outMux<3>1  (
    .I0(\ledCon_0/presentState_FSM_FFd2_30 ),
    .I1(switches_7_IBUF_4),
    .I2(\ledCon_0/presentState_FSM_FFd3_29 ),
    .I3(switches_3_IBUF_0),
    .I4(\ledCon_0/presentState_FSM_FFd4_28 ),
    .O(hex[3])
  );
  LUT4 #(
    .INIT ( 16'hE228 ))
  \sevSeg_0/Mram__n0024111  (
    .I0(hex[2]),
    .I1(hex[0]),
    .I2(hex[1]),
    .I3(hex[3]),
    .O(b_OBUF_20)
  );
  LUT4 #(
    .INIT ( 16'h0941 ))
  \sevSeg_0/Mram__n002461  (
    .I0(hex[1]),
    .I1(hex[2]),
    .I2(hex[3]),
    .I3(hex[0]),
    .O(g_OBUF_25)
  );
  LUT4 #(
    .INIT ( 16'h02BA ))
  \sevSeg_0/Mram__n002441  (
    .I0(hex[0]),
    .I1(hex[1]),
    .I2(hex[2]),
    .I3(hex[3]),
    .O(e_OBUF_23)
  );
  LUT4 #(
    .INIT ( 16'h2812 ))
  \sevSeg_0/Mram__n002411  (
    .I0(hex[0]),
    .I1(hex[1]),
    .I2(hex[2]),
    .I3(hex[3]),
    .O(a_OBUF_19)
  );
  LUT4 #(
    .INIT ( 16'h8294 ))
  \sevSeg_0/Mram__n002431  (
    .I0(hex[1]),
    .I1(hex[2]),
    .I2(hex[0]),
    .I3(hex[3]),
    .O(d_OBUF_22)
  );
  LUT4 #(
    .INIT ( 16'h6054 ))
  \sevSeg_0/Mram__n002451  (
    .I0(hex[3]),
    .I1(hex[1]),
    .I2(hex[0]),
    .I3(hex[2]),
    .O(f_OBUF_24)
  );
  LUT4 #(
    .INIT ( 16'hD004 ))
  \sevSeg_0/Mram__n002421  (
    .I0(hex[0]),
    .I1(hex[1]),
    .I2(hex[2]),
    .I3(hex[3]),
    .O(c_OBUF_21)
  );
  IBUF   switches_7_IBUF (
    .I(switches[7]),
    .O(switches_7_IBUF_4)
  );
  IBUF   switches_6_IBUF (
    .I(switches[6]),
    .O(switches_6_IBUF_5)
  );
  IBUF   switches_5_IBUF (
    .I(switches[5]),
    .O(switches_5_IBUF_6)
  );
  IBUF   switches_4_IBUF (
    .I(switches[4]),
    .O(switches_4_IBUF_7)
  );
  IBUF   switches_3_IBUF (
    .I(switches[3]),
    .O(switches_3_IBUF_0)
  );
  IBUF   switches_2_IBUF (
    .I(switches[2]),
    .O(switches_2_IBUF_1)
  );
  IBUF   switches_1_IBUF (
    .I(switches[1]),
    .O(switches_1_IBUF_2)
  );
  IBUF   switches_0_IBUF (
    .I(switches[0]),
    .O(switches_0_IBUF_3)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_9)
  );
  OBUF   anode_3_OBUF (
    .I(anode_3_OBUF_11),
    .O(anode[3])
  );
  OBUF   anode_2_OBUF (
    .I(anode_2_OBUF_12),
    .O(anode[2])
  );
  OBUF   anode_1_OBUF (
    .I(anode_1_OBUF_13),
    .O(anode[1])
  );
  OBUF   anode_0_OBUF (
    .I(anode_0_OBUF_14),
    .O(anode[0])
  );
  OBUF   a_OBUF (
    .I(a_OBUF_19),
    .O(a)
  );
  OBUF   b_OBUF (
    .I(b_OBUF_20),
    .O(b)
  );
  OBUF   c_OBUF (
    .I(c_OBUF_21),
    .O(c)
  );
  OBUF   d_OBUF (
    .I(d_OBUF_22),
    .O(d)
  );
  OBUF   e_OBUF (
    .I(e_OBUF_23),
    .O(e)
  );
  OBUF   f_OBUF (
    .I(f_OBUF_24),
    .O(f)
  );
  OBUF   g_OBUF (
    .I(g_OBUF_25),
    .O(g)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_rt  (
    .I0(\led_0/i [17]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_rt_142 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_rt  (
    .I0(\led_0/i [16]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_rt_143 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_rt  (
    .I0(\led_0/i [15]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_rt_144 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_rt  (
    .I0(\led_0/i [14]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_rt_145 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_rt  (
    .I0(\led_0/i [13]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_rt_146 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_rt  (
    .I0(\led_0/i [12]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_rt_147 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_rt  (
    .I0(\led_0/i [11]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_rt_148 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_rt  (
    .I0(\led_0/i [10]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_rt_149 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_rt  (
    .I0(\led_0/i [9]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_rt_150 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_rt  (
    .I0(\led_0/i [8]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_rt_151 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_rt  (
    .I0(\led_0/i [7]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_rt_152 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_rt  (
    .I0(\led_0/i [6]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_rt_153 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_rt  (
    .I0(\led_0/i [5]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_rt_154 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_rt  (
    .I0(\led_0/i [4]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_rt_155 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_rt  (
    .I0(\led_0/i [3]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_rt_156 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_rt  (
    .I0(\led_0/i [2]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_rt_157 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_rt  (
    .I0(\led_0/i [1]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_rt_158 )
  );
  LUT4 #(
    .INIT ( 16'h1555 ))
  \led_0/Mcompar_n0002_lutdi3  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<18> ),
    .I1(\led_0/i[31]_GND_2_o_add_1_OUT<17> ),
    .I2(\led_0/i[31]_GND_2_o_add_1_OUT<16> ),
    .I3(\led_0/i[31]_GND_2_o_add_1_OUT<15> ),
    .O(\led_0/Mcompar_n0002_lutdi3_37 )
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  \led_0/Mcompar_n0002_lutdi2  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<14> ),
    .I1(\led_0/i[31]_GND_2_o_add_1_OUT<12> ),
    .I2(\led_0/i[31]_GND_2_o_add_1_OUT<13> ),
    .O(\led_0/Mcompar_n0002_lutdi2_40 )
  );
  LUT5 #(
    .INIT ( 32'h15555555 ))
  \led_0/Mcompar_n0002_lutdi1  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<9> ),
    .I1(\led_0/i[31]_GND_2_o_add_1_OUT<7> ),
    .I2(\led_0/i[31]_GND_2_o_add_1_OUT<6> ),
    .I3(\led_0/i[31]_GND_2_o_add_1_OUT<5> ),
    .I4(\led_0/i[31]_GND_2_o_add_1_OUT<8> ),
    .O(\led_0/Mcompar_n0002_lutdi1_43 )
  );
  LUT4 #(
    .INIT ( 16'h1555 ))
  \led_0/Mcompar_n0002_lutdi  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<4> ),
    .I1(\led_0/i[31]_GND_2_o_add_1_OUT<2> ),
    .I2(\led_0/i[31]_GND_2_o_add_1_OUT<1> ),
    .I3(\led_0/i[31]_GND_2_o_add_1_OUT<3> ),
    .O(\led_0/Mcompar_n0002_lutdi_46 )
  );
  MUXCY   \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT11_cy  (
    .CI(\led_0/Mcompar_n0002_cy [6]),
    .DI(inputs2[2]),
    .S(\led_0/Mmux_i[31]_GND_2_o_mux_3_OUT11_cy_rt_160 ),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT21  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<10> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<10> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT33  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<11> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<11> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT41  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<12> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<12> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT51  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<13> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<13> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT61  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<14> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<14> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT71  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<15> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<15> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT81  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<16> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<16> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT91  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<17> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<17> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT121  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<1> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT231  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<2> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT261  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<3> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT271  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<4> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT281  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<5> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT291  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<6> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT301  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<7> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT311  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<8> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<8> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT321  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<9> ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/i[31]_GND_2_o_mux_3_OUT<9> )
  );
  FDC   \led_0/outClk  (
    .C(clock_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\led_0/outClk_rstpot_159 ),
    .Q(\led_0/outClk_10 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \led_0/outClk_rstpot  (
    .I0(\led_0/outClk_10 ),
    .I1(\led_0/Mcompar_n0002_cy [6]),
    .O(\led_0/outClk_rstpot_159 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \led_0/Mmux_i[31]_GND_2_o_mux_3_OUT11_cy_rt  (
    .I0(\led_0/i[31]_GND_2_o_add_1_OUT<0> ),
    .O(\led_0/Mmux_i[31]_GND_2_o_mux_3_OUT11_cy_rt_160 )
  );
  BUFGP   clock_BUFGP (
    .I(clock),
    .O(clock_BUFGP_8)
  );
  INV   \led_0/Madd_i[31]_GND_2_o_add_1_OUT_lut<0>_INV_0  (
    .I(\led_0/i [0]),
    .O(\led_0/Madd_i[31]_GND_2_o_add_1_OUT_lut<0> )
  );
  INV   \ledCon_0/presentState__n0014<2>1_INV_0  (
    .I(\ledCon_0/presentState_FSM_FFd4_28 ),
    .O(anode_0_OBUF_14)
  );
  INV   \ledCon_0/presentState__n0014<3>1_INV_0  (
    .I(\ledCon_0/presentState_FSM_FFd3_29 ),
    .O(anode_1_OBUF_13)
  );
  INV   \ledCon_0/presentState__n0014<4>1_INV_0  (
    .I(\ledCon_0/presentState_FSM_FFd2_30 ),
    .O(anode_2_OBUF_12)
  );
  INV   \ledCon_0/presentState__n0014<5>1_INV_0  (
    .I(\ledCon_0/presentState_FSM_FFd1_31 ),
    .O(anode_3_OBUF_11)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

