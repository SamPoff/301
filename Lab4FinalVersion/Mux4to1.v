`timescale 1ns / 1ps

/***************************************************************
*
* Author:	Chanartip Soonthornwan
* Email: 	Chanartip.Soonthornwan@student.csulb.edu
* Filename:	Mux4to1.v
* Date: 		October 9, 2016
* Version: 	1.3
*
* Purpose: 	This module is a multiplexer selecting one 4-bit output(Q)
*           from four 4-bit inputs based on selection input(select).
*
* Notes:		Select is passed from seg_sel output from led_controller.
*           
*           if select is 	00, input D0 will be output.
*				if select is	01, input D1 will be output.
*				if select is	10, input D2 will be output.
*				if select is	11, input D3 will be output.
*
* Revision date : 0ct 9, 2016
* Version       : 1.3
* Update        : Changed capacity of inputs from four 1 bit to four 4 bits.
*
* Revision date : 0ct 3, 2016
* Version       : 1.2
* Update        : Changed assign statement to case statement.
*
****************************************************************/

module Mux4to1(
    input [3:0]  D3, D2, D1, D0,	//four 4-bit input from Multiplexer
    input [1:0]  select,		   //a 2-bit input from switch[7] and switch[6]
    output reg [3:0] Q				//an output to D flip flop
    );

	always @ ( select ) 
       case ( select )
            2'b00 : Q = D0;
            2'b01 : Q = D1;
            2'b10 : Q = D2;
            2'b11 : Q = D3;
          default : Q = D0;
       endcase
       
endmodule