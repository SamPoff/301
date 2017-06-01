`timescale 1ns / 1ps



module int_data_path(    clk,    reset,   W_En,    
                       W_Adr,    S_Adr,     DS, 
                       S_Sel,   ALU_OP,  R_Adr, 
                     Reg_Out,  Alu_Out,  carry,     
                           N,        Z       );

   input        clk;
   input        reset;
   input        W_En;
   input [2:0]  W_Adr;
   input [2:0]  S_Adr;
   input [2:0]  R_Adr;
   input [15:0] DS;
   input        S_Sel;
   input [3:0]  ALU_OP;
   
   output        carry;
   output        N;
   output        Z; 
   output [15:0] Alu_Out;
   output [15:0] Reg_Out;
   
   wire [15:0] R, S, sMux, Reg_Out;
   
   Register_File    u1 (clk, reset, W_En, W_Adr, R_Adr, S_Adr, Alu_Out, Reg_Out, S);
   
   ThreeZeroOne_alu u2 (Reg_Out, sMux, ALU_OP, Alu_Out, N, Z, carry);
   
   assign sMux = (S_Sel == 1'b1) ? DS : S ;

endmodule
