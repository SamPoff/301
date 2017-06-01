`timescale 1ns / 1ps

/*********************************************************************
 Author:    Poff, Samuel
 Email:     spoff42@gmail.com
 File Name: TopModule.v
 Date:      01 Nov, 2016
 Version:   1.0
 
 Notes: This module instatiates the project's integer data path.
 
 The inputs follow:
 	Clock               (clock) : Linked to Nexys3 onboard oscillator.
   
 The output follows:
 	Anode Assertion     (anode) : Linked to anodes of seven segment displays.
 	
      This module's function is
*********************************************************************/

/*                  clock,    BTNU,     BTNL,*/
module TopModule(   clock,   reset, mem_w_en, 
/*                   BTND,     SW7,      SW5,*/
                 step_clk, a_d_sel,  adr_sel, 
/*                    SW4,     SW3,      SW2,*/        
                    s_sel,   pc_ld,   pc_inc,
/*                    SW1,     SW0,   Anodes, */    
                 reg_w_en,   ir_ld,    anode,      
/*               a,b,c,d,e,f,g               */
                 a,b,c,d,e,f,g               );
                 
   input clock    ;   
   input reset    ;
   input mem_w_en ; 
   input step_clk ; 
   input a_d_sel  ; 
   input adr_sel  ; 
   input s_sel    ;   
   input pc_ld    ;   
   input pc_inc   ;  
   input reg_w_en ;  
   input ir_ld    ;
         
   output [3:0] anode; 
   output a,b,c,d,e,f,g;
   
   wire [15:0] dOutMem ;
   wire [15:0] dOutCPU ;
   wire [15:0] address ;
   wire [15:0] dcMuxInHold;
   wire weStepCPU;
   wire mem_step;
   
   assign dcMuxInHold = a_d_sel ? address : dOutCPU ;

   CPU_EU        cpu_eu (weStepForCPU, reset, pc_inc, 
                         pc_ld, dOutMem, 
                         adr_sel, s_sel, reg_w_en, 
                         ir_ld, dOutCPU, address);
   
   switchFilter    debo (clock, reset, step_clk, mem_w_en, weStepForCPU, mem_step);
   
   DisplayController DC (clock, reset, dcMuxInHold[15:12], dcMuxInHold[11:8], dcMuxInHold[7:4], dcMuxInHold[3:0], anode, a,b,c,d,e,f,g);
   
   Ram    ramMemoryData (clock, address[7:0], mem_step, dOutCPU, dOutMem);

endmodule
