`timescale 1ns / 1ps

/***********************************************************************************
 Author:    Poff, Samuel
 Email:     spoff42@gmail.com
 File Name: DisplayController.v
 Date:      20 Oct, 2016
 Version:   1.0
 
 Notes: This module instantiates a display controller.
 
 The inputs follow:
 	Clock (clock) : Linked to Nexys3 onboard oscillator
 	Reset (reset) : Linked to BTNU on board.
   Segment Data (segment3) : Linked to R[7:4].
   Segment Data (segment2) : Linked to R[3:0].
   Segment Data (segment1) : Linked to S[7:4].
   Segment Data (segment0) : Linked to S[3:0].
   
 The output follows:
 	Anode Assertion (anode) : Linked to anodes of seven segment displays.
   Seven Segments (a,b,c,d,e,f,g) : Linked to the seven segments of the sevensegment
   display.
 	
 	This module's function is to combine the whole display controller into one easy
to manage module. It instantiates the led clock (240Hz), the LED controller which 
cycles through the anode assertions, a four to one mux which makes sure the correct
segment data is being sent to the pressently asserted display, and a hex to seven-seg
module which turns on the assigned segments.
************************************************************************************/

module DisplayController(clock,    reset,    segment3 ,
                         segment2, segment1, segment0 ,
                         anode, a, b, c, d, e, f, g)  ;

   input       clock    ;
   input       reset    ;
   input [3:0] segment3 ;
   input [3:0] segment2 ;
   input [3:0] segment1 ;
   input [3:0] segment0 ;
   
   output   [3:0] anode ;
   output a,b,c,d,e,f,g ;
   
   wire       outClockToLedController ;
   wire [1:0] segmentSelectFor4_1     ;
   wire [3:0] outMuxToSevenSeg        ;
   
   
   // Takes in the system clock and produces a stepped down clock (240Hz).
   //         inClk, reset,          outClk
   led_clock led_clock (clock, reset, outClockToLedController)                                       ;
   
   
   // Autonomous FSM which cycles through the anodes. Clock input comes from
   // led clock (240Hz).
   //                       clock,          reset, anode,      seg_sel
   led_controller led_con (outClockToLedController, reset, anode, segmentSelectFor4_1)             ;
   
   
   // Takes in four 4-bit inputs and selects one to output. The inputs are four bits and
   // dictate which segments will be activated on the seven segment display.
   //                select,           D0,       S1,      Q
   mux_4_to_1 mux (segmentSelectFor4_1, segment0, segment1, segment2, segment3, outMuxToSevenSeg) ;
   
   // Takes in four bits provided by four to one mux and displays them on the seven segment
   // display.
   //                             hex,       a, b, c, d, e, f, g
   hex_to_seven_seg hex (outMuxToSevenSeg, a, b, c, d, e, f, g)                         ;

endmodule
