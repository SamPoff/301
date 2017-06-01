`timescale 1ns / 1ps

/*********************************************************************************
 Author:    Poff, Samuel
 Email:     spoff42@gmail.com
 File Name: Ram.v
 Date:      01 Nov, 2016
 Version:   1.0
 
 Notes: This module instatiates the project's integer data path.
 
 The inputs follow:
 	Clock               (clock) : Linked to Nexys3 onboard oscillator.
   
 The output follows:
 	Anode Assertion           (anode) : Linked to anodes of seven segment displays.
 	
      This module's function is
*********************************************************************************/

module Ram(
    input clk,
    input [7:0]addr,
    input we,
    input [15:0] din,
    output [15:0] dout
    );
    
    ramMemoryData ramMemoryData (
    .clka(clk), // input clka
    .wea(we), // input [0 : 0] wea
    .addra(addr), // input [7 : 0] addra
    .dina(din), // input [15 : 0] dina
    .douta(dout) // output [15 : 0] douta
    );


endmodule
