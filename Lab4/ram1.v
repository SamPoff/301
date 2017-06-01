`timescale 1ns / 1ps

/*************************************************************
Author:    Poff, Samuel
Email:     spoff42@gmail.cim
File Name: ram1.v
Date:      11Oct2016
Version:   1.0

Notes: This file instantiates a 256 x 16 bit ram module.

The Inputs Follow:
Clock (name: clk[linked Nexys3 onboard oscillator]).
Write Enable (name: we[linked to output of debo1, a debonce module]).
Address (name: addr[linked to output of addr_seq module]).
Data Input (name: din[linked to eight on board switches, half
            of the data is assigned 8'hFF, while the other half
            is dictated by the switches]).

The Outputs Follow:
Data Out (name: dout[gets split into four 4'b portions of data
          representing the top and bottom four bits of the address
          and data at a given location in the memory]).
      
   This module was created using the CoreGen memory generating
program. A program which allows us to easily create ram modules 
which will fit the specifications dictated by the project.  
**************************************************************/

module ram1(
    input clk,
    input we,
    input [7:0] addr,
    input [15:0] din,
    output [15:0] dout
    );

    ram_256x16 myInstanceName (
    .clka(clk), // input clka
    .wea(we), // input [0 : 0] wea
    .addra(addr), // input [7 : 0] addra
    .dina(din), // input [15 : 0] dina
    .douta(dout) // output [15 : 0] douta
);
    
endmodule
