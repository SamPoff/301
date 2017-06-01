`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.cim
// File Name: sequenceDetector.v
// Date:      20Sep2016
// Version:   1.1
// 
// Notes: This module creates a non-overlapping sequence detector which searches
// for the pattern "010110".
// 	The inputs follow:
// Clock (name: clock [linked to output from debounce.v]).
// Reset (name: reset [linked to BTNU on board]).
// Data Input (name: X [linked to SW[0] on board]).
// Mode Select (name: M [linked to SW[7] on board]).
// 	The output follows:
// Date Output (name: Z [linked to LED[0] on board]).
// State Output (name: Q [linked to LEDs[7:5] on board]).
// 	This module creates both mealy and moore style non-overlapping sequence 
// detectors. The user is able to dictate which style of sequence detector should be
// implemented by toggling SW[7]. If the mode selector is set to zero then the moore
// style detector will be used, otherwise a mealy detector will be used.
// 	A finite state machine has three main parts: 
// 1.	Next State Logic (the logic which dictates the input to the state memory), 
// 2.	State Memory (takes the output from the next state logic as its input and saves it), and 
// 3.	Output Logic (takes the output from the state memory as an input [as well as the
// FSM's inputs in the case of a mealy style machine] and provides the final output).
// 	This module first instantiates three assignments which dictate the inputs to the 
// d-ff's in the circuit (moore_d[2:0] / mealy_d[2:0]). The value of these assignments 
// is dictated by the current state and inputs of the circuit, so their values 
// can change with each clock pulse. 
// 	It then instantiates three d-ff's for which the outputs from the previously 
// mentioned assignments become inputs (moore_d[2:0] / mealy_d[2:0]). The outputs 
// from these d-ff's then become inputs to the next state logic assignments 
// (Moore_Q[2:0] / Mealy_Q[2:0]).
// 	Lastly, this module instantiates the circuit's output logic (moore_Z / mealy_Z).
// These assignments are dictated by the output from the d-ff's (Moore_Q / Mealy_Q) 
// as well as the FSM's inputs in the case of the mealy machine.
//
// Revision Date: 25Sep2016
// Version:       1.1
// Change:        Changed the next state logic to make the circuit an 'overlapping'
// 			sequence detector. Minimal changes were made from Lab2; moore_d1 has had
//				one expression added, mealy_d0 had been completely changed. All else
//				remains the same.
//////////////////////////////////////////////////////////////////////////////////

module sequenceDetector(clock, reset, X, M, Q, Z);

	// Inputs
	input        clock ;
	input        reset ;
	input            X ;
	input            M ;

	// Outputs
	output     [2:0] Q ;
	output           Z ;

	// Wires from state memory (d-ff's) back to next state logic.
	wire [2:0] Moore_Q ;
	wire [2:0] Mealy_Q ;  

	//*****************************************************
	// Moore sequence detector for a serial input sequence.
	//*****************************************************

	//Next state combinational logic.
	assign moore_d0 = (~Moore_Q[0] & ~X)                        |
							(~Moore_Q[2] & ~X)                        |
							(Moore_Q[2] & ~Moore_Q[1] & ~Moore_Q[0]) ;
							 
	assign moore_d1 = (Moore_Q[2] & Moore_Q[1] & X)                 |
							(Moore_Q[2] & ~Moore_Q[1] & ~X)               |
							(~Moore_Q[2] & Moore_Q[1] & ~Moore_Q[0] & ~X) |
							(~Moore_Q[2] & ~Moore_Q[1] & Moore_Q[0] & X) ;
							
	assign moore_d2 = (Moore_Q[1] & Moore_Q[0] & X)                 |
							(Moore_Q[2] & Moore_Q[0] & ~X)                |
							(Moore_Q[2] & ~Moore_Q[1] & ~Moore_Q[0] & X) ;
							
	// State register using d-ff instances.
	d_ff moore_q0 (moore_d0, clock, reset, Moore_Q[0]);
	d_ff moore_q1 (moore_d1, clock, reset, Moore_Q[1]);
	d_ff moore_q2 (moore_d2, clock, reset, Moore_Q[2]);

	// Output combinational logic.
	assign moore_Z = (Moore_Q[2] & Moore_Q[1] & ~Moore_Q[0]);

	//*****************************************************
	// Mealy sequence detector for a serial input sequence.
	//*****************************************************

	// Next state combinational logic.
	assign mealy_d0 = (~X) |
							(Mealy_Q[2] & ~Mealy_Q[0]) ;

	assign mealy_d1 = (Mealy_Q[2] & ~Mealy_Q[0] & ~X) |
							(Mealy_Q[1] & ~Mealy_Q[0] & ~X) |
							(~Mealy_Q[2] & ~Mealy_Q[1] & Mealy_Q[0] & X) ;

	assign mealy_d2 = (Mealy_Q[2] & ~Mealy_Q[0] & X) |
							(Mealy_Q[1] & Mealy_Q[0] & X) ;
							
	// State register using d-ff instance.
	d_ff mealy_q0 (mealy_d0, clock, reset, Mealy_Q[0]);
	d_ff mealy_q1 (mealy_d1, clock, reset, Mealy_Q[1]);
	d_ff mealy_q2 (mealy_d2, clock, reset, Mealy_Q[2]);

	// Output combinational logic.
	assign mealy_Z = (Mealy_Q[2] & ~Mealy_Q[1] & Mealy_Q[0] & ~X);

	// Decision logic to switch between mealy and moore.
	// Decision is dependent on the mode.
	// Mode == 1; mealy. Mode == 0; moore.
	assign {Q, Z} = (~M) ? {Moore_Q, moore_Z} : {Mealy_Q, mealy_Z};

endmodule


