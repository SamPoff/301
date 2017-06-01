`timescale 1ns / 1ps

/**********************************************************************************
 Author:    Poff, Samuel
 Email:     spoff42@gmail.com
 File Name: ram1.v
 Date:      11 Oct, 2016
 Version:   1.0
  
 Notes: This module creates a 256 x 16 ram module.
 
 The inputs follow:
   Clock       (clk) : Linked to Nexys3 onboard oscillator.
   Write Enable (we) : Linked to BTNR on Nexys3.
   Address    (addr) : Linked to address sequencer (addr_seqr.v). 
   Data In     (din) : Linked to Nexys3 onboard dip switches. First eight bits
                       are set to 8'hFF and will stay that way by default. This
                       means that when any address is written to, the segments 
                       will display FFxx (where the 'xx' sybolizes the value given 
                       by the dip switches).
                       
 The output follows:
   Data Out   (dout) : Linked to the four-to-one multiplexer (Mux4to1.v) which
                       is responsible for passing on the correct four bits to
                       the seven segment decoder.

 	This module was created using the Coregen core generating utility; a program
which allows us to easily create memory modules given some basic desirable values,
as directed by the project's specifications.
***********************************************************************************/

module ram1(
     input        clk, // Clock
     input         we, // Write Enable
     input [7:0] addr, // Address
     input [15:0] din, // Data In
     
     output [15:0]dout // Data Out
     );
    
     ram_256x16 ram1 (
     .clka(clk),       // input clka
     .wea(we),         // input [0 : 0] wea
     .addra(addr),     // input [7 : 0] addra
     .dina(din),       // input [15 : 0] dina
     .douta(dout)      // output [15 : 0] douta
     );

endmodule
