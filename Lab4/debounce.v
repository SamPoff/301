`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.cim
// File Name: debounce.v
// Date:      13Sep2016
// Version:   1.0
// 
// Notes: This module creates a debounce circuit.
// 	The inputs follow:
// Activate Clock Pulse (name: inD [linked to BTND on board]).
// Clock (name: clock [linked to output from clockDivider.v]).
// Reset (name: reset [linked to BTNU on board]).
// 	The output follows:
// One-Shot Pulse (name: outD [linked to clock input for shift_register.v]).
// 	This module's function is to debounce the input signal from the step
// button (BTND). 
// 	When a switch is pressed the signal does not instantaneously rise from low
// to high, rather it "bounces" from low to high over the period of approximately 
// ten to twenty milliseconds. This module works, in essence, by waiting for the
// signal to stop bouncing before it is recognized as a button push. A more detailed
// explanation follows.
// 	This module waits out the bouncing by creating a ten bit shift register, and
// only registering a button press when sufficient bits are simultaneously in the 
// positive state. On each clock pulse a one or zero is shifted into the register.
// If the signal is still bouncing then the register will fill with both ones and 
// zeros, however if the signal has stabalized then the register will contain only 
// ones. When the register containes all ones (except for register q9 which will 
// contain a zero) the circuit will output a one. This is accomplished via an assign
// statement which logically 'and's all of the bits in the register, with q9 inverted.
// Because q9 is inverted the system will only output a one if q0 - q8 are ones, and
// q9 is a zero. Because q9 is inverted the problem of what would happen if someone
// holds down the button is circumvented. If the button is held down for long enough
// that the register is filled with ten ones, the inverted q9 will make the output
// zero. In this way the circuit will only produce one pulse per push of the button.
//////////////////////////////////////////////////////////////////////////////////

module debounce(inD, clock, reset, outD);

	input inD;
	input clock;
	input reset;
	output outD;
	
	// Reg for clocked logic.
	wire outD;
	reg q9, q8, q7, q6, q5, q4, q3, q2, q1, q0;
	
	always @ (posedge clock or posedge reset) begin
		if (reset == 1'b1) begin
			{q9, q8, q7, q6, q5, q4, q3, q2, q1, q0} <= 10'b0;
		end// End if
		else begin
			q9 <= q8; q8 <= q7; q7 <= q6; q6 <= q5; q5 <= q4;
			q4 <= q3; q3 <= q2; q2 <= q1; q1 <= q0; q0 <= inD;
		end// End else
	end// End always
	
	// Outputs 1 when ([q8:q0] == 1), and (q9 == 0).
	assign outD = !q9 & q8 & q7 & q6 & q5
					 & q4 & q3 & q2 & q1 & q0; 

endmodule