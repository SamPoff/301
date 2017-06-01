`timescale 1ns / 1ps

/***********************************************************************************
 Author:    Poff, Samuel
 Email:     spoff42@gmail.com
 File Name: Lab6_TopModule.v
 Date:      20 Oct, 2016
 Version:   1.0
 
 Notes: This is the top module for the project.
 
 The inputs follow:
 	Clock               (clock) : Linked to Nexys3 onboard oscillator.
   Reset               (reset) : Linked to BTNU on Nexys3.
   Switches               (SW) : Linked to Nexys3 onboard switches.
   Button Left          (btnL) : Linked to BTNL on Nexys3.
   Button Right         (btnR) : Linked to BTNR on Nexys3.
   IDP Step          (IDP_clk) : Linked to BTND on Nexys3.
   S-Mux Select        (S_Sel) : Linked to BTNF on Nexys3.
   
 The output follows:
   LEDs                        (led) : Linked to Nexys3 onboard leds.
 	Anode Assertion           (anode) : Linked to anodes of seven segment displays.
   Segment Selection (A,B,C,D,E,F,G) : Linked to seven segments of seven segment 
   displays.
 	
      This module's function is to instantiate three other modules, each instantiating
   their own modules underneath themselves. 
      The first is the integer data path which
   includes the register file, s-mux, and ALU. Toghether these modules provide memory
   to hold data, and the ALU to perform operations on that data. There is also a multiplexer
   which will switch the input of the ALU between the 'S' register and the 'DS' input.
      The second is the switch filter which includes a debounce module, and a module
   to step down the clock signal to 500Hz. The output from the switch filter becomes
   the step order to the integer data path.
      The third module is the display controller. The display controller instantiates 
   four other modules, and is responsible for controlling the output to the seven segment
   displays. The four modules beneath it are: the led_clock which creates a slowed 
   down clock for the leds (240Hz), an led_controller which controls the order in which
   the displays turn on, a four_to_one_mux which controls which output goes to what 
   display, and a hex_to_seven_seg decoder, that controls which leds get asserted in
   each of the seven segment displays. 
************************************************************************************/

module Lab6_TopModule(clock, reset, SW, btnL, btnR, IDP_clk, S_Sel, led, anode, a,b,c,d,e,f,g);

    input clock;      // System Clock
    input reset;      // System Reset
    input [7:0] SW;   // Onboard Switches
    input btnL, btnR, S_Sel, IDP_clk; // BTNL, BTNR, BTNF, BTND
    
    output [3:0] anode;   // Seven Segment Anodes
    output [2:0] led;     // First Three Onboard Leds
    output a,b,c,d,e,f,g; // Seven-Seg Segments
    
    wire weStep;          // Clock to Int-Data-Path               
    wire [15:0] R, S;     // R and S register wires           
    wire [15:0] Alu_Out;  // Output from ALU
    wire [15:0] Reg_Out;  // Output from R Register
    wire carry, N, Z;     // Negative and Zero Flags
    wire [15:0] DS;       // Hardwired Input 16'hAA55
    
    /*******************************************************************
    The integer data path controls the register file, ALU, and s-mux. These 
    three modules interlock in such a way that the ALU will perform operations
    between two registers at a time. The s-mux is responsible for switching
    between the 'DS' input, and the S register, as inputs to the ALU.
    *******************************************************************/
    //                              clk,          reset,           W_En
    int_data_path IDP (          weStep,          reset,         {1'b1}, 
    //                            W_Adr,          S_Adr,             DS
                       {1'b0,btnL,btnR}, {1'b0,SW[5:4]},       16'hAA55, 
    //                            S_Sel,         ALU_OP,          R_Adr
                                  S_Sel,        SW[3:0], {1'b0,SW[7:6]}, 
    //                          Reg_Out,        Alu_Out,          carry
                                Reg_Out,        Alu_Out,         led[2], 
    //                                N,              Z,
                                 led[1],          led[0]              );
   
    /***********************************************
    The switch filter combines the debounce and 
    clk_500 modules to produce a debounced step signal
    to the integer data path.
    ***********************************************/
    //               clock, reset,    BTND, weStep
    switchFilter sf (clock, reset, IDP_clk, weStep);
    
    /*********************************************************************************************
    The display controller instantiates four other modules, all of which have something to do with 
    controlling the outputs from the seven segment displays. These include a clock module which 
    produces a 240Hz clock pulse (ideal timing for the seven segment's LEDs), an LED controller 
    (FSM dictating which anode to assert based on present state), a four to one multiplexer which 
    switches between displays, and a hex to seven segment display decoder.
    *********************************************************************************************/
    //                                 clock,         reset,        segment3,
    DisplayController  D_Con (         clock,         reset,  Reg_Out[15:12], 
    //                              segment2,      segment1,        segment0,    
                               Reg_Out[11:8],  Alu_Out[7:4],  Alu_Out[3:0]  ,  
    //                                 anode,  a, b, c, d, e, f, g                               
                                       anode,  a, b, c, d, e, f, g         );   
    
endmodule