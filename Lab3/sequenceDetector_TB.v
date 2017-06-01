`timescale 1ps / 100fs

//////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.cim
// File Name: sequenceDetector_TB.v
// Project:   Lab2_301
// Date:      20Sep2016
// Version:   1.0
// 
// Notes: This test bench tests the performance of the sequence detector module.
// As such, it shares the same inputs and outputs as the sequence detector, however
// in this case we have full control over the inputs. In order to test the circuit
// we have instantiated a fourty-nine bit input which will take the place of our 'X'
// inputs for any given clock tick.
//////////////////////////////////////////////////////////////////////////////////

module sequenceDetector_TB;

	// Inputs
	reg clock;
	reg reset;
	reg X;
	reg M;

	// Outputs
	wire [2:0] Q;
	wire Z;
	
	// Local Declarations
	reg [48:0] sequence_pattern ;
	integer i ;

	// Instantiate the Unit Under Test (UUT)
	sequenceDetector uut (
		.clock(clock), 
		.reset(reset), 
		.X(X), 
		.M(M), 
		.Q(Q), 
		.Z(Z)
	);
	
	// Genearate a 10 ps clock
	always
		#5 clock = ~clock;
		
	// Initial block for the test vectors, applied every clock cycle.
	initial begin
	
	$timeformat(-12, 1, " ps", 8);
	
		// Initialize Inputs
		clock = 0;
		reset = 0;
		X = 0;
		M = 0;
		
		sequence_pattern = 48'b010101101011000110101101011011101001011001011011;
		@(negedge clock)
			reset = 1; 
		@(negedge clock)
			reset = 0;
			M = 1; 
			/*
			Moore implementation (M = 0). To simulate the Mealy implementation
			set M = 1 and "re-run" the simulation to get a new waveform.
			*/
			
			
		// This lop will "feed" the sequence detector with the
		// test sequence pattern from MSB to LSB.
		for (i = 48; i > 0; i = i - 1) begin
		
			// Change inputs on negative edge of clock.
			@(negedge clock)
				X = sequence_pattern[i];
			// Display outputs after the positive clock.
			@(posedge clock)
				#1 $display("Time = %t X = %b Q = %b Z = %b", $time, X, Q, Z);
		
		end// End for
		
		$stop;
		
	end // End initial
      
endmodule
