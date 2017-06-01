`timescale 1ns / 1ps

/*********************************************************************************

*********************************************************************************/

module RISC_Processor(clk, reset, Address, mw_en, RISC_In, RISC_Out, LED_Status);
   
   input    clk, reset;
   input    [15:0] RISC_In;
   
   output   mw_en;
   output   [7:0] LED_Status;
   output   [15:0] Address, RISC_Out;
   
   wire  [2:0]   W_Adr, R_Adr,  S_Adr;
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
             Alu_Op, W_Adr, R_Adr, S_Adr, IR_out);
             

endmodule
