`timescale 1ns / 1ps
/***************************************************************
*
* Author:	Chanartip Soonthornwan
* Email: 	Chanartip.Soonthornwan@student.csulb.edu
* Filename:	Register_File.v
* Date: 		October 15, 2016
* Version: 	1.0
*
* Purpose: 	A Memory using 8 instances of register to memorize
*           16-bit data(W) and return the 16-bit data to 
*           two channel outputs R and S.
*
* Notes:		A register overwrites a 16-bit data(W) to either R or S
*           when the register is addressed by W_Adr. Likewise, the 
*           register reads its data when it's addressed by R_Adr
*           or S_Adr, therefore, there are two datas on 4 pixels of 
*           7-segment display; 2 reserved for R, and another 2 for S.
* 
****************************************************************/
module Register_File(
    input    clk, reset,
    input            we,      //write enable
    input   [2:0] W_Adr,      //Write address
    input   [2:0] R_Adr,      //R address
    input   [2:0] S_Adr,      //S address
    input  [15:0]     W,      //Write data in
    output [15:0]     R,      //R data out
    output [15:0]     S       //S data out
    );
    
    // Interconnection wires
    wire   [7:0] W_mux_out, R_mux_out, S_mux_out;    
    
   // Seven instances register used to collect 16-bit data(W), and return the data
   // to the top level when the channel R or S is enable.
   //         clk, reset,           ld, Din, DA, DB,          oeA,          oeB
   reg16  r0( clk, reset, W_mux_out[0],   W,  R,  S, R_mux_out[0], S_mux_out[0] ),
          r1( clk, reset, W_mux_out[1],   W,  R,  S, R_mux_out[1], S_mux_out[1] ),
          r2( clk, reset, W_mux_out[2],   W,  R,  S, R_mux_out[2], S_mux_out[2] ),
          r3( clk, reset, W_mux_out[3],   W,  R,  S, R_mux_out[3], S_mux_out[3] ),
          r4( clk, reset, W_mux_out[4],   W,  R,  S, R_mux_out[4], S_mux_out[4] ),
          r5( clk, reset, W_mux_out[5],   W,  R,  S, R_mux_out[5], S_mux_out[5] ),
          r6( clk, reset, W_mux_out[6],   W,  R,  S, R_mux_out[6], S_mux_out[6] ),
          r7( clk, reset, W_mux_out[7],   W,  R,  S, R_mux_out[7], S_mux_out[7] );

   // Decoder selecting 3-bit input from switches to select a register on at a time.
   //                    en,    in,         y
   Decoder_3to8 W_Mux(   we, W_Adr, W_mux_out ),
                R_Mux( 1'b1, R_Adr, R_mux_out ),
                S_Mux( 1'b1, S_Adr, S_mux_out );

endmodule