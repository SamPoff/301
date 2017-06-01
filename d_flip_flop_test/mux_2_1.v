`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:18:27 08/30/2016 
// Design Name: 
// Module Name:    mux_2_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux_4_1(
    input [3:0] d,
    input [1:0] s,
    output reg y
    );
	 
	 always @ (d, s) // always always has all the inputs
	 begin         // a
		if (s == 2'b0) begin
			y = d[0];
		end//end if
		else begin
			y = d[1]; 
		end//end else
	 end//end always
endmodule

