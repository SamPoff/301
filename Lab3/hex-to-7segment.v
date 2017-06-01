`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.cim
// File Name: hex-to-7segment.v
// Date:      25Sep2016
// Version:   1.0
// 
// Notes: This module allows the output of the circuit to be displayed in decimal
// on the Nexys3 seven segment display. 
// 	The inputs follow:
//
// 	The outputs follow:
//
//////////////////////////////////////////////////////////////////////////////////

module hex-to-7segment(hex, a, b, c, d, e, f, g);

	input [3:0] hex;
	
	output reg a, b, c, d, e, f, g;

	always@ (hex) begin
		case (hex)
		
			4'b0000 : {a,b,c,d,e,f,g} = 7'b1111110; // Display 0
			
			4'b0001 : {a,b,c,d,e,f,g} = 7'b0110000; // Display 1
			
			4'b0010 : {a,b,c,d,e,f,g} = 7'b1101101; // Display 2
			
			4'b0011 : {a,b,c,d,e,f,g} = 7'b1111001; // Display 3
			
			4'b0100 : {a,b,c,d,e,f,g} = 7'b0110011; // Display 4
			
			4'b0101 : {a,b,c,d,e,f,g} = 7'b1011011; // Display 5
			
			4'b0110 : {a,b,c,d,e,f,g} = 7'b1011111; // Display 6
			
			4'b0111 : {a,b,c,d,e,f,g} = 7'b1110000; // Display 7
			
			4'b1000 : {a,b,c,d,e,f,g} = 7'b1111111; // Display 8
			
			4'b1001 : {a,b,c,d,e,f,g} = 7'b1111011; // Display 9
			
			4'b1010 : {a,b,c,d,e,f,g} = 7'b1110111; // Display A
			
			4'b1011 : {a,b,c,d,e,f,g} = 7'b0011111; // Display B
			
			4'b1100 : {a,b,c,d,e,f,g} = 7'b1001110; // Display C
			
			4'b1101 : {a,b,c,d,e,f,g} = 7'b0111101; // Display D
			
			4'b1110 : {a,b,c,d,e,f,g} = 7'b1001111; // Display E
			
			4'b1111 : {a,b,c,d,e,f,g} = 7'b1000111; // Display F
			
			default : {a,b,c,d,e,f,g} = 7'b0000101; // Display 'r' for error.
			
		endcase
	
	end // End always

endmodule
