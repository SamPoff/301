`timescale 1ns / 1ps
//*******************************************************************
 module CU( clk, reset, IR, N, Z, C,          // Control unit inputs
            W_Adr, R_Adr, S_Adr,              // these are
            adr_sel, s_sel,                   //    the control
            pc_ld, pc_inc, pc_sel, ir_ld,     //       word output
            mw_en, rw_en, alu_op,             //          fields
            status );                         // LED outputs
//*******************************************************************  
        
   input          clk, reset;                   // clock and reset
   input  [15:0]  IR;                           // instruction register input
   input          N, Z, C;                      // datapath status inputs
   output  [2:0]  W_Adr, R_Adr, S_Adr;          // register file address outputs
   output         adr_sel, s_sel;               // mux select outputs
   output         pc_ld, pc_inc, pc_sel, ir_ld; // pc load, pcinc, pc select, ir load
   output         mw_en, rw_en;                 // memory_write, register_file write
   output  [3:0]  alu_op;                       // ALU opcode output
   output  [7:0]  status;                       // 8 LED outputs to display current state
   
   /**********************
    *  data  structures  *
    **********************/

   reg   [2:0]  W_Adr, R_Adr, S_Adr;            //these 12
   reg          adr_sel, s_sel;                 // fields
   reg          pc_ld, pc_inc;                  //  make up
   reg          pc_sel, ir_ld;                  //   the
   reg          mw_en, rw_en;                   //    control word
   reg   [3:0]  alu_op;                         //     of the control unit

   reg   [4:0]  state;              // present state register
   reg   [4:0]  nextstate;          // next state register
   reg   [7:0]  status;             // LED status/state outputs
   reg   ps_N, ps_Z, ps_C;          // present state flags register
   reg   ns_N, ns_Z, ns_C;          // next state flags register
   
   parameter   RESET=0, FETCH=1, DECODE=2,
               ADD=3,   SUB=4,   CMP=5,   MOV=6,
               INC=7,   DEC=8,   SHL=9,   SHR=10,
               LD=11,   STO=12,  LDI=13,
               JE=14,   JNE=15,  JC=16,   JMP=17,
               HALT=18,
               ILLEGAL_OP=31;
               
    /*******************************
    *  301 Control Unit Sequencer  *
    ********************************/
   
   // synchronous state register assignment
   always @(posedge clk or posedge reset)
      if (reset)
         state = RESET;
      else
         state = nextstate;
         
   // synchronous flags register assignment
   always @(posedge clk or posedge reset)
      if (reset)
         {ps_N,ps_Z,ps_C} = 3'b0;
      else
         {ps_N,ps_Z,ps_C} = {ns_N,ns_Z,ns_C};

   // combinational logic sectoin for both next state logic
   // and control word outputs for cpu_execution_unit and memory
   always @( state )
      case ( state )
      
      RESET:   begin    // Default Control Word Values -- LED pattern = 1111_111
         W_Adr    = 3'b000;   R_Adr  = 3'b000;  S_Adr  = 3'b000;
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b0;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;
         mw_en    = 1'b0;     rw_en  = 1'b0;    alu_op = 4'b0000;
         {ns_N,ns_Z,ns_C} = 3'b0;
         status = 8'hFF;
         nextstate = FETCH;
      end
      
      FETCH:   begin    // IR <-- M[PC],  PC <- PC+1  -- LED pattern = 1000_000
         W_Adr    = 3'b000;   R_Adr  = 3'b000;  S_Adr  = 3'b000;
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b0;     pc_inc = 1'b1;    pc_sel = 1'b0;   ir_ld = 1'b1;
         mw_en    = 1'b0;     rw_en  = 1'b0;    alu_op = 4'b0000;
         {ns_N,ns_Z,ns_C} = {ps_N,ps_Z,ps_C};
         status = 8'h80;
         nextstate = DECODE;
      end
      
      DECODE: begin     // Default Control Word, NS <- case( IR[15:9] ) -- LED pattern = 1100_0000
         W_Adr    = 3'b000;   R_Adr  = 3'b000;  S_Adr  = 3'b000;
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b0;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;
         mw_en    = 1'b0;     rw_en  = 1'b0;    alu_op = 4'b0000;
         {ns_N,ns_Z,ns_C} = {ps_N,ps_Z,ps_C};   // flags remain the same
         status = 8'hC0;
         case ( IR[15:9] )
            7'h70:   nextstate = ADD;
            7'h71:   nextstate = SUB;
            7'h72:   nextstate = CMP;
            7'h73:   nextstate = MOV;
            7'h74:   nextstate = SHL;
            7'h75:   nextstate = SHR;
            7'h76:   nextstate = INC;
            7'h77:   nextstate = DEC;
            7'h78:   nextstate = LD;
            7'h79:   nextstate = STO;
            7'h7A:   nextstate = LDI;
            7'h7B:   nextstate = HALT;
            7'h7C:   nextstate = JE;
            7'h7D:   nextstate = JNE;
            7'h7E:   nextstate = JC;
            7'h7F:   nextstate = JMP;
            default: nextstate = ILLEGAL_OP;
         endcase
      end
      
      ADD:  begin // R[ir(8:6)] <- R[ir(5:3)] + R[ir(2:0)] -- LED pattern = {ps_N,ps_Z,ps_C,5'b0}
         W_Adr    = IR[8:6];   R_Adr  = IR[5:3];  S_Adr  = IR[2:0];              //Addresses needed for adding
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b0;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;
         mw_en    = 1'b0;     rw_en  = 1'b1;    alu_op = 4'b0000;               //write enable to W_Adr
         {ns_N,ns_Z,ns_C} = {N,Z,C};                                             //datapath status from ALU
         status = {ps_N,ps_Z,ps_C,5'b00000};                                     //flag
         nextstate = FETCH;      //go back to FETCH
      end
      
      SUB:  begin // R[ir(8:6)] <- R[ir(5:4)] - R[ir(2:0)]
         W_Adr    = IR[8:6];  R_Adr  = IR[5:3];  S_Adr  = IR[2:0];               
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b0;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;
         mw_en    = 1'b0;     rw_en  = 1'b1;    alu_op = 4'b0001;               //IR[12:9] because 15:13 are 111
         {ns_N,ns_Z,ns_C} = {N,Z,C};
         status = {ps_N,ps_Z,ps_C,5'b00001};
         nextstate = FETCH;      //go back to FETCH
      end
      
      CMP:  begin // R[ir(5:3)] - R[ir(2:0)]
         W_Adr    = 3'b0;   R_Adr  = IR[5:3];  S_Adr  = IR[2:0];                 //Comparing doesn't need to write
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b0;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;
         mw_en    = 1'b0;     rw_en  = 1'b0;    alu_op = 4'b0010;              //unable rw_en
         {ns_N,ns_Z,ns_C} = {N,Z,C};                                             //*****not sure about this flags
         status = {ps_N,ps_Z,ps_C,5'b00010};
         nextstate = FETCH;      //go back to FETCH
      end
      
      MOV:  begin // R[ir(8:6)] <- R[ir(2:0)]
         W_Adr    = IR[8:6];   R_Adr  = 3'b0;  S_Adr  = IR[2:0];                 // Only use dest_reg and S_reg
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b0;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;
         mw_en    = 1'b0;     rw_en  = 1'b1;    alu_op = 4'b0011;               // Write enable for the dest_reg
         {ns_N,ns_Z,ns_C} = {ps_N,ps_Z,ps_C};  
         status = {ps_N,ps_Z,ps_C,5'b00011};
         nextstate = FETCH;      //go back to FETCH
      end
      
      SHL:  begin // R[ir(8:6)] <- R[ir(2:0)] << 1
         W_Adr    = IR[8:6];   R_Adr  = 3'b0;  S_Adr  = IR[2:0];                 // Only use dest_reg and S_reg
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b0;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;
         mw_en    = 1'b0;     rw_en  = 1'b1;    alu_op = 4'b0100;  
         {ns_N,ns_Z,ns_C} = {N,Z,C};        
         status = {ps_N,ps_Z,ps_C,5'b00100};
         nextstate = FETCH;      //go back to FETCH
      end
      
      SHR:  begin // R[ir(8:6)] <- R[ir(2:0)] >> 1
         W_Adr    = IR[8:6];   R_Adr  = 3'b0;  S_Adr  = IR[2:0];                 // Only use dest_reg and S_reg
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b0;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;
         mw_en    = 1'b0;     rw_en  = 1'b1;    alu_op = 4'b0101;               //
         {ns_N,ns_Z,ns_C} = {N,Z,C};
         status = {ps_N,ps_Z,ps_C,5'b00101};
         nextstate = FETCH;      //go back to FETCH
      end
      
      INC:  begin // R[ir(8:6)] <- R[ir(2:0)] + 1 
         W_Adr    = IR[8:6];   R_Adr  = 3'b0;  S_Adr  = IR[2:0];                 // Only use dest_reg and S_reg
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b0;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;
         mw_en    = 1'b0;     rw_en  = 1'b1;    alu_op = 4'b0110;               
         {ns_N,ns_Z,ns_C} = {N,Z,C};
         status = {ps_N,ps_Z,ps_C,5'b00110};
         nextstate = FETCH;      //go back to FETCH
      end
	  
      DEC:  begin // R[ir(8:6)] <- R[ir(2:0)] - 1 
         W_Adr    = IR[8:6];   R_Adr  = 3'b000;  S_Adr  = IR[2:0];               // Only use dest_reg and S_reg
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b0;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;
         mw_en    = 1'b0;     rw_en  = 1'b1;    alu_op = 4'b0111;                // Alu op for decrement.
         {ns_N,ns_Z,ns_C} = {N,Z,C};
         status = {ps_N,ps_Z,ps_C,5'b00111};
         nextstate = FETCH;
      end
      
      LD:  begin // R[ir(8:6)] <- M[ R[ir(2:0)] ]
         W_Adr    = IR[8:6];   R_Adr  = IR[2:0];  S_Adr  = 3'b000;              // Only use dest_reg and R_reg
         adr_sel  = 1'b0;     s_sel  = 1'b1;                                    // Output address to mem
         pc_ld    = 1'b1;     pc_inc = 1'b0;    pc_sel = 1'b1;   ir_ld = 1'b0;
         mw_en    = 1'b0;     rw_en  = 1'b1;    alu_op = 4'b1000;               // Alu op is a don't care
         {ns_N,ns_Z,ns_C} = {ps_N,ps_Z,ps_C};  
         status = {ps_N,ps_Z,ps_C,5'b01000};
         nextstate = FETCH;
      end
      
      STO:  begin // M[ R[ir(8:6)] ] <- R[ir(2:0)]
         W_Adr    = 3'b000;   R_Adr  = IR[8:6];  S_Adr  = IR[2:0];              // Only use dest_reg and R_reg
         adr_sel  = 1'b1;     s_sel  = 1'b0;			                             // Pass address to mem
         pc_ld    = 1'b0;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;
         mw_en    = 1'b1;     rw_en  = 1'b0;    alu_op = 4'b1001;               // Alu op is don't care
         {ns_N,ns_Z,ns_C} = {ps_N,ps_Z,ps_C};  
         status = {ps_N,ps_Z,ps_C,5'b01001};
         nextstate = FETCH;
      end
      
      LDI:  begin // R[ir(8:6)] <- M[PC], PC <- PC+1
         W_Adr    = IR[8:6];   R_Adr  = 3'b000;  S_Adr  = 3'b000;               // Only use dest_reg
         adr_sel  = 1'b0;     s_sel  = 1'b1;                                    // Pass mem data to alu
         pc_ld    = 1'b0;     pc_inc = 1'b1;    pc_sel = 1'b0;   ir_ld = 1'b0;  // Increment PC
         mw_en    = 1'b0;     rw_en  = 1'b1;    alu_op = 4'b1010;               // Alu op is don't care
         {ns_N,ns_Z,ns_C} = {N,Z,C};  
         status = {ps_N,ps_Z,ps_C,5'b01010};         
         nextstate = FETCH;
      end
     
      JE:  begin // if (ps_Z = 1)  PC <- PC+se_IR[7:0]  else PC <- PC ***se = signed extension
         W_Adr    = 3'b000;   R_Adr  = 3'b000;  S_Adr  = 3'b000;		      	  // Not reading or writing
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = ps_Z;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;  // Load only if equal
         mw_en    = 1'b0;     rw_en  = 1'b0;    alu_op = 4'b1100;               // Alu op is don't care
         {ns_N,ns_Z,ns_C} = {ps_N, ps_Z, ps_C};                                 // Keep flags same
         status = {ps_N,ps_Z,ps_C,5'b01100};         
         nextstate = FETCH;
      end
      
      JNE:  begin // if (ps_Z=0) PC <- PC+se_IR[7:0] else PC <- PC
         W_Adr    = 3'b000;         R_Adr  = 3'b000;  S_Adr  = 3'b000;               // Not reading or writing
         adr_sel  = 1'b0;           s_sel  = 1'b0;
         pc_ld    = ~ps_Z;          pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0; // Load if not equal 
         mw_en    = 1'b0;           rw_en  = 1'b0;    alu_op = 4'b1101;              // Alu op is don't care   
         {ns_N,ns_Z,ns_C} = {ps_N, ps_Z, ps_C};                                      // Keep flags same
         status = {ps_N,ps_Z,ps_C,5'b01101};         
         nextstate = FETCH;
      end
      
      JC:  begin // if (ps_C=1) PC <- PC+se_IR[7:0] else PC <- PC
         W_Adr    = 3'b000;   R_Adr  = 3'b000;  S_Adr  = 3'b000;                // Not reading or writing
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = ps_C;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;  // Load if carry
         mw_en    = 1'b0;     rw_en  = 1'b0;    alu_op = 4'b1110;               // Alu op is don't care
         {ns_N,ns_Z,ns_C} = {ps_N, ps_Z, ps_C};                                 // Keep flags same
         status = {ps_N,ps_Z,ps_C,5'b01110};
         nextstate = FETCH ;
      end
      
      JMP:  begin // PC <- R[ir(2:0)]
         W_Adr    = 3'b000;   R_Adr  = 3'b000;  S_Adr  = IR[2:0];               // Use S_reg
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b1;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;  // Load PC with ALU out
         mw_en    = 1'b0;     rw_en  = 1'b0;    alu_op = 4'b1111;               // Alu op is don't care
         {ns_N,ns_Z,ns_C} = {N,Z,C};
         status = {ps_N,ps_Z,ps_C,5'b01111};         
         nextstate = FETCH;
      end
      
      HALT:  begin //  Default Control Word Values 
         W_Adr    = 3'b000;   R_Adr  = 3'b000;  S_Adr  = 3'b000;                // Not reading or writing
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b0;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;
         mw_en    = 1'b0;     rw_en  = 1'b0;    alu_op = 4'b1011;               // Alu op is don't care
         {ns_N,ns_Z,ns_C} = 3'b000;                                             // Set flags to zero
         status = {ps_N,ps_Z,ps_C,5'b01011};         
         nextstate = HALT; // Loop continuously.
      end
      
      ILLEGAL_OP:  begin // Default Control Word Values
         W_Adr    = 3'b000;   R_Adr  = 3'b000;  S_Adr  = 3'b000;                // Not reading or writing
         adr_sel  = 1'b0;     s_sel  = 1'b0;
         pc_ld    = 1'b0;     pc_inc = 1'b0;    pc_sel = 1'b0;   ir_ld = 1'b0;
         mw_en    = 1'b0;     rw_en  = 1'b0;    alu_op = 4'b0000;               // Alu op is don't care 
         {ns_N,ns_Z,ns_C} = 3'b000;                                             // Set flags to zero
         status = 8'b1111_0000;        
         nextstate = ILLEGAL_OP; // Loop continuously.
      end
      
   endcase
endmodule
