`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:32:20 11/28/2016 
// Design Name: 
// Module Name:    ram 
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
module ram(
    input clk,
    input we,
    input [7:0] addr,
    input [15:0] din,
    output [15:0] dout
    );

   ram ram (
  .clka(clk), // input clka
  .wea(we), // input [0 : 0] wea
  .addra(addr), // input [7 : 0] addra
  .dina(din), // input [15 : 0] dina
  .douta(dout) // output [15 : 0] douta
);

endmodule