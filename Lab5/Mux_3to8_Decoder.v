`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:37 10/11/2016 
// Design Name: 
// Module Name:    Mux_3to8_Decoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux_3to8_Decoder( en, in, y );
    input            en;
    input      [2:0] in;
    output reg [7:0]  y;

   always @(en)
      case(in)
         3'b000: y = 8'b0000_0001;
         3'b001: y = 8'b0000_0010;
         3'b010: y = 8'b0000_0100;
         3'b011: y = 8'b0000_1000;
         3'b100: y = 8'b0001_0000;
         3'b101: y = 8'b0010_0000;
         3'b110: y = 8'b0100_0000;
         3'b111: y = 8'b1000_0000;
         default: y = 8'h0;
      endcase

endmodule
