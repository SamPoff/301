`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:54:04 09/06/2016
// Design Name:   adder_4_b_v
// Module Name:   C:/Xilinx/HW1/tb_adder_4_B_V.v
// Project Name:  HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_4_b_v
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_adder_4_B_V;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg C0;

	// Outputs
	wire [3:0] S;
	wire C4;

	// Instantiate the Unit Under Test (UUT)
	adder_4_b_v uut (
		.A(A), 
		.B(B), 
		.C0(C0), 
		.S(S), 
		.C4(C4)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		A = 4'b0001;
		B = 4'b0001;
		C0 = 4'b0001;
		
		#30

		A = 1'b1001;
		B = 1'b1001;
		C0 = 1'b1011;
		
		#30
		
		A = 1'b1010;
		B = 1'b1010;
		C0 = 1'b0110;
		
		#30
			
		A = 1'b0000;
		B = 1'b0001;
		C0 = 1'b1011;
		
		#30
			
		A = 1'b1010;
		B = 1'b0101;
		C0 = 1'b0001;
		
		#30
			
		A = 1'b0011;
		B = 1'b0011;
		C0 = 1'b0011;
		
		#30
		
		A = 1'b1001;
		B = 1'b1111;
		C0 =1'b0000;
		
		#30
		
		A = 1'b0000;
		B = 1'b1111;
		C0 = 1'b0101;

	end
      
endmodule

