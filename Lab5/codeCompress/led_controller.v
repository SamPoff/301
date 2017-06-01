`timescale 1ns / 1ps

/***************************************************************************
* Author:	Chanartip Soonthornwan
* Email: 	Chanartip.Soonthornwan@student.csulb.edu
* Filename:	led_controller.v
* Date: 		Oct 9, 2016
* Version: 	1.0
*
* Purpose: 	A Finite State Machine(FSM) selecting one pixel on 7-segment
*           display to turn on and turn the other three off on a clock cycle.
*           Furthermore, it sends a 2-bit selection pin to a multiplexer, 
*           so that multiplex can produce an output for the pixel which it
*           is on.
* 
* Notes:		- This FSM generates 6-bit output in total; 
*             4 bits for pixel (anode) selection, and
*             2 bits for pin selection for multiplexer.
*           - This module follows FSM Boiler Moore's #2 template.
****************************************************************************/

module led_controller(
   input                    clk,
   input                  reset,
   output   reg [3:0]     anode,
   output   reg [1:0]   seg_sel
    );
   
  //2-bit state registers
   reg [2:1] present_state;
   reg [2:1] next_state;
   
  //Next State Combinational Logic
  always @ (present_state)
      case(present_state)
           2'b00: next_state = 2'b01;
           2'b01: next_state = 2'b10;
           2'b10: next_state = 2'b11;
           2'b11: next_state = 2'b00;
         default: next_state = 2'b00;
      endcase
   
  //State Register
  always @ (posedge clk, posedge reset)
      if(reset == 1'b1)         //Got a reset and reset present state to 0.
         present_state = 2'b0;
      else                      //Got a clock and update present state
         present_state = next_state;
         
  //Output Combinational Logic
  always @ (present_state)
      case(present_state)       
           2'b00: {anode, seg_sel} = 6'b1110_00;
           2'b01: {anode, seg_sel} = 6'b1101_01;
           2'b10: {anode, seg_sel} = 6'b1011_10;
           2'b11: {anode, seg_sel} = 6'b0111_11;
         default: {anode, seg_sel} = 6'b0;   //set other posibitlities to state 0
      endcase
         
      
endmodule
