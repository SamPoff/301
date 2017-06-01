`timescale 1ns / 1ps

/****************************************************************
 Author:    Poff, Samuel
 Email:     spoff42@gmail.com
 File Name: switchFilter.v
 Date:      01, Nov 2016
 Version:   1.0
 
 Notes: This module instantiates a switch filter.
 
 The inputs follow:
 	Clock      (clock) : Linked to Nexys3 onboard oscillator
 	Reset      (reset) : Linked to BTNU on board.
   IDP Step (IDP_clk) : Linked to BTND on board.
   
 The output follows:
 	Write Enable Clock (weStep) : Linked to clock input of IDP.
 	
 	This module's function is to combine the debounce module and
the clock divider module into one combined module. The clock
divider creates a stepped down 500Hz clock which is used in the 
debounce module to create a one shot pulse as the clock input
to integer data path.
****************************************************************/

module switchFilter(clock, reset, IDP_clk, mem_w_en, weStep, mem_step);

   input clock;   // System Clock
   input reset;   // System Reset
   input IDP_clk; // BTND on Board
   input mem_w_en;
   
   output weStep; // Clock Input to IDP
   output mem_step;
   
   wire clk_500;  // 500Hz Clock
   
    /*********************************
    Debounces the write enable button.
    *********************************/
    //                      step,   clock, reset, writeEnableClk
    debounce we_bounce1 ( IDP_clk, clk_500, reset,    weStep );
    //                      step,   clock, reset, memEnableClk
    debounce we_bounce2 ( mem_w_en, clk_500, reset,  mem_step );
       
    /************************************
    Steps down the system clock to 500Hz.
    ************************************/
    //                 clock, reset, 500HzClock
    clk_500HZ clk500 ( clock, reset,  clk_500 );

endmodule
