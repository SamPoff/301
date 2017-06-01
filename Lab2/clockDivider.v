`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.cim
// File Name: clockDivider.v
// Date:      13Sep2016
// Version:   1.1
// 
// Notes: This module creates a clock divider.
// 	The inputs follow:
// Clock In (name: inClk [linked to Nexys3 onboard oscillator]).
// Reset (name: reset [linked to BTNU on board]).
// 	The output follows:
// Clock Out (name: outClk [linked to clock input of sequenceDetector.v]).
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
//
// Revision Date: 16Sep2016
// Version:       1.1
// Change:        Added back the comments from the clock divider template which
// 				were absent in the first draft, and refined IO explanation in 
//             the notes block.
//////////////////////////////////////////////////////////////////////////////////

module clockDivider(inClk, reset, outClk);

	// Initialize parameters.
	input   inClk;
	input   reset;
	output  outClk;
	
	// Register for clocked logic.
	reg     outClk;
	integer i;
	
	/***********************************************************
	The following verilog code will "divide" an incoming clock
	by the 32-bit decimal value specified in the "if condition."
	
	The value of the counter that counts the incoing clock ticks 
	is equal to [ (Incoming Freq / Outgoing Freq) / 2 ]
	***********************************************************/

	always @ (posedge inClk or posedge reset) begin
	
		if (reset == 1'b1) begin
			i = 0;
			outClk = 0;
		end// End if
		
		// Got a clock, so increment the counter and
		// test to see if half a period has elapsed.
		
		else begin
			i = i + 1;
			if (i >= 100_000) begin
				outClk = ~outClk;
				i = 0;
			end// End if
		end// End else
		
	end// End always
	
endmodule
