`timescale 1ns / 1ps

/***********************************************************************************
 Author:    Poff, Samuel
 Email:     spoff42@gmail.com
 File Name: Lab5_TopLevel.v
 Date:      20 Oct, 2016
 Version:   1.0
 
 Notes: This is the top module for the project.
 
 The inputs follow:
 	Clock               (clock) : Linked to Nexys3 onboard oscillator.
   Reset               (reset) : Linked to BTNU on Nexys3.
   Write Enable Button (weBtn) : Linked to BTND on Nexys3.
   Button Left          (btnL) : Linked to BTNL on Nexys3.
   Button Right         (btnR) : Linked to BTNR on Nexys3.
   Switches               (SW) : Linked to Nexys3 onboard switches.
   
 The output follows:
 	Anode Assertion           (anode) : Linked to anodes of seven segment displays.
   Segment Selection (A,B,C,D,E,F,G) : Linked to seven segments of seven segment 
   displays.
 	
      This module's function is to instantiate four other modules; Register_File.v, 
   debounce.v, clk_500Hz.v, and DisplayController.v, and dictate the 'final' inputs
   and outputs of the device. 
      The module's inputs include a clock and reset, as well as three push buttons, 
   and eight switches. The write enable button is what the user will push when they 
   want to load data onto a register. The other two push buttons (left and right on
   d-pad) control which register the user is writing to. These buttons can be thought 
   of as binary digits and allow the user to write to four registers (00, 01, 10, 11). 
   The register file instantiates eight registers, however due to IO limitations on the 
   Nexys3 it is our intention that only four registers can be accessed by the user. In 
   future projects these registers will be accesed by other parts of the circuit, 
   so IO will not be a concern. The eight switches serve three functions; SW[3:0] 
   are inputs to the registers when write mode is enabled, SW[5:4] control which 
   'R_Address' the user reads, and SW[6:7] control which 'S_Address' the user reads. 
   This setup allows the user to read from two seperate registers simultaneously. 
      Both of the module's outputs control the seven segment displays. The anodes
   control which of the four displays will be turned on, and the segments (a,b,c,d,e,f,g)
   control which individual segments are turned on at a given time.
************************************************************************************/

module Lab5_TopLevel(
    input        clock, reset,      // Clock and reset.
    input        weBtn, btnL, btnR, // Push buttons down, left, right.
    input  [7:0] SW,                // Onboard switches.
    output [3:0] anode,             // Seven segment display anodes.
    output A, B, C, D, E, F, G      // Seven segment display segments.
    );
    
    wire weStep;                    // Step command to register.
    wire clk_500;                   // 500Hz clock for debounce module.
    wire [15:0] R, S;               // Register output data buses. 
    
    /**************************************************************
    The register file instantiates eight sixteen bit registers, and
    uses a decoder to control which register should be read from or 
    written to, as dictated by the register selection switches and 
    buttons.
    **************************************************************/
                        //clk, reset,   we,          W_Adr,
    Register_File rf   (clock, reset, weStep, {1'b0, btnL, btnR},
    
                       //       R_Adr,                  S_Adr,               
                       { 1'b0, SW[7], SW[6] }, { 1'b0, SW[5], SW[4] }, 
                     
                       //              W,                       R, S               
                       { 12'hFFF, SW[3], SW[2], SW[1], SW[0] }, R, S );
   
    /*********************************
    Debounces the write enable button.
    *********************************/
                         //D_in,  clk_in, reset,   D_out
    debounce we_bounce ( weBtn, clk_500, reset, weStep );
      
    /************************************
    Steps down the system clock to 500Hz.
    ************************************/
                       //clk_in, reset, clk_out
    clk_500HZ          ( clock, reset, clk_500 );
    
    /*********************************************************************************************
    The display controller instantiates four other modules, all of which have something to do with 
    controlling the outputs from the seven segment displays. These include a clock module which 
    produces a 240Hz clock pulse (ideal timing for the seven segment's LEDs), an LED controller 
    (FSM dictating which anode to assert based on present state), a four to one multiplexer which 
    switches between displays, and a hex to seven segment display decoder.
    *********************************************************************************************/
                       //clock, reset, segment3, segment2, segment1, segment0, anode, a ,b ,c ,d ,e ,f ,g
    DisplayController  ( clock, reset,   R[7:4],   R[3:0],   S[7:4],   S[3:0], anode, A, B, C, D, E, F, G);
    
    
    
endmodule
