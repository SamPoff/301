`timescale 1ns / 1ps

/*******************************************************************************
 Author:    Poff, Samuel
 Email:     spoff42@gmail.com
 File Name: CPU_EU.v
 Date:      15 Nov, 2016
 Version:   1.0
 
 Notes: This module instatiates the project's integer data path.
 
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
*******************************************************************************/

module CPU_EU(reset,    clock, adr_sel, 
            //reset, step_clk, adr_sel,
              S_Sel, pc_ld, pc_inc, pc_sel,
            //s_sel, pc_ld, pc_inc, pc_sel,
              W_En,     ir_ld, D_in, 
            //reg_w_en, ir_ld, D_in,
              Alu_Out, carry,        N,
            //D_out,   carry, negative,              
              Z,    address, Alu_Op, 
            //zero, address, Alu_Op
              W_Adr, R_Adr, S_Adr,
            //w_adr, r_adr, s_adr,
              IR_Out );
            //IR
              

   input clock       ; 
   input reset       ; 
   input pc_inc      ;
   input pc_ld       ;
   input adr_sel     ;
   input S_Sel       ;
   input W_En        ;
   input ir_ld       ;
   input pc_sel      ;
   input [15:0] D_in ; 
   input [3:0] Alu_Op;
   input [2:0] W_Adr, R_Adr, S_Adr;

   output [15:0] Alu_Out, address, IR_Out;
   output carry, N, Z;
   
   // pc_out becomes the input to the address mux.
   // IR connects the IR output with the IDP input.
   // Reg_Out connects the register output of the 
   //IDP with the address mux.
   wire   [15:0] pc_out, Reg_Out, signExt, pc_add, PC_mux;
   
   // Takes in control words from IR and produces its output based on
   // the contents of these instructions, and its register files.
   int_data_path IDP ( clock,      reset,    W_En,  
                  //   clock,      reset,    W_En,  
                       W_Adr,      S_Adr,    D_in, 
                  //   W_Adr,      S_Adr,      DS,
                       S_Sel,     Alu_Op,   R_Adr, 
                  //   s_sel,     ALU_OP,   R_Adr,
                     Reg_Out,  Alu_Out,     carry,  
                  // Reg_Out,  Alu_Out,         C,                  
                           N,        Z          );
                  //       N,        Z
   
   // Defines the behavior of the program counter register.
   PC_mod PC  (clock, reset, pc_ld, pc_inc, PC_mux, pc_out);
   
   // Defines the behavior of the instruction register.
   IR_mod IRa (clock, reset, ir_ld, D_in, IR_Out);
   
   // Adds eight ones or zeros and calls it signExt.
   assign signExt = { {8{IR_Out[8]}}, IR_Out[7:0] } ;
   
   // Adds pc_out and the sign extended IR_Out.
   assign pc_add = pc_out + signExt ;
   
   // Defines the begavior of the pc mux.
   assign PC_mux = pc_sel ? Alu_Out : pc_add ;
   
   // Defines the behavior of the address multiplexer.
   assign address = adr_sel ? Reg_Out : pc_out ;

endmodule
