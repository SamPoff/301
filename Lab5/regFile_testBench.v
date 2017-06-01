`timescale 1ns / 1ps

module regFile_testBench;

	// Inputs
	reg clk;
	reg reset;
	reg we;
	reg [2:0] W_Adr;
	reg [2:0] R_Adr;
	reg [2:0] S_Adr;
	reg [15:0] W;

	// Outputs
	wire [15:0] R;
	wire [15:0] S;

	// Instantiate the Unit Under Test (UUT)
	Register_File uut (
		.clk(clk), 
		.reset(reset), 
		.we(we), 
		.W_Adr(W_Adr), 
		.R_Adr(R_Adr), 
		.S_Adr(S_Adr), 
		.W(W), 
		.R(R), 
		.S(S)
	); 
   
   always #5 clk = ~clk;
   initial begin
   
		// Initialize Inputs
		clk = 0;
		reset = 0;
		we = 0;
		W_Adr = 0;
		R_Adr = 0;
		S_Adr = 0;
		W = 0;
      $timeformat(-12, 1, " ps", 8);
      do_reset;
      dump_mem;
      write_pattern;
      dump_mem;
      
	end//end initial 
   
   task do_reset; begin
      @(negedge clk) 
         reset = 1;
      @(negedge clk) 
         reset = 0;  
      end//end task
   endtask
   
   task dump_mem;
      integer i;
      for(i = 0; i < 8; i = i + 1)  begin
         @(negedge clk) begin
            we = 0;
            W = 0;
            W_Adr = 0;
            R_Adr = i;
            S_Adr = 7 - i;
         end//end always
         @(posedge clk) begin
            #1 $display("time = %t || R = %h || S = %h", $time, R, S);
         end//end always
      end//end for 
     
   endtask
   
   task write_pattern; 
      integer i;
      for(i = 0; i < 8; i = i + 1) begin
         @(negedge clk) begin
            we = 1;
            W_Adr = i;
            W = ~i;
            R_Adr = 0;
            S_Adr = 0;
         end//end always
      end//end for
   endtask

endmodule

