`timescale 1ns / 1ps

/*************************************************************
Author:    Poff, Samuel
Email:     spoff42@gmail.cim
File Name: addr_seq.v
Date:      11Oct2016
Version:   1.0

Notes: The function of this module is to output an eight 
bit address to each location in the memory.

       The Inputs Follow:
Clock (name: clock[linked to debo0 debounce module]).
Reset (name: reset[linked to BTNU]).

       The Outputs Follow:
Address Value (name: address[used as input to the ram module]).

      On reset the address value in this module is assigned the 
value 8'b0. On every subsequent clock pulse the address value 
will increment by 1'b1. The address is then sent to the byte_mux 
module where it will be multiplexed with data that also needs to 
be displayed on the limited displays that are available.
**************************************************************/

module addr_seq(clock, reset, address);

   input clock;
   input reset;
   
   output [7:0] address;
   
   // Address as register because it is the
   // output of clocked logic.
   reg address;
   
   always @ (posedge reset or posedge clock) begin
      if (reset == 1'b1) begin
         address <= 8'b0;
      end // End If
      else begin
         address <= address + 1;
      end // End Else
   end // End Always

endmodule