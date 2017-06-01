`timescale 1ns / 1ps
/***************************************************************
*
* Author:	Chanartip Soonthornwan
* Email: 	Chanartip.Soonthornwan@student.csulb.edu
* Filename:	clk_div.v
* Date: 		September 26, 2016
* Version: 	1.2
*
* Purpose: 	This module will recieve very fast frequency signal inputs(100MHz)
*				from Nexys,then slow the clock down to 500Hz, and then transfer 
*				the slowed clock signal to output, or other modules.
* 
* Notes:		clock divider will provide output by following equation,
*				output signal(clk_out) = (input frequency/ output frequency)/2
* 
****************************************************************/
module clk_500HZ(
    input clk_in, 		//clock signal input from circuit board
    input reset,			//input from buttonUp
    output reg clk_out	//slowed clock signal to other module(500Hz)
    );

	//a counter variable declation
	integer i;
	/*		
	 *		This module works at the positive edge of the circuit clock signal
	 *		or when the reset input is high.
	 */
	always@(posedge clk_in or posedge reset) begin
	
		//when buttonUp is pressed, it will clear the counter of clk_in signal,
		//and set clock out to zero, meaning the entire module will be at startup stage
		//until the reset button is released.
		if(reset==1'b1) begin 
				i=0;
				clk_out=0;
			end
		else //the module will counting clock signal when reset button is not pressed.
			begin
				i = i+1; /*counter increses by one every positive edge of 
							100MHz clock signal.*/
				
			/*	
			 *	This condition is using the equation provided in Notes saying that 
			 * when the counter(i) has reached or greater than designed clock 
			 * output, the clock output will be set to the opposite creating positive 
			 * edge and negative edge of 500Hz output.
			 */
				//if(i >= (100*10000000)/500/2) begin // (100MHz/500Hz)/2
				if(i >= 100000) begin
						clk_out = ~clk_out;
						i =0;
				end //if
			end //else
	end //always
endmodule
