`timescale 1ns / 1ps

module TopModule(clock, 
                 reset, 
                 switches, 
                 anode, 
                 addrStepIn, 
                 wrPulseIn,
                 step, 
                 a,b,c,d,e,f,g);
                 
   input          clock;
   input          reset;
   input [7:0] switches;
   input     addrStepIn;
   input      wrPulseIn;
   input           step;
   
   output [3:0]   anode;
   output a,b,c,d,e,f,g;
   
   wire [1:0]  select;
   wire [3:0]     hex;
   wire   outClockLed;
   wire   outClock500;
   wire [3:0] inputs0;
   wire [3:0] inputs1;
   wire [3:0] inputs2;
   wire [3:0] inputs3;
   wire     addr_step;
   wire       wr_step;
   wire [7:0] address;
   wire [15:0]   dOut;
   wire [3:0]  dHi, dLo, aHi, aLo;
   
   led_clock led_0 (clock, reset, outClockLed);
   
   led_clock_500Hz led_1 (clock, reset, outClock500);
   
   byte_mux bMux0 (address, { aHi, aLo }, step, dOut);
   
   debounce debo_0 (addrStepIn, outClock500, reset, addr_step), 
            debo_1 (wrPulseIn, outClock500, reset, wr_step);
   
   addr_seq addr_0 (addr_step, reset, address);
   
   ram1 ram1 (clock, wr_step, address, { 8'hFF, switches[7:0] }, { aHi, aLo, dHi, dLo });
   
   led_controller ledCon_0 (outClockLed, reset, anode, select);
   
   mux_4_to_1 mux_0 (select, dOut[3:0], dOut[7:4], dLo, dHi, hex);
   
   hex_to_seven_seg sevSeg_0 (hex, a, b, c, d, e, f, g);

endmodule
