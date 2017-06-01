`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:42:12 09/11/2016
// Design Name:   shift_register
// Module Name:   C:/Xilinx/Lab1/shiftRegTB.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shiftRegTB;

	// Inputs
	reg [3:0] inShift;
	reg [1:0] select;
	reg serialIn;
	reg clock;
	reg reset;

	// Outputs
	wire [3:0] outShift;

	// Instantiate the Unit Under Test (UUT)
	shift_register uut (
		.inShift(inShift), 
		.select(select), 
		.serialIn(serialIn), 
		.clock(clock), 
		.reset(reset), 
		.outShift(outShift)
	);

	initial begin
		// Initialize Inputs
		inShift = 0;
		select = 0;
		serialIn = 0;
		clock = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

