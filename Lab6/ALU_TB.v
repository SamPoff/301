`timescale 1ns / 1ps
/***************************************************************
*
* Author:	Chanartip Soonthornwan
* Email: 	Chanartip.Soonthornwan@student.csulb.edu
* Filename:	ALU_TB.v
* Date: 		October 23, 2016
* Version: 	1.0
*
* Purpose: 	Testing ALU calculation by passing two different 'non-zero'
*           input and check if the outputs from each modes are correct.
*
****************************************************************/

module ALU_TB;

	// Inputs
	reg [15:0] R;
	reg [15:0] S;
	reg [3:0] Alu_Op;

	// Outputs
	wire [15:0] Y;
	wire N;
	wire Z;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	ThreeZeroOne_alu uut (
		.R(R), 
		.S(S), 
		.Alu_Op(Alu_Op), 
		.Y(Y), 
		.N(N), 
		.Z(Z), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		R = 16'hAAFF;
		S = 16'h1234;
		Alu_Op = 0;

		// Wait 100 ns for global reset to finish
		#5;
        
		// Add stimulus here
      #5 Alu_Op = 4'b0000;
      #5 Alu_Op = 4'b0001;
      #5 Alu_Op = 4'b0010;
      #5 Alu_Op = 4'b0011;
      #5 Alu_Op = 4'b0100;
      #5 Alu_Op = 4'b0101;
      #5 Alu_Op = 4'b0110;
      #5 Alu_Op = 4'b0111;
      #5 Alu_Op = 4'b1000;
      #5 Alu_Op = 4'b1001;
      #5 Alu_Op = 4'b1010;
      #5 Alu_Op = 4'b1011;
      #5 Alu_Op = 4'b1100;
      #5 Alu_Op = 4'b1101;
      #5 Alu_Op = 4'b1110;
      #5 Alu_Op = 4'b1111;
      #5 $finish;
	end
      
endmodule

