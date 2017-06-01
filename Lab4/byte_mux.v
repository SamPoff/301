`timescale 1ns / 1ps

/*************************************************************
Author:    Poff, Samuel
Email:     spoff42@gmail.cim
File Name: byte_mux.v
Date:      11Oct2016
Version:   1.0

Notes: This multiplexer dictates which data will be outputted
from the seven segment display.
       The Inputs Follow:
Clock (name: clock[linked to debo0 debounce module]).
Reset (name: reset[linked to BTNU]).
       The Outputs Follow:
Address Value (name: address[used as input to the ram module]).

**************************************************************/

module byte_mux(high, low, select, bOut);

   input [7:0] high;
   input [7:0] low;
   input select;
   
   output [7:0] bOut;
   
   reg bOut;
   
   always @ (select) begin
      if (select) begin
         bOut = low;
      end
      else begin
         bOut = high;
      end
   end // End Always
   
endmodule
