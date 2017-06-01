`timescale 1ns / 1ps

/**************************************************************
**************************************************************/

module ram1(
    input clk,
    input we,
    input [7:0] addr,
    input [15:0] din,
    output [15:0] dout
    );
    
   ram_256x16 mem (
      .clka(clk), // input clka
      .wea(we), // input [0 : 0] wea
      .addra(addr), // input [7 : 0] addra
      .dina(din), // input [15 : 0] dina
      .douta(dout) // output [15 : 0] douta
   );

endmodule
