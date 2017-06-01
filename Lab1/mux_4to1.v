`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.cim
// File Name: mux_4to1.v
// Date:      13Sep2016
// Version:   1.0
// 
// Notes: This module creates a four to one multiplexer. 
//		It has two inputs and one output.
// 	The inputs follow:
// Mode Select (name: select [linked to toggle switches [7:6] on board]).
// Data In (name: inMux [linked to toggle switches [3:0] on board]).
// 	The outputs follow:
// Data out (name: outMux [linked to data in for d_ff.v via wire]). 
//    The function of a multiplexer follows; there are four inputs coming into 
// it, one of these inputs will be sent through as an output. Which input gets 
// sent through is a function of the "select" input. 
//    This logic is implemented using an assign statement. Whichever mode the select
// is set to (options zero through three) dictates which pin should be outputted
// from the mux. For instance in mode zero, the zeroith bit from the input (inMux[0])
// is passed as an output. If the mode is set to one, inMux[1] is pushed through, etc.
////////////////////////////////////////////////////////////////////////////////// 

module mux_4to1(select, inMux, outMux);
   
	// Initialize inputs.
   input [1:0] select;
	input [3:0] inMux;
	output outMux;
	
	// Assign outputs.
	assign outMux = inMux[select];

endmodule

