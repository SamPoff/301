`timescale 1ns / 1ps
//1ns, time units
//1ps, resolution


////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:36:45 08/30/2016
// Design Name:   d_ff
// Module Name:   C:/Xilinx/d_flip_flop_test/tb_d_ff.v
// Project Name:  d_flip_flop_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: d_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_d_ff;

	// Inputs
	reg d;
	reg clk;
	reg reset;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	d_ff uut (
		.d(d), 
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	// generate a 100ns clock period outside initial block
	always #50 clk = ~clk;//alternates between 50ns down and 50 up.
	
	
	//assign values inside the inital block
	initial begin
		// Initialize Inputs
		{clk, reset, d} = 3'b000; //t = 0

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

