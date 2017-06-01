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

module Lab6_TopModule(clock, reset, SW, btnL, btnR, S_Sel, led, anode, a,b,c,d,e,f,g);

    input clock;
    input reset;
    input [7:0] SW;
    input btnL, btnR, S_Sel;
    
    output [3:0] anode;
    output [2:0] led;
    output a,b,c,d,e,f,g;
    
    wire weStep;                 
    wire clk_500;                   
    wire [15:0] R, S;                
    wire [15:0] Alu_Out;
    wire [15:0] Reg_Out;
    wire carry, N, Z;
    wire [15:0] DS;
    
    int_data_path IDP (          clock,          reset,         weStep, 
                      {1'b0,btnL,btnR}, {1'b0,SW[5:4]},       16'hAA55, 
                                 S_Sel,        SW[3:0], {1'b0,SW[7:6]}, 
                               Reg_Out,        Alu_Out,         led[2], 
                                led[1],          led[0]              );
   
    /*********************************
    Debounces the write enable button.
    *********************************/
                       //D_in,  clk_in, reset,   D_out
    debounce we_bounce ( 1'b1, clk_500, reset, weStep );
      
    /************************************
    Steps down the system clock to 500Hz.
    ************************************/
                      //clk_in, reset, clk_out
    clk_500HZ clk500 ( clock, reset, clk_500 );
    
    /*********************************************************************************************
    The display controller instantiates four other modules, all of which have something to do with 
    controlling the outputs from the seven segment displays. These include a clock module which 
    produces a 240Hz clock pulse (ideal timing for the seven segment's LEDs), an LED controller 
    (FSM dictating which anode to assert based on present state), a four to one multiplexer which 
    switches between displays, and a hex to seven segment display decoder.
    *********************************************************************************************/
                       //clock, reset, segment3, segment2, segment1, segment0, anode, a ,b ,c ,d ,e ,f ,g
    DisplayController  D_Con (         clock,         reset,  Reg_Out[15:12],   
                               Reg_Out[11:8],  Alu_Out[7:4],  Alu_Out[3:0]  ,     
                                       anode,  a, b, c, d, e, f, g         );
     
    
    
endmodule