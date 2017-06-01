`timescale 1ns / 1ps

/*************************
Author:       Poff, Samuel
Description:  HW3, P3
*************************/

module FSM_mealy2(clock, reset, // Clock and reset
                  X, Y,         // All inputs.
                  Z);           // All ouputs.
                  
   input   clock, reset ;
   input   X, Y         ;
   output  Z            ;
   
   reg [1:0] presentState ;
   reg [1:0] nextState   ;
   reg Z ;  
   
   /*****************************
   Next State Combinational Logic
   *****************************/
   
   always @ (presentState, X, Y) begin
      case ( {presentState, X, Y} )
      
         // PS XY                  NS
         4'b00_00 : nextState = 2'b00;
         4'b00_01 : nextState = 2'b01;
         4'b00_10 : nextState = 2'b10;
         4'b00_11 : nextState = 2'b11;
         
         4'b01_00 : nextState = 2'b01;
         4'b01_01 : nextState = 2'b10;
         4'b01_10 : nextState = 2'b10;
         4'b01_11 : nextState = 2'b00;
         
         4'b10_00 : nextState = 2'b11;
         4'b10_01 : nextState = 2'b11;
         4'b10_10 : nextState = 2'b11;
         4'b10_11 : nextState = 2'b10;
         
         4'b11_00 : nextState = 2'b00;
         4'b11_01 : nextState = 2'b00;
         4'b11_10 : nextState = 2'b00;
         4'b11_11 : nextState = 2'b01;
         
          default : nextState = 2'b00;
         
      endcase
   end // End Always
   
   /*******************
   State Register Logic
   *******************/
   
   always @ (posedge clock or posedge reset) begin
      if (reset ==  1'b1)
         presentState = 2'b00;
      else 
         presentState = nextState;
   end // End Always
   
   /*************************
   Output Combinational Logic
   *************************/
   
   always @ (presentState, X, Y) begin
      case ( {presentState, X, Y} )
         
         // PS XY          Z
         4'b00_00 : Z = 1'b0;
         4'b00_01 : Z = 1'b0;
         4'b00_10 : Z = 1'b1;
         4'b00_11 : Z = 1'b1;
         
         4'b01_00 : Z = 1'b1;
         4'b01_01 : Z = 1'b1;
         4'b01_10 : Z = 1'b0;
         4'b01_11 : Z = 1'b0;
         
         4'b10_00 : Z = 1'b1;
         4'b10_01 : Z = 1'b0;
         4'b10_10 : Z = 1'b1;
         4'b10_11 : Z = 1'b0;
         
         4'b11_00 : Z = 1'b0;
         4'b11_01 : Z = 1'b1;
         4'b11_10 : Z = 1'b0;
         4'b11_11 : Z = 1'b1;
         
          default : Z = 1'b0;
         
      endcase
   end // End Always
   
endmodule
