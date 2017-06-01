`timescale 1ns / 1ps

/***************************************************************
*
* Author:	Chanartip Soonthornwan
*           Samuel    Poff
*
* Email: 	Chanartip.Soonthornwan@student.csulb.edu
*           Spoff42@gmail.com
*
* Filename:	Display_Controller.v
* Date: 		Oct 9, 2016
* Version: 	1.0
*
* Purpose: 	This is the top level of this project showing
*           interconnections between each module, showing
*           inputs and outputs, and "top-down" sequence 
*           of all modules
*           
****************************************************************/

module Display_Controller( 

      input          clock    ,              //Nexys3 onboard oscillator
      input          reset    ,              //Nexys3 onboard btnU
      input          sel      ,              //Nexys3 onboard btnL
      input          step     ,              //Nexys3 onboard btnD  
      input          we       ,              //Nexys3 onboard btnR
      input   [7:0]  switches ,              //Nexys3 onboard switches
      output  [3:0]  anode    ,              //Four 7-segment display
      output     a,b,c,d,e,f,g               //Each pixels on 7-segment display
      );
      
      //Interconnection wires.
      //Display Controller
      wire    clk_for_led ;
      wire [3:0]      hex ;
      wire [7:0] byte_out ; 
      
      //Ram
      wire        clk_500 ;
      wire      addr_step ;
      wire       wr_pulse ;
      wire  [1:0]  select ;
      wire  [7:0] address ;
      wire [15:0] ram_out ;
  
      /*****************
      Display Controller
      *****************/
   
      //                        hex, a, b, c, d, e, f, g
      hex_to_7segment_decoder ( hex, a, b, c, d, e, f, g );
      
      //                         D3,             D2,           D1,           D0, select,   Q
      Mux4to1 ad_mux( byte_out[7:4], byte_out[3:0] , ram_out[7:4], ram_out[3:0], select, hex );

      // The two left most SS displays output address data by default, ram_out[15:8] when BTNL is pressed.
      //              hi,            lo, select,    b_out
      byte_mux ( address, ram_out[15:8],    sel, byte_out);
            
      //                       clk, reset, anode, seg_sel
      led_controller ( clk_for_led, reset, anode, select );
      
      //          clk_in, reset,     clk_out
      led_clock (  clock, reset, clk_for_led );  
      
      /**
      Ram
      **/ 
    
      //          clk,       we,    addr,                [15:0] din,    dout     
      ram1 ram1(clock, wr_pulse, address, { 8'hFF , switches[7:0] }, ram_out );
      
      //                clk, reset,    addr
      addr_seqr ( addr_step, reset, address );
         
      //             D_in,  clk_in, reset,     D_out
      debounce addr( step, clk_500, reset, addr_step ),
                 wr(   we, clk_500, reset,  wr_pulse );
         
      //                clk_in, reset,     clk_out
      led_clock_500Hz (  clock, reset,     clk_500 );

endmodule