`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.cim
// File Name: hex_to_7segment.v
// Date:      25Sep2016
// Version:   1.0
// 
// Notes: This module allows the output of the circuit to be displayed in decimal
// on the Nexys3 seven segment display. 
// 	The inputs follow:
// Hexidecimal Input (name: hex [linked to 'Q', or rather the present state of the
// machine, but with an extra zero concatenated as the MSB]).
// 	The outputs follow:
// Segment Display Assertions (name: a,b,c,d,e,f,g [linked to the individual
// segments of the seven segment display.
//		This module's function is to tell the board which number to display
// based on the current state of the circuit.
// 	The circuit selects which segment should be asserted based on the case statement
// seen below. At any point if the input to the module (hex) changes then the circuit 
// will assert the segments it is assigned to assert based on that input. Ie; if the 
// input is 4'b0000, then the cicuit is in state zero, and the module will output
// 7'b0000001. Note that the logic is inverted when asserting the display segments.
// 7'b0000001 tells the circuit to turn on displays 'a'-'f', and turn off display 'g'.
//////////////////////////////////////////////////////////////////////////////////

module hex_to_7segment(hex, a, b, c, d, e, f, g);

	input [3:0] hex;
	
	output reg a, b, c, d, e, f, g;

	// The stimulus to change the output comes from the input 'hex'.
	always@ (hex) begin
		case (hex)
		
			4'b0000 : {a,b,c,d,e,f,g} = 7'b0000001; // Display 0
			4'b0001 : {a,b,c,d,e,f,g} = 7'b1001111; // Display 1
			4'b0010 : {a,b,c,d,e,f,g} = 7'b0010010; // Display 2
			4'b0011 : {a,b,c,d,e,f,g} = 7'b0000110; // Display 3
			4'b0100 : {a,b,c,d,e,f,g} = 7'b1001100; // Display 4
			4'b0101 : {a,b,c,d,e,f,g} = 7'b0100100; // Display 5
			4'b0110 : {a,b,c,d,e,f,g} = 7'b0100000; // Display 6
			4'b0111 : {a,b,c,d,e,f,g} = 7'b0001111; // Display 7
			4'b1000 : {a,b,c,d,e,f,g} = 7'b0000000; // Display 8
			4'b1001 : {a,b,c,d,e,f,g} = 7'b0000100; // Display 9
			4'b1010 : {a,b,c,d,e,f,g} = 7'b0001000; // Display A
			4'b1011 : {a,b,c,d,e,f,g} = 7'b1100000; // Display B
			4'b1100 : {a,b,c,d,e,f,g} = 7'b0110001; // Display C
			4'b1101 : {a,b,c,d,e,f,g} = 7'b1000010; // Display D
			4'b1110 : {a,b,c,d,e,f,g} = 7'b0110000; // Display E
			4'b1111 : {a,b,c,d,e,f,g} = 7'b0111000; // Display F
			default : {a,b,c,d,e,f,g} = 7'b1111010; // Display 'r' for error.
			
		endcase
	
	end // End always

endmodule
