////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: topModule_synthesis.v
// /___/   /\     Timestamp: Sun Sep 11 15:00:03 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim topModule.ngc topModule_synthesis.v 
// Device	: xc6slx16-2-csg324
// Input file	: topModule.ngc
// Output file	: C:\Xilinx\Lab1\netgen\synthesis\topModule_synthesis.v
// # of Modules	: 1
// Design Name	: topModule
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

module topModule (
  serialIn, clock, reset, step, inShift, select, outShift
);
  input serialIn;
  input clock;
  input reset;
  input step;
  input [3 : 0] inShift;
  input [1 : 0] select;
  output [3 : 0] outShift;
  wire inShift_3_IBUF_0;
  wire inShift_2_IBUF_1;
  wire inShift_1_IBUF_2;
  wire inShift_0_IBUF_3;
  wire select_1_IBUF_4;
  wire select_0_IBUF_5;
  wire serialIn_IBUF_6;
  wire clock_BUFGP_7;
  wire reset_IBUF_8;
  wire step_IBUF_9;
  wire \sr0/ff3/outFF_10 ;
  wire \sr0/ff2/outFF_11 ;
  wire \sr0/ff1/outFF_12 ;
  wire \sr0/ff0/outFF_13 ;
  wire \ck0/outClk_14 ;
  wire outD;
  wire N0;
  wire N1;
  wire \sr0/w3 ;
  wire \sr0/w2 ;
  wire \sr0/w1 ;
  wire \sr0/w0 ;
  wire \ck0/Mcompar_n0002_lutdi5_24 ;
  wire \ck0/Mcompar_n0002_lutdi4_27 ;
  wire \ck0/Mcompar_n0002_lutdi3_30 ;
  wire \ck0/Mcompar_n0002_lutdi2_33 ;
  wire \ck0/Mcompar_n0002_lutdi1_36 ;
  wire \ck0/Mcompar_n0002_lutdi_39 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<30>_40 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<29>_41 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<28>_42 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<27>_43 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<26>_44 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<25>_45 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<24>_46 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<23>_47 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<22>_48 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<21>_49 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<20>_50 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<19>_51 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<18>_52 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_53 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_54 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_55 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_56 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_57 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_58 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_59 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_60 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_61 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_62 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_63 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_64 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_65 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_66 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_67 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_68 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_69 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<0>_70 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_lut<0> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<0> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<1> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<2> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<3> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<4> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<5> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<6> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<7> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<8> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<9> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<10> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<11> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<12> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<13> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<14> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<15> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<16> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<17> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<18> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<19> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<20> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<21> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<22> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<23> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<24> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<25> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<26> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<27> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<28> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<29> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<30> ;
  wire \ck0/i[31]_GND_2_o_mux_3_OUT<31> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<0> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<1> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<2> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<3> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<4> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<5> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<6> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<7> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<8> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<9> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<10> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<11> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<12> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<13> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<14> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<15> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<16> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<17> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<18> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<19> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<20> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<21> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<22> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<23> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<24> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<25> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<26> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<27> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<28> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<29> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<30> ;
  wire \ck0/i[31]_GND_2_o_add_1_OUT<31> ;
  wire \debo0/q9_168 ;
  wire \debo0/q8_169 ;
  wire \debo0/q7_170 ;
  wire \debo0/q6_171 ;
  wire \debo0/q5_172 ;
  wire \debo0/q4_173 ;
  wire \debo0/q3_174 ;
  wire \debo0/q2_175 ;
  wire \debo0/q1_176 ;
  wire \debo0/q0_177 ;
  wire N2;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<30>_rt_193 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<29>_rt_194 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<28>_rt_195 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<27>_rt_196 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<26>_rt_197 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<25>_rt_198 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<24>_rt_199 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<23>_rt_200 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<22>_rt_201 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<21>_rt_202 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<20>_rt_203 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<19>_rt_204 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<18>_rt_205 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_rt_206 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_rt_207 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_rt_208 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_rt_209 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_rt_210 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_rt_211 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_rt_212 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_rt_213 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_rt_214 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_rt_215 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_rt_216 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_rt_217 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_rt_218 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_rt_219 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_rt_220 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_rt_221 ;
  wire \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_rt_222 ;
  wire \ck0/outClk_rstpot_223 ;
  wire \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT110_cy_rt_224 ;
  wire [5 : 0] \ck0/Mcompar_n0002_cy ;
  wire [5 : 0] \ck0/Mcompar_n0002_lut ;
  wire [31 : 0] \ck0/i ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDC   \sr0/ff0/outFF  (
    .C(outD),
    .CLR(reset_IBUF_8),
    .D(\sr0/w0 ),
    .Q(\sr0/ff0/outFF_13 )
  );
  FDC   \sr0/ff1/outFF  (
    .C(outD),
    .CLR(reset_IBUF_8),
    .D(\sr0/w1 ),
    .Q(\sr0/ff1/outFF_12 )
  );
  FDC   \sr0/ff2/outFF  (
    .C(outD),
    .CLR(reset_IBUF_8),
    .D(\sr0/w2 ),
    .Q(\sr0/ff2/outFF_11 )
  );
  FDC   \sr0/ff3/outFF  (
    .C(outD),
    .CLR(reset_IBUF_8),
    .D(\sr0/w3 ),
    .Q(\sr0/ff3/outFF_10 )
  );
  MUXCY   \ck0/Mcompar_n0002_cy<5>  (
    .CI(\ck0/Mcompar_n0002_cy [4]),
    .DI(\ck0/Mcompar_n0002_lutdi5_24 ),
    .S(\ck0/Mcompar_n0002_lut [5]),
    .O(\ck0/Mcompar_n0002_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \ck0/Mcompar_n0002_lut<5>  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<30> ),
    .I1(\ck0/i[31]_GND_2_o_add_1_OUT<31> ),
    .O(\ck0/Mcompar_n0002_lut [5])
  );
  MUXCY   \ck0/Mcompar_n0002_cy<4>  (
    .CI(\ck0/Mcompar_n0002_cy [3]),
    .DI(\ck0/Mcompar_n0002_lutdi4_27 ),
    .S(\ck0/Mcompar_n0002_lut [4]),
    .O(\ck0/Mcompar_n0002_cy [4])
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \ck0/Mcompar_n0002_lut<4>  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<25> ),
    .I1(\ck0/i[31]_GND_2_o_add_1_OUT<26> ),
    .I2(\ck0/i[31]_GND_2_o_add_1_OUT<27> ),
    .I3(\ck0/i[31]_GND_2_o_add_1_OUT<28> ),
    .I4(\ck0/i[31]_GND_2_o_add_1_OUT<29> ),
    .O(\ck0/Mcompar_n0002_lut [4])
  );
  MUXCY   \ck0/Mcompar_n0002_cy<3>  (
    .CI(\ck0/Mcompar_n0002_cy [2]),
    .DI(\ck0/Mcompar_n0002_lutdi3_30 ),
    .S(\ck0/Mcompar_n0002_lut [3]),
    .O(\ck0/Mcompar_n0002_cy [3])
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \ck0/Mcompar_n0002_lut<3>  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<20> ),
    .I1(\ck0/i[31]_GND_2_o_add_1_OUT<21> ),
    .I2(\ck0/i[31]_GND_2_o_add_1_OUT<22> ),
    .I3(\ck0/i[31]_GND_2_o_add_1_OUT<23> ),
    .I4(\ck0/i[31]_GND_2_o_add_1_OUT<24> ),
    .O(\ck0/Mcompar_n0002_lut [3])
  );
  MUXCY   \ck0/Mcompar_n0002_cy<2>  (
    .CI(\ck0/Mcompar_n0002_cy [1]),
    .DI(\ck0/Mcompar_n0002_lutdi2_33 ),
    .S(\ck0/Mcompar_n0002_lut [2]),
    .O(\ck0/Mcompar_n0002_cy [2])
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \ck0/Mcompar_n0002_lut<2>  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<17> ),
    .I1(\ck0/i[31]_GND_2_o_add_1_OUT<18> ),
    .I2(\ck0/i[31]_GND_2_o_add_1_OUT<19> ),
    .I3(\ck0/i[31]_GND_2_o_add_1_OUT<16> ),
    .I4(\ck0/i[31]_GND_2_o_add_1_OUT<15> ),
    .O(\ck0/Mcompar_n0002_lut [2])
  );
  MUXCY   \ck0/Mcompar_n0002_cy<1>  (
    .CI(\ck0/Mcompar_n0002_cy [0]),
    .DI(\ck0/Mcompar_n0002_lutdi1_36 ),
    .S(\ck0/Mcompar_n0002_lut [1]),
    .O(\ck0/Mcompar_n0002_cy [1])
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \ck0/Mcompar_n0002_lut<1>  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<11> ),
    .I1(\ck0/i[31]_GND_2_o_add_1_OUT<12> ),
    .I2(\ck0/i[31]_GND_2_o_add_1_OUT<13> ),
    .I3(\ck0/i[31]_GND_2_o_add_1_OUT<10> ),
    .I4(\ck0/i[31]_GND_2_o_add_1_OUT<14> ),
    .O(\ck0/Mcompar_n0002_lut [1])
  );
  MUXCY   \ck0/Mcompar_n0002_cy<0>  (
    .CI(N0),
    .DI(\ck0/Mcompar_n0002_lutdi_39 ),
    .S(\ck0/Mcompar_n0002_lut [0]),
    .O(\ck0/Mcompar_n0002_cy [0])
  );
  LUT5 #(
    .INIT ( 32'h00002000 ))
  \ck0/Mcompar_n0002_lut<0>  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<9> ),
    .I1(\ck0/i[31]_GND_2_o_add_1_OUT<6> ),
    .I2(\ck0/i[31]_GND_2_o_add_1_OUT<7> ),
    .I3(\ck0/i[31]_GND_2_o_add_1_OUT<5> ),
    .I4(\ck0/i[31]_GND_2_o_add_1_OUT<8> ),
    .O(\ck0/Mcompar_n0002_lut [0])
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<31>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<30>_40 ),
    .LI(\ck0/i [31]),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<31> )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<30>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<29>_41 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<30>_rt_193 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<30> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<30>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<29>_41 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<30>_rt_193 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<30>_40 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<29>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<28>_42 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<29>_rt_194 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<29> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<29>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<28>_42 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<29>_rt_194 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<29>_41 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<28>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<27>_43 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<28>_rt_195 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<28> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<28>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<27>_43 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<28>_rt_195 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<28>_42 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<27>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<26>_44 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<27>_rt_196 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<27> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<27>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<26>_44 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<27>_rt_196 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<27>_43 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<26>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<25>_45 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<26>_rt_197 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<26> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<26>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<25>_45 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<26>_rt_197 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<26>_44 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<25>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<24>_46 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<25>_rt_198 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<25> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<25>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<24>_46 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<25>_rt_198 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<25>_45 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<24>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<23>_47 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<24>_rt_199 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<24> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<24>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<23>_47 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<24>_rt_199 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<24>_46 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<23>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<22>_48 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<23>_rt_200 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<23> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<23>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<22>_48 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<23>_rt_200 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<23>_47 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<22>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<21>_49 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<22>_rt_201 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<22> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<22>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<21>_49 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<22>_rt_201 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<22>_48 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<21>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<20>_50 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<21>_rt_202 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<21> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<21>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<20>_50 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<21>_rt_202 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<21>_49 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<20>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<19>_51 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<20>_rt_203 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<20> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<20>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<19>_51 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<20>_rt_203 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<20>_50 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<19>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<18>_52 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<19>_rt_204 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<19> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<19>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<18>_52 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<19>_rt_204 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<19>_51 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<18>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_53 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<18>_rt_205 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<18> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<18>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_53 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<18>_rt_205 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<18>_52 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<17>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_54 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_rt_206 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<17> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_54 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_rt_206 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_53 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<16>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_55 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_rt_207 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<16> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_55 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_rt_207 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_54 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<15>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_56 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_rt_208 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<15> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_56 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_rt_208 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_55 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<14>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_57 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_rt_209 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<14> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_57 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_rt_209 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_56 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<13>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_58 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_rt_210 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<13> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_58 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_rt_210 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_57 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<12>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_59 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_rt_211 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<12> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_59 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_rt_211 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_58 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<11>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_60 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_rt_212 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<11> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_60 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_rt_212 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_59 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<10>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_61 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_rt_213 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<10> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_61 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_rt_213 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_60 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<9>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_62 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_rt_214 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<9> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_62 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_rt_214 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_61 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<8>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_63 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_rt_215 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<8> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_63 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_rt_215 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_62 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<7>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_64 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_rt_216 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<7> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_64 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_rt_216 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_63 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<6>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_65 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_rt_217 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<6> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_65 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_rt_217 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_64 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<5>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_66 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_rt_218 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<5> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_66 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_rt_218 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_65 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<4>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_67 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_rt_219 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<4> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_67 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_rt_219 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_66 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<3>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_68 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_rt_220 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<3> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_68 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_rt_220 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_67 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<2>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_69 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_rt_221 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<2> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_69 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_rt_221 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_68 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<1>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<0>_70 ),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_rt_222 ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<1> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>  (
    .CI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<0>_70 ),
    .DI(N0),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_rt_222 ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_69 )
  );
  XORCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_xor<0>  (
    .CI(N0),
    .LI(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_lut<0> ),
    .O(\ck0/i[31]_GND_2_o_add_1_OUT<0> )
  );
  MUXCY   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_lut<0> ),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<0>_70 )
  );
  FDC   \ck0/i_31  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<31> ),
    .Q(\ck0/i [31])
  );
  FDC   \ck0/i_30  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<30> ),
    .Q(\ck0/i [30])
  );
  FDC   \ck0/i_29  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<29> ),
    .Q(\ck0/i [29])
  );
  FDC   \ck0/i_28  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<28> ),
    .Q(\ck0/i [28])
  );
  FDC   \ck0/i_27  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<27> ),
    .Q(\ck0/i [27])
  );
  FDC   \ck0/i_26  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<26> ),
    .Q(\ck0/i [26])
  );
  FDC   \ck0/i_25  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<25> ),
    .Q(\ck0/i [25])
  );
  FDC   \ck0/i_24  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<24> ),
    .Q(\ck0/i [24])
  );
  FDC   \ck0/i_23  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<23> ),
    .Q(\ck0/i [23])
  );
  FDC   \ck0/i_22  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<22> ),
    .Q(\ck0/i [22])
  );
  FDC   \ck0/i_21  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<21> ),
    .Q(\ck0/i [21])
  );
  FDC   \ck0/i_20  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<20> ),
    .Q(\ck0/i [20])
  );
  FDC   \ck0/i_19  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<19> ),
    .Q(\ck0/i [19])
  );
  FDC   \ck0/i_18  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<18> ),
    .Q(\ck0/i [18])
  );
  FDC   \ck0/i_17  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<17> ),
    .Q(\ck0/i [17])
  );
  FDC   \ck0/i_16  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<16> ),
    .Q(\ck0/i [16])
  );
  FDC   \ck0/i_15  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<15> ),
    .Q(\ck0/i [15])
  );
  FDC   \ck0/i_14  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<14> ),
    .Q(\ck0/i [14])
  );
  FDC   \ck0/i_13  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<13> ),
    .Q(\ck0/i [13])
  );
  FDC   \ck0/i_12  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<12> ),
    .Q(\ck0/i [12])
  );
  FDC   \ck0/i_11  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<11> ),
    .Q(\ck0/i [11])
  );
  FDC   \ck0/i_10  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<10> ),
    .Q(\ck0/i [10])
  );
  FDC   \ck0/i_9  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<9> ),
    .Q(\ck0/i [9])
  );
  FDC   \ck0/i_8  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<8> ),
    .Q(\ck0/i [8])
  );
  FDC   \ck0/i_7  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<7> ),
    .Q(\ck0/i [7])
  );
  FDC   \ck0/i_6  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<6> ),
    .Q(\ck0/i [6])
  );
  FDC   \ck0/i_5  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<5> ),
    .Q(\ck0/i [5])
  );
  FDC   \ck0/i_4  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<4> ),
    .Q(\ck0/i [4])
  );
  FDC   \ck0/i_3  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<3> ),
    .Q(\ck0/i [3])
  );
  FDC   \ck0/i_2  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<2> ),
    .Q(\ck0/i [2])
  );
  FDC   \ck0/i_1  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<1> ),
    .Q(\ck0/i [1])
  );
  FDC   \ck0/i_0  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/i[31]_GND_2_o_mux_3_OUT<0> ),
    .Q(\ck0/i [0])
  );
  FDC   \debo0/q9  (
    .C(\ck0/outClk_14 ),
    .CLR(reset_IBUF_8),
    .D(\debo0/q8_169 ),
    .Q(\debo0/q9_168 )
  );
  FDC   \debo0/q8  (
    .C(\ck0/outClk_14 ),
    .CLR(reset_IBUF_8),
    .D(\debo0/q7_170 ),
    .Q(\debo0/q8_169 )
  );
  FDC   \debo0/q7  (
    .C(\ck0/outClk_14 ),
    .CLR(reset_IBUF_8),
    .D(\debo0/q6_171 ),
    .Q(\debo0/q7_170 )
  );
  FDC   \debo0/q6  (
    .C(\ck0/outClk_14 ),
    .CLR(reset_IBUF_8),
    .D(\debo0/q5_172 ),
    .Q(\debo0/q6_171 )
  );
  FDC   \debo0/q5  (
    .C(\ck0/outClk_14 ),
    .CLR(reset_IBUF_8),
    .D(\debo0/q4_173 ),
    .Q(\debo0/q5_172 )
  );
  FDC   \debo0/q4  (
    .C(\ck0/outClk_14 ),
    .CLR(reset_IBUF_8),
    .D(\debo0/q3_174 ),
    .Q(\debo0/q4_173 )
  );
  FDC   \debo0/q3  (
    .C(\ck0/outClk_14 ),
    .CLR(reset_IBUF_8),
    .D(\debo0/q2_175 ),
    .Q(\debo0/q3_174 )
  );
  FDC   \debo0/q2  (
    .C(\ck0/outClk_14 ),
    .CLR(reset_IBUF_8),
    .D(\debo0/q1_176 ),
    .Q(\debo0/q2_175 )
  );
  FDC   \debo0/q1  (
    .C(\ck0/outClk_14 ),
    .CLR(reset_IBUF_8),
    .D(\debo0/q0_177 ),
    .Q(\debo0/q1_176 )
  );
  FDC   \debo0/q0  (
    .C(\ck0/outClk_14 ),
    .CLR(reset_IBUF_8),
    .D(step_IBUF_9),
    .Q(\debo0/q0_177 )
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \sr0/mux3/Mmux_outMux11  (
    .I0(select_0_IBUF_5),
    .I1(\sr0/ff2/outFF_11 ),
    .I2(select_1_IBUF_4),
    .I3(inShift_3_IBUF_0),
    .I4(\sr0/ff3/outFF_10 ),
    .I5(serialIn_IBUF_6),
    .O(\sr0/w3 )
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \sr0/mux2/Mmux_outMux11  (
    .I0(select_0_IBUF_5),
    .I1(\sr0/ff1/outFF_12 ),
    .I2(select_1_IBUF_4),
    .I3(inShift_2_IBUF_1),
    .I4(\sr0/ff2/outFF_11 ),
    .I5(\sr0/ff3/outFF_10 ),
    .O(\sr0/w2 )
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \sr0/mux1/Mmux_outMux11  (
    .I0(select_0_IBUF_5),
    .I1(\sr0/ff0/outFF_13 ),
    .I2(select_1_IBUF_4),
    .I3(inShift_1_IBUF_2),
    .I4(\sr0/ff1/outFF_12 ),
    .I5(\sr0/ff2/outFF_11 ),
    .O(\sr0/w1 )
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \sr0/mux0/Mmux_outMux11  (
    .I0(select_0_IBUF_5),
    .I1(\sr0/ff3/outFF_10 ),
    .I2(select_1_IBUF_4),
    .I3(inShift_0_IBUF_3),
    .I4(\sr0/ff0/outFF_13 ),
    .I5(\sr0/ff1/outFF_12 ),
    .O(\sr0/w0 )
  );
  LUT5 #(
    .INIT ( 32'hFF7FFFFF ))
  \debo0/outD_SW0  (
    .I0(\debo0/q3_174 ),
    .I1(\debo0/q2_175 ),
    .I2(\debo0/q1_176 ),
    .I3(\debo0/q9_168 ),
    .I4(\debo0/q0_177 ),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \debo0/outD  (
    .I0(\debo0/q8_169 ),
    .I1(\debo0/q7_170 ),
    .I2(\debo0/q6_171 ),
    .I3(\debo0/q5_172 ),
    .I4(\debo0/q4_173 ),
    .I5(N2),
    .O(outD)
  );
  IBUF   inShift_3_IBUF (
    .I(inShift[3]),
    .O(inShift_3_IBUF_0)
  );
  IBUF   inShift_2_IBUF (
    .I(inShift[2]),
    .O(inShift_2_IBUF_1)
  );
  IBUF   inShift_1_IBUF (
    .I(inShift[1]),
    .O(inShift_1_IBUF_2)
  );
  IBUF   inShift_0_IBUF (
    .I(inShift[0]),
    .O(inShift_0_IBUF_3)
  );
  IBUF   select_1_IBUF (
    .I(select[1]),
    .O(select_1_IBUF_4)
  );
  IBUF   select_0_IBUF (
    .I(select[0]),
    .O(select_0_IBUF_5)
  );
  IBUF   serialIn_IBUF (
    .I(serialIn),
    .O(serialIn_IBUF_6)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_8)
  );
  IBUF   step_IBUF (
    .I(step),
    .O(step_IBUF_9)
  );
  OBUF   outShift_3_OBUF (
    .I(\sr0/ff3/outFF_10 ),
    .O(outShift[3])
  );
  OBUF   outShift_2_OBUF (
    .I(\sr0/ff2/outFF_11 ),
    .O(outShift[2])
  );
  OBUF   outShift_1_OBUF (
    .I(\sr0/ff1/outFF_12 ),
    .O(outShift[1])
  );
  OBUF   outShift_0_OBUF (
    .I(\sr0/ff0/outFF_13 ),
    .O(outShift[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<30>_rt  (
    .I0(\ck0/i [30]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<30>_rt_193 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<29>_rt  (
    .I0(\ck0/i [29]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<29>_rt_194 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<28>_rt  (
    .I0(\ck0/i [28]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<28>_rt_195 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<27>_rt  (
    .I0(\ck0/i [27]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<27>_rt_196 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<26>_rt  (
    .I0(\ck0/i [26]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<26>_rt_197 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<25>_rt  (
    .I0(\ck0/i [25]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<25>_rt_198 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<24>_rt  (
    .I0(\ck0/i [24]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<24>_rt_199 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<23>_rt  (
    .I0(\ck0/i [23]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<23>_rt_200 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<22>_rt  (
    .I0(\ck0/i [22]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<22>_rt_201 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<21>_rt  (
    .I0(\ck0/i [21]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<21>_rt_202 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<20>_rt  (
    .I0(\ck0/i [20]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<20>_rt_203 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<19>_rt  (
    .I0(\ck0/i [19]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<19>_rt_204 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<18>_rt  (
    .I0(\ck0/i [18]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<18>_rt_205 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_rt  (
    .I0(\ck0/i [17]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<17>_rt_206 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_rt  (
    .I0(\ck0/i [16]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<16>_rt_207 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_rt  (
    .I0(\ck0/i [15]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<15>_rt_208 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_rt  (
    .I0(\ck0/i [14]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<14>_rt_209 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_rt  (
    .I0(\ck0/i [13]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<13>_rt_210 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_rt  (
    .I0(\ck0/i [12]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<12>_rt_211 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_rt  (
    .I0(\ck0/i [11]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<11>_rt_212 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_rt  (
    .I0(\ck0/i [10]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<10>_rt_213 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_rt  (
    .I0(\ck0/i [9]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<9>_rt_214 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_rt  (
    .I0(\ck0/i [8]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<8>_rt_215 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_rt  (
    .I0(\ck0/i [7]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<7>_rt_216 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_rt  (
    .I0(\ck0/i [6]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<6>_rt_217 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_rt  (
    .I0(\ck0/i [5]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<5>_rt_218 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_rt  (
    .I0(\ck0/i [4]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<4>_rt_219 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_rt  (
    .I0(\ck0/i [3]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<3>_rt_220 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_rt  (
    .I0(\ck0/i [2]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<2>_rt_221 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_rt  (
    .I0(\ck0/i [1]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_cy<1>_rt_222 )
  );
  FDC   \ck0/outClk  (
    .C(clock_BUFGP_7),
    .CLR(reset_IBUF_8),
    .D(\ck0/outClk_rstpot_223 ),
    .Q(\ck0/outClk_14 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \ck0/Mcompar_n0002_lutdi5  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<30> ),
    .I1(\ck0/i[31]_GND_2_o_add_1_OUT<31> ),
    .O(\ck0/Mcompar_n0002_lutdi5_24 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \ck0/Mcompar_n0002_lutdi4  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<29> ),
    .I1(\ck0/i[31]_GND_2_o_add_1_OUT<28> ),
    .I2(\ck0/i[31]_GND_2_o_add_1_OUT<27> ),
    .I3(\ck0/i[31]_GND_2_o_add_1_OUT<26> ),
    .I4(\ck0/i[31]_GND_2_o_add_1_OUT<25> ),
    .O(\ck0/Mcompar_n0002_lutdi4_27 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \ck0/Mcompar_n0002_lutdi3  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<24> ),
    .I1(\ck0/i[31]_GND_2_o_add_1_OUT<23> ),
    .I2(\ck0/i[31]_GND_2_o_add_1_OUT<22> ),
    .I3(\ck0/i[31]_GND_2_o_add_1_OUT<21> ),
    .I4(\ck0/i[31]_GND_2_o_add_1_OUT<20> ),
    .O(\ck0/Mcompar_n0002_lutdi3_30 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \ck0/Mcompar_n0002_lutdi2  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<19> ),
    .I1(\ck0/i[31]_GND_2_o_add_1_OUT<18> ),
    .I2(\ck0/i[31]_GND_2_o_add_1_OUT<17> ),
    .O(\ck0/Mcompar_n0002_lutdi2_33 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \ck0/Mcompar_n0002_lutdi1  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<14> ),
    .I1(\ck0/i[31]_GND_2_o_add_1_OUT<13> ),
    .I2(\ck0/i[31]_GND_2_o_add_1_OUT<12> ),
    .I3(\ck0/i[31]_GND_2_o_add_1_OUT<11> ),
    .O(\ck0/Mcompar_n0002_lutdi1_36 )
  );
  LUT4 #(
    .INIT ( 16'h15FF ))
  \ck0/Mcompar_n0002_lutdi  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<8> ),
    .I1(\ck0/i[31]_GND_2_o_add_1_OUT<7> ),
    .I2(\ck0/i[31]_GND_2_o_add_1_OUT<6> ),
    .I3(\ck0/i[31]_GND_2_o_add_1_OUT<9> ),
    .O(\ck0/Mcompar_n0002_lutdi_39 )
  );
  MUXCY   \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT110_cy  (
    .CI(\ck0/Mcompar_n0002_cy [5]),
    .DI(N0),
    .S(\ck0/Mmux_i[31]_GND_2_o_mux_3_OUT110_cy_rt_224 ),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT210  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<10> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<10> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT33  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<11> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<11> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT41  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<12> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<12> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT51  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<13> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<13> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT61  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<14> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<14> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT71  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<15> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<15> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT81  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<16> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<16> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT91  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<17> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<17> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT101  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<18> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<18> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT111  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<19> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<19> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT121  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<1> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT131  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<20> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<20> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT141  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<21> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<21> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT151  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<22> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<22> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT161  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<23> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<23> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT171  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<24> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<24> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT181  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<25> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<25> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT191  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<26> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<26> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT201  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<27> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<27> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT211  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<28> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<28> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT221  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<29> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<29> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT231  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<2> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT241  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<30> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<30> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT251  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<31> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<31> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT261  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<3> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT271  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<4> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT281  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<5> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT291  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<6> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT301  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<7> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT311  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<8> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<8> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT321  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<9> ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/i[31]_GND_2_o_mux_3_OUT<9> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \ck0/outClk_rstpot  (
    .I0(\ck0/outClk_14 ),
    .I1(\ck0/Mcompar_n0002_cy [5]),
    .O(\ck0/outClk_rstpot_223 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ck0/Mmux_i[31]_GND_2_o_mux_3_OUT110_cy_rt  (
    .I0(\ck0/i[31]_GND_2_o_add_1_OUT<0> ),
    .O(\ck0/Mmux_i[31]_GND_2_o_mux_3_OUT110_cy_rt_224 )
  );
  BUFGP   clock_BUFGP (
    .I(clock),
    .O(clock_BUFGP_7)
  );
  INV   \ck0/Madd_i[31]_GND_2_o_add_1_OUT_lut<0>_INV_0  (
    .I(\ck0/i [0]),
    .O(\ck0/Madd_i[31]_GND_2_o_add_1_OUT_lut<0> )
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

