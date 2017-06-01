`timescale 1ns / 1ps

/****************************************************************
 Author:    Poff, Samuel
 Email:     spoff42@gmail.com
 File Name: IR_mod.v
 Date:      15 Nov, 2016
 Version:   1.0
 
 Notes: This module instatiates the project's integer data path.
 
 The inputs follow:
 	Clock         (clock) : Linked to BTND on Nexys3.
   Reset         (reset) : Linked to BTNU on Nexys3.
   IR Load       (ir_ld) : Linked to SW0 on Nexys3.
   Data Input      (dIn) : Linked to data output of ram module.
   
 The output follows:
 	IR Output (IR) : Linked to output of the instruction register.
 	
      This module's function is to define the behavior of the 
   instruction register. If the ir_ld signal is high then the IR
   loads with dIn, otherwise it holds its value constant (IR = IR).
****************************************************************/

module IR_mod(clock, reset, ir_ld, dIn, IR);

   input clock ;      // Clock
   input reset ;      // Reset
   input ir_ld ;      // IR Load
   input [15:0] dIn ; // Data In
   
   output reg [15:0] IR ; // IR Output

   // If ir_ld, fill IR with dIn.
   // Else, load IR with its own contents.
   always @ (posedge clock, posedge reset) begin
      if (reset)
         IR = 0;
      else if (ir_ld)
         IR = dIn ;
      else
         IR = IR  ;
   end
   
endmodule
