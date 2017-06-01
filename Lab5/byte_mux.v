`timescale 1ns / 1ps

/***************************************************************
*
* Author:	Chanartip Soonthornwan
* Email: 	Chanartip.Soonthornwan@student.csulb.edu
* Filename:	byte_mux.v
* Date: 		Oct 9, 2016
* Version: 	1.0
*
* Purpose: 	This module is a multiplexer selecting one 8-bit output(Q)
*           from two 8-bit inputs based on selection input(select).
* 
* Notes:		select is the Nexys3 on board left push button (btnL).
*           
*           if select is 	00, input hi will be output.
*				if select is	01, input lo will be output.
* 
****************************************************************/

module byte_mux(
    input [7:0] hi,           //8-bit output from address sequencer
    input [7:0] lo,           //8-bit output from ram ( dout[15:8] )
    input select,             //Button left input from Nexys3
    output reg [7:0] b_out    
    );

always @ (select)
   case(select) 
      0 : b_out = hi;
      1 : b_out = lo;
      default b_out = 8'h00;  
   endcase
endmodule