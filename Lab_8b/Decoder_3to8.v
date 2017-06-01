`timescale 1ns / 1ps

/***************************************************************
*
* Author:	Chanartip Soonthornwan
* Email: 	Chanartip.Soonthornwan@student.csulb.edu
* Filename:	Decoder_3to8_Decoder.v
* Date: 		October 14, 2016
* Version: 	1.0
*
* Purpose: 	If this Decoder is enable(en is HIGH), it will send HIGH
*           to a register according to the 3-bit input(in). 
*           For example, if in is 000, it will send HIGH to register 0,
*                        if in is 001, it will send HIGH to register 1,
*                        if in is 111, it will send HIGH to register 7,
*                    and it will send LOW to all registers by default.
*           If this Decoder is not enable(en is LOW), it will send LOW
*           to all registers.
*
* Notes:	   There are 3 instances of this Decoder in this lab which each
*           Decoder has two purposes; writing or reading address.
*           If the output sends 1 to the selected register, the register
*           will be written data Input from switches when the en is on.
*           On the other hands, if the output is 1 for the selected register,
*           the data inside the register will be read.
* 
****************************************************************/

module Decoder_3to8( en, in, y );
    input            en;               //Enable
    input      [2:0] in;               //Selection input
    output reg [7:0]  y;               

   always @(en or in) begin
      if(en)                           //Enable
         case(in)
            3'b000: y = 8'b0000_0001;  //Turn on Register0
            3'b001: y = 8'b0000_0010;  //Turn on Register1
            3'b010: y = 8'b0000_0100;  //Turn on Register2
            3'b011: y = 8'b0000_1000;  //Turn on Register3
            3'b100: y = 8'b0001_0000;  //Turn on Register4
            3'b101: y = 8'b0010_0000;  //Turn on Register5
            3'b110: y = 8'b0100_0000;  //Turn on Register6
            3'b111: y = 8'b1000_0000;  //Turn on Register7
            default: y = 8'h00;        //Turn off all Registers
         endcase
      else                             //Not enable
         y = 8'h00;                    //Turn off all Registers
      
   end
endmodule
