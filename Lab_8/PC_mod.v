`timescale 1ns / 1ps

/****************************************************************
 Author:    Poff, Samuel
 Email:     spoff42@gmail.com
 File Name: PC_mod.v
 Date:      15 Nov, 2016
 Version:   1.0
 
 Notes: This module instatiates the project's integer data path.
 
 The inputs follow:
 	Clock         (clock) : Linked to BTND on Nexys3.
   Reset         (reset) : Linked to BTNU on Nexys3.
   PC Load       (pc_ld) : Linked to SW3 on Nexys3.
   PC Increment (pc_inc) : Linked to SW2 on Nexys3.
   ALU Output  (alu_out) : Linked to output from ALU.
   
 The output follows:
 	PC Output (pc_out) : Linked to output of PC register.
 	
      This module's function is to define the behavior of the 
   program counter register. Based on the inputs to the register
   (pc_ld, pc_inc, and alu_out), the output will either stay 
   the same, increment by one, or store the ALU's output.
****************************************************************/

module PC_mod(clock, reset, pc_ld, pc_inc, alu_out, pc_out);

   input clock, reset;   // Clock and Reset
   input pc_ld;          // PC Load
   input pc_inc;         // PC Increment
   input [15:0] alu_out; // ALU Output
   
   output reg [15:0] pc_out; // PC Output
   
   // If pc_ld, pc_out gets alu_out.
   // If pc_inc, pc_out increments by one.
   // Else, pc_out gets pc_out.
   always @ (posedge clock, posedge reset) begin
      if (reset)
         pc_out = 0; 
      else if (pc_ld == 1 && pc_inc == 0)  begin
         pc_out = alu_out;
      end
      else if (pc_ld == 0 && pc_inc == 1) begin
         pc_out = pc_out + 1;
      end
      else begin
         pc_out = pc_out;
      end
   end
     
endmodule
