`timescale 1ns / 1ps

/**************************************************************

**************************************************************/

module TopModule(clock,    reset,  step_mem, 
                 step_clk, AD_sel, dump_mem, 
                 anodes,   status, a,b,c,d,e,f,g);
                 
   input clock, reset;
   input step_mem, step_clk, AD_sel, dump_mem;
   
   output [3:0] anodes;
   output [7:0] status;
   output a,b,c,d,e,f,g;
   
   wire clk_500, toRiscClk, toMemDump, mw_en; 
   wire [15:0] display_mux, madr, address, dOut, dIn, mem_counter;
   
   RISC_Processor risc (toRiscClk, reset, address, mw_en, dOut, dIn, status);
   
   ram1 mem (clock, mw_en, madr[7:0], dIn, dOut);
   
   DisplayController dc (clock,             reset,            display_mux[15:12], 
                         display_mux[11:8], display_mux[7:4], display_mux[3:0]  , 
                         anodes,             a,b,c,d,e,f,g                      );
   
   clk_500HZ div (clock, reset, clk_500);
   
   debounce debo1 (step_clk, clk_500, reset, toRiscClk),
            debo2 (step_mem, clk_500, reset, toMemDump);

   // maybe wrong
   mem_dump_counter memD (toMemDump, reset, mem_counter);

   assign display_mux = AD_sel ? madr : dOut ;
   
   assign madr = dump_mem ? mem_counter : address ;

endmodule
