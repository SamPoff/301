`timescale 1ns / 1ps

/***************************************************************
*
* Author:	Chanartip Soonthornwan
* Email: 	Chanartip.Soonthornwan@student.csulb.edu
* Filename:	reg16.v
* Date: 		October 14, 2016
* Version: 	1.0
*
* Purpose: 	This Register is to memorize the data input(Din) and
*           passes it to the next clock cycle until load enable(ld)
*           is applied. If ld, the register will memorize the most
*           current Din. 
*           This Register will also send the memorized data out when
*           an enable( oeA for R and oeB for S ) is on.
*           If oeA or oeB is on, the Register will sent the memorized
*           data out, otherwise it will be in high impedance state.
*
* Notes:		This Register is tri-state register that has High Impedance mode,
*           which will hold the data until it is enable.
* 
****************************************************************/

module reg16(clk, reset, ld, Din, DA, DB, oeA, oeB);

   input         clk, reset, ld, oeA, oeB;      
   input  [15:0] Din;                           //Input W
   output [15:0] DA, DB;                        //Output for R and S
   reg    [15:0] Dout;

   // behavioral section for writing to the register
   always @(posedge clk or posedge reset)
      if (reset)
            Dout <= 16'b0;
      else
      if (ld)                                //Load new data
            Dout <= Din;
      else  Dout <= Dout;                    //Keep previous data
         
   // conditional continuous assignments for reading the register
   //If the selection is not selected, it will be in High Impedance.
   assign DA = oeA ? Dout : 16'hz;              
   assign DB = oeB ? Dout : 16'hz;
   
endmodule

