`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:18:43 10/09/2016 
// Design Name: 
// Module Name:    ram2 
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
module ram2(
    input clk,
    input we,
    input [7:0] addr,
    input [15:0] din, 
    input [15:0] dout
    );

   ram_256x16_v2 ram1 (
  .clka(clk), // input clka
  .wea(we), // input [0 : 0] wea
  .addra(addr), // input [7 : 0] addra
  .dina(din), // input [15 : 0] dina
  .douta(dout) // output [15 : 0] douta
  );

endmodule
