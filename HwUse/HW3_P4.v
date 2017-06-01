`timescale 1ns / 1ps

/*************************
Author:       Poff, Samuel
Description:  HW3, P4
*************************/

module HW3_P4(clock, reset, // Clock and reset
                  R, A,         // All inputs.
                  E);           // All ouputs.
                  
   input   clock, reset ;
   input   R, A         ;
   output  E            ;
   
   reg [2:0] presentState;
   reg [2:0] nextState;
   reg E;
   
   /*****************************
   Next State Combinational Logic
   *****************************/
   
   always @ (presentState, R, A) begin
      case ( {presentState, R, A} )
      
         // PS  RA                  NS
         4'b000_00 : nextState = 2'b000;
         4'b000_01 : nextState = 2'b100;
         4'b000_10 : nextState = 2'b001;
         4'b000_11 : nextState = 2'b100;
         
         4'b001_00 : nextState = 2'b100;
         4'b001_01 : nextState = 2'b100;
         4'b001_10 : nextState = 2'b001;
         4'b001_11 : nextState = 2'b010;
         
         4'b010_00 : nextState = 2'b100;
         4'b010_01 : nextState = 2'b011;
         4'b010_10 : nextState = 2'b100;
         4'b010_11 : nextState = 2'b010;
         
         4'b011_00 : nextState = 2'b000;
         4'b011_01 : nextState = 2'b011;
         4'b011_10 : nextState = 2'b100;
         4'b011_11 : nextState = 2'b100;
         
         4'b100_00 : nextState = 2'b100;
         4'b100_01 : nextState = 2'b100;
         4'b100_10 : nextState = 2'b100;
         4'b100_11 : nextState = 2'b100;
         
         default : nextState = 2'b000;
         
      endcase
   end // End Always
   
   /*******************
   State Register Logic
   *******************/
   
   always @ (posedge clock or posedge reset) begin
      if (reset ==  1'b1)
         presentState = 2'b000;
      else 
         presentState = nextState;
   end // End Always
   
   /*************************
   Output Combinational Logic
   *************************/
   
   always @ (presentState, R, A) begin
      case ( {presentState, R, A} )
         
         // PS RA          E
         4'b000_00 : E = 1'b0;
         4'b000_01 : E = 1'b1;
         4'b000_10 : E = 1'b0;
         4'b000_11 : E = 1'b1;
         
         4'b001_00 : E = 1'b1;
         4'b001_01 : E = 1'b1;
         4'b001_10 : E = 1'b0;
         4'b001_11 : E = 1'b0;
         
         4'b010_00 : E = 1'b1;
         4'b010_01 : E = 1'b0;
         4'b010_10 : E = 1'b1;
         4'b010_11 : E = 1'b0;
         
         4'b011_00 : E = 1'b0;
         4'b011_01 : E = 1'b0;
         4'b011_10 : E = 1'b1;
         4'b011_11 : E = 1'b1;
         
         4'b100_00 : E = 1'b1;
         4'b100_01 : E = 1'b1;
         4'b100_10 : E = 1'b1;
         4'b100_11 : E = 1'b1;
         
         default : E = 1'b0;
         
      endcase
   end // End Always
   
endmodule
