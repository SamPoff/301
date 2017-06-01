`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.com
// File Name: shift_register.v
// Date:      13Sep2016
// Version:   1.0
// 
// Notes: This module creates a shift register. 
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
// 	Its function is to instantiate the multiplexers and D-flipflops which make 
// up the shift register. The multiplexers provide decision logic and control which
// bit of data will be outputted into the D-flipflop. The flipflop can then save 
// that bit and continue outputing it if necessary. A more detailed explanation of
// how the multiplexers and flipflops operate can be found in the headers of their
// respective files.
//////////////////////////////////////////////////////////////////////////////////

module shift_register(inShift, select, serialIn, clock, reset, outShift);

	input  [1:0] select;
	input  [3:0] inShift;
	input        serialIn;
	input        clock;
	input        reset;
	
	output [3:0] outShift; 
	
	wire w0, w1, w2, w3;
	
	// Instantiate the four muxs with the appropriate port mapping.
	// Port mapping algorithm was dictated by the M[1:0] functions specified on the 
	//lab sheet.
	mux_4to1 mux0(select[1:0], {outShift[3], outShift[1], inShift[0], outShift[0]}, w0);
	mux_4to1 mux1(select[1:0], {outShift[0], outShift[2], inShift[1], outShift[1]}, w1);
	mux_4to1 mux2(select[1:0], {outShift[1], outShift[3], inShift[2], outShift[2]}, w2);
	mux_4to1 mux3(select[1:0], {outShift[2], serialIn, inShift[3], outShift[3]}, w3);
	
	// Instantiate the four D-flipflops with the appropriate port mapping.
	// Wires from mux provide input to flipflops.
	d_ff ff0(w0, clock, reset, outShift[0]);
	d_ff ff1(w1, clock, reset, outShift[1]);
	d_ff ff2(w2, clock, reset, outShift[2]);
	d_ff ff3(w3, clock, reset, outShift[3]); 

endmodule
