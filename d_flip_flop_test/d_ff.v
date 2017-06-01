`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:06:35 08/30/2016 
// Design Name: 
// Module Name:    d_ff 
// Project Name: D-flip-flop and mux test.
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

	

module d_ff (
	input  wire d  ,    // Data Input
   input  wire clk   , // Clock Input
   input  wire reset , // Reset input 
   output reg  q       // Q output
   );
  
   // clock logic always needs an always block. for combinational it can be assignment.
   always@(posedge clk, reset) begin
		if (reset == 1'b1) 
			q <= 1'b0;
	   else 
			q <= d; //blocking with any clocked logic
	end
	
endmodule //End Of Module dff_async_reset