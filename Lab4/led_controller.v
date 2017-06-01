`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Author:    Poff, Samuel
// Email:     spoff42@gmail.cim
// File Name: led_controller.v
// Date:      29Sep2016
// Version:   1.0
// 
// Notes: This module selects which segment and anodes will be asserted.
//	   The inputs follow:
// Clock (name: clock [linked to the output of the clock dividing module, led_clock.v]).
// Reset (name: reset [linked to 
// 	The outputs follow:
////////////////////////////////////////////////////////////////////////////////// 

module led_controller(clock, reset, anode, segSel);

   input clock;
   input reset;
   
   output reg [3:0]  anode;
   output reg [1:0] segSel;
   
   reg [1:0] presentState;
   reg [1:0] nextState;
   
   //*****************
   // Next State Logic
   //*****************
   
   always @ (presentState) begin
      case (presentState)
         2'b00 : nextState = 2'b01;
         2'b01 : nextState = 2'b10;
         2'b10 : nextState = 2'b11;
         2'b11 : nextState = 2'b00;
         default : nextState = 2'b00;
      endcase
   end // End always
   
   //*********************
   // State Register Logic
   //*********************
   
   always @ (posedge clock or posedge reset) begin
      if (reset == 1'b1) 
         presentState = 2'b00;
      else
         presentState = nextState;
   end // End always
   
   //*************************
   // Output Combination Logic
   //*************************
   
   always @ (presentState) begin
      case (presentState)
         2'b00 : {anode, segSel} = 6'b1110_00;
         2'b01 : {anode, segSel} = 6'b1101_01;
         2'b10 : {anode, segSel} = 6'b1011_10;
         2'b11 : {anode, segSel} = 6'b0111_11;
         default : {anode, segSel} = 6'b1111_00;
      endcase
   end // End always
   
endmodule