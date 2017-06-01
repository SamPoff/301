`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.cim
// File Name: TopModule.v
// Date:      20Sep2016
// Version:   1.0
// 
// Notes: This module is the project's top module.
//		The inputs follow:
// Data Input (name: X [linked to SW[0] on board]).
// Mode Select (name: M [linked to SW[7] on board]).
// Clock (name: clock [linked to Nexys3 onboard oscillator]).
// One Shot Pulse (name: step [linked to BTND on board]).
// Reset (name: reset [linked to BTNU on board]).
// 	The outputs follow:
// Date Output (name: Z [linked to LED[0] on board]).
// State Output (name: Q [linked to LEDs[7:5] on board]).
//		This module's function is to instatiate and call the other modules in the 
// project. These include a clock divider, a debouncer, and a sequence detector.
// This module first instantiates a clock divider which accepts the system clock
// as input (100MHz), and outputs a stepped down clock signal (500Hz). This stepped 
// down clock signal is then sent to the debounce module as its clock input. The 
// debounce module takes in the step order from the user (BTND) and debounces it. 
// The resulting 'one shot pulse' is forwarded to the sequence detector as
// its clock input. Because the clock input to the sequence detector comes from
// a push button, we can observe the behavior of the final circuit on a 'tick by tick'
// basis. More detailed explanations of these modules can be found in their file
// headers.
//////////////////////////////////////////////////////////////////////////////////

module TopModule(X, M, clock, step, reset, Q, Z);

	// Inputs
	input        X ;
	input        M ;
	input    clock ;
	input     step ;
	input    reset ;

	// Outputs
	output       Z ;
	output [2:0] Q ;

   // Recieves the system clock (100MHz) and steps it
	// down to 500Hz. The output signal (outClk) goes 
	// to the clock input for the debounce module.
	clockDivider ck_0(clock, reset, outClk);
	
	// Recieves the button push (BTND) for the clock 
	// step and debounces the signal / creates a one
	// shot pulse from the signal, to be used as
	// the clock pulse for the sequence detector.
	debounce debo_0(step, outClk, reset, outD);
	
	// Checks if the sequence has been observed, and
	// outputs a one to LED[0] if it has. Clock input
	// comes from the output of the debounce module
	// (outD).
	sequenceDetector seq_0(outD, reset, X, M, Q, Z);

endmodule