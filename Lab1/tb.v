`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.com
// File Name: shift_register.v
// Date:      13Sep2016
// Version:   1.0
// 
// Notes: This module creates a test bench for the shift register. 
// 	This module has six inputs and one output. 
//    The inputs follow;
// Data In (name: inShift [linked to toggle switches [3:0] on board]).
// Mode Select (name: select [linked to toggle switches [7:6] on board]).
// Serial Input (name: serialIn [linked to toggle switch [5] on board]).
// Clock (name: clock [linked to Nexys3 on board oscillator]).
// Reset (name: reset [linked to push button BTNU on board]).
// Activate Clock Pulse (name: step [linked to push button BTND on board]).
// 	The output follows;
// Data out (name: outShift [linked to LEDs [3:0] on board]).
// 	Its function is to instantiate the shift register, and provide inputs to 
// its modules so we can see how the circuit will react to a given input. This 
// makes debugging much easier as we don't have to download the circuit to an
// FPGA every time we want to observe the circuit's behavior.
//////////////////////////////////////////////////////////////////////////////////

module tb;

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

   // Generate clock with a ten nanosecond period.
	always 
		#5 clock = ~clock;

	// Initialize Inputs
	
	initial begin
		$timeformat(-9, 1, " ns", 6);
		clock = 0;
		reset = 0;
		inShift = 0;
		select = 0;
		serialIn = 0;
		
		// These two clocks take care of reset
		@(negedge clock)
			reset = 1;
		@(negedge clock)
			reset = 0;
			
		// Exercise load function
		@(negedge clock)
			{reset, select, inShift, serialIn} = 8'b0_01_1011_x;
		// Exercise no change function
		@(negedge clock)
			{reset, select, inShift, serialIn} = 8'b0_00_xxxx_x;
		// Exercise shift right function, si = 0. 
		@(negedge clock)
			{reset, select, inShift, serialIn} = 8'b0_10_xxxx_1;
		// Exercise shift right function, si = 1.
		@(negedge clock)
			{reset, select, inShift, serialIn} = 8'b0_10_xxxx_0;
		// Exercise no change function
		@(negedge clock)
			{reset, select, inShift, serialIn} = 8'b0_00_xxxx_x;
		// Exercise shift left function
		@(negedge clock)
			{reset, select, inShift, serialIn} = 8'b0_11_xxxx_x;
		// Exercise shift left function
		@(negedge clock)
			{reset, select, inShift, serialIn} = 8'b0_11_xxxx_x;
		// Exercise no change function
		@(negedge clock)
			{reset, select, inShift, serialIn} = 8'b0_00_xxxx_x;
		$finish;

	end
      
endmodule

