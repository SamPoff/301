`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.com
// File Name: TopModule.v
// Date:      13Sep2016
// Version:   1.0
// 
// Notes: This module is the project's top module. 
// 	This module has six inputs and one output. 
//    The inputs follow:
// Data In (name: inShift [linked to toggle switches [3:0] on board]).
// Mode Select (name: select [linked to toggle switches [7:6] on board]).
// Serial Input (name: serialIn [linked to toggle switch [5] on board]).
// Clock (name: clock [linked to Nexys3 on board oscillator]).
// Reset (name: reset [linked to push button BTNU on board]).
// Activate Clock Pulse (name: step [linked to push button BTND on board]).
// 	The output follows:
// Data out (name: outShift [linked to LEDs [3:0] on board]).
// 	Its function is to instantiate all other modules (aside from d_ff and mux_4to1
// as they are instantiated within the shift_register module), specify what data is 
// to enter and exit the circuit, and where said data should be routed 
// within the circuit. 
//////////////////////////////////////////////////////////////////////////////////

module topModule(inShift, select, serialIn, clock, reset, step, outShift);

	input  [1:0] select;
	input  [3:0] inShift;
	input        serialIn;
	input        clock;
	input        reset;
	input        step;
	
	output [3:0] outShift;

	clockDivider ck0(clock, reset, outClk);
	
	debounce debo0(step, outClk, reset, outD);
	
	shift_register sr0(inShift, select, serialIn, outD, reset, outShift);

endmodule
