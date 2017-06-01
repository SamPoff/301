`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.com
// File Name: clockDivider.v
// Date:      13Sep2016
// Version:   1.0
// 
// Notes: This module creates a clock divider.
// 	It has two inputs and one output. The inputs are the system clock (inClk),
// a reset (reset), and the output is a slowed down clock pulse (500Hz) which is 
// labeled "outClk." 
// 	The funtion of this clock divider is to slow down the internal clock so that
// the circuit has ample time for signal propagation.
// 	This module works via an always block triggered on the positive edge of either
// the system clock or the reset. When the positive edge of the clock is sensed the 
// circuit begins counting. When it counts to a number greater than 100,000 the 
// the output is toggled to its inverse (clock goes from positive to negative), 
// and on the next clock pulse the circuit begins counting again. In this way it 
// shortens the length of time that the clock is in its positive level state, and 
// increses its time in the low state. If the circuit senses that the reset button
// is being pushed it will set the output to zero.
//////////////////////////////////////////////////////////////////////////////////

module clockDivider(inClk, reset, outClk);

	// Initialize parameters.
	input   inClk;
	input   reset;
	output  outClk;
	
	// Register for clocked logic.
	reg     outClk;
	integer i;

	always @ (posedge inClk or posedge reset) begin
	
		if (reset == 1'b1) begin
			i = 0;
			outClk = 0;
		end// End if
		
		else begin
			i = i + 1;
			if (i >= 100_000) begin
				outClk = ~outClk;
				i = 0;
			end// End if
		end// End else
		
	end// End always
	
endmodule
