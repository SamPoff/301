`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.cim
// File Name: d_ff.v
// Date:      13Sep2016
// Version:   1.0
// 
// Notes: This module creates a D flip flop.
// 	The module has three inputs and one output. 
// 	The inputs follow:
// Data in (name: inFF [linked to output of mux]).
// Clock (name: clock [linked to output of debounce.v, and by extention BTND]).
// Reset (name: reset [linked to BTNU on board]).
// 	The output follows:
// Data out (name: outFF [liked to LEDs [3:0] on board]).
// 	The function of a D flip flop is to capture the data on the input line during 
// the rising edge of the clock (as specified in the always block) and hold that data
// until it is needed. When that bit is needed the flip flop will change the value
// of its output depending on the value of the control input. 
// 	The logic for this flip flop is implemented with clocked logic. It is triggered
// by the positive edge of the clock and the reset; pushing the input through to the
// output, and setting the output to zero, respectively. 
//////////////////////////////////////////////////////////////////////////////////

module d_ff (inFF, clock, reset, outFF);

   // Initialize inputs.
	input inFF;    // Data Input
   input clock;   // Clock Input
   input reset;   // Reset input 
   output outFF;  // Data output
	reg  outFF;    // Registered output for clocked logic    
  
	// Always block dictates the logic.
   always@(posedge clock or posedge reset) begin
		if (reset) begin
			outFF <= 1'b0;
		end// End if
	   else 
			outFF <= inFF; // Blocking with any clocked logic
	end// End always
	
endmodule