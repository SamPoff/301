`timescale 1ns / 1ps

/**********************************************************
**********************************************************/

module mem_dump_counter(
    input clk,
    input reset,
    output [15:0] mem_counter
    );
    
    reg [15:0] hold;
    
    always @ (posedge clk or posedge reset) begin
      if (reset == 1)
         hold <= 0;
      else 
         hold <= hold + 1;
    end

    assign mem_counter = hold;
    
endmodule
