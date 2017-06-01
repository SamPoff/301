`timescale 1ns / 1ps

/*********************************************************************************
 Author:    Poff, Samuel
 Email:     spoff42@gmail.com
 File Name: RISC_Processor.v
 Date:      06 Dec, 2016
 Version:   1.0
 
 Notes: This module instatiates the project's .
 
 The inputs follow:
   Reset                (reset) : Linked to BTNU on Nexys3.
 	Clock                (clock) : Linked to BTND on Nexys3.
   PC Increment        (pc_inc) : Linked to SW2  on Nexys3.
   PC Load              (pc_ld) : Linked to SW3  on Nexys3.
   Address Select     (adr_sel) : Linked to SW5  on Nexys3.
   S-Mux Select         (s_sel) : Linked to SW4  on Nexys3.
   Register Write Enable (W_En) : Linked to SW1  on Nexys3.
   IR Load              (ir_ld) : Linked to SW0  on Nexys3.
   
 The output follows:
 	ALU Output (alu_out) : Linked to ALU output from IDP.
   Address    (address) : Linked to output from 'adr_mux'.
   Carry        (carry) : Output from ALU.
   Negative         (N) : Output from ALU.
   Zero             (Z) : Output from ALU.
 	
      This module's function is to instantiate the system's CPU Execution Unit
   (CPU-EU) via the interconnection of five components; the IDP, the Program 
   Counter, the Instruction Register, an Address Multiplexer, and the 256x16 Ram 
   module. The instruction register holds sixteen bit control words and passes 
   them into the IDP. The program counter's input is the data output from the 
   IDP, and the address mux switches between this sixteen bit output, and the 
   register output from the IDP. The output from the address multiplexer becomes 
   the address input to the ram module, the data output from the ALU becomes 
   the data input to the ram, and the ram's output gets stored in the instruction 
   register.
*********************************************************************************/

module RISC_Processor(clk, reset, Address, mw_en, RISC_In, RISC_Out, LED_Status);
   
   input    clk, reset;
   input    [15:0] RISC_In;
   
   output   mw_en;
   output   [7:0] LED_Status;
   output   [15:0] Address, RISC_Out;
   
   wire  [2:0]   W_Adr, R_Adr, S_Adr;
   wire  [2:0]   ALU_Status;
   wire  [3:0]   Alu_Op;
   wire  [15:0]  IR_Out;
   wire  rw_en;
   wire  s_sel, adr_sel;
   wire  ir_ld, pc_ld, pc_inc, pc_sel; 
   
   //     clk, reset,     IR,             N,             Z,             C, 
   CU n0 (clk, reset, IR_Out, ALU_Status[2], ALU_Status[1], ALU_Status[0],
   
   //     W_Adr, R_Adr, S_Adr, adr_sel, s_sel, pc_ld, pc_inc, pc_sel, ir_ld, 
          W_Adr, R_Adr, S_Adr, adr_sel, s_sel, pc_ld, pc_inc, pc_sel, ir_ld,
        
   //     mw_en, rw_en, alu_op, status 
          mw_en, rw_en, Alu_Op, LED_Status   );
   
   //        reset, step_clk, adr_sel, s_sel, pc_ld, pc_inc, pc_sel, reg_w_en, ir_ld, 
   CPU_EU n1(reset,      clk, adr_sel, s_sel, pc_ld, pc_inc, pc_sel,    rw_en, ir_ld,
   
   //           D_in,    D_out,             C,             N,            Z , Address
             RISC_In, RISC_Out, ALU_Status[0], ALU_Status[2], ALU_Status[1], Address,

   //        Alu_Op, w_adr, r_adr, s_adr, IR
             Alu_Op, W_Adr, R_Adr, S_Adr, IR_Out);
             

endmodule
