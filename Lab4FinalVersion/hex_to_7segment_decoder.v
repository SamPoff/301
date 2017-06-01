`timescale 1ns / 1ps

/************************************************************************
*
* Author:	Chanartip Soonthornwan
* Email: 	Chanartip.Soonthornwan@student.csulb.edu
* Filename:	hex_to_7segment_decoder.v
* Date: 		Oct 9, 2016
* Version: 	1.1
*
* Purpose: 	Converting 4 bits input(hex) to be 7 bits output representing
*				a character or a number on 7segment display.
* 
* Notes:		According to the limit of 7segment display, it cannot
*           display some capitalized alphabet.
* 
* Revision date : 0ct 9, 2016
* Version       : 1.1
* Update        : Input name from I to hex
*
*************************************************************************/

module hex_to_7segment_decoder(
    input [3:0] hex,
    output reg  a,b,c,d,e,f,g
    );

always@(hex) 

	case(hex)
       //hex   //segments			// abcdefg
		4'b0000: {a,b,c,d,e,f,g} = 7'b0000001; //0
		4'b0001: {a,b,c,d,e,f,g} = 7'b1001111; //1
		4'b0010: {a,b,c,d,e,f,g} = 7'b0010010; //2
		4'b0011: {a,b,c,d,e,f,g} = 7'b0000110; //3
		4'b0100: {a,b,c,d,e,f,g} = 7'b1001100; //4
		4'b0101: {a,b,c,d,e,f,g} = 7'b0100100; //5
		4'b0110: {a,b,c,d,e,f,g} = 7'b0100000; //6
		4'b0111: {a,b,c,d,e,f,g} = 7'b0001111; //7
		4'b1000: {a,b,c,d,e,f,g} = 7'b0000000; //8
		4'b1001: {a,b,c,d,e,f,g} = 7'b0000100; //9
		4'b1010: {a,b,c,d,e,f,g} = 7'b0001000; //a
		4'b1011: {a,b,c,d,e,f,g} = 7'b1100000; //b
		4'b1100: {a,b,c,d,e,f,g} = 7'b0110001; //C
		4'b1101: {a,b,c,d,e,f,g} = 7'b1000010; //d
		4'b1110: {a,b,c,d,e,f,g} = 7'b0110000; //E
		4'b1111: {a,b,c,d,e,f,g} = 7'b0111000; //f
		default: {a,b,c,d,e,f,g} = 7'b1111110; //-
	
	endcase

endmodule