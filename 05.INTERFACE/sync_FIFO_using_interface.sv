//DESIGN CODE
//interface
interface inf(input logic clk,rst);
  logic w_en;
  logic [7:0]data_in;
  logic [7:0]data_out;
  logic full,empty;
  
  modport des(input clk,rst,w_en,data_in,output data_out,full,empty);
endinterface

//module
module fifo(inf.des d1);
  
  reg [7:0]fifo[0:255] ;
  reg [3:0]w_ptr,r_ptr;
  
  always@(posedge d1.clk or posedge d1.rst)begin
    if(d1.rst)begin
      w_ptr    	  <=   0 ;
      r_ptr    	  <=   0 ;
      d1.data_out <= 8'b0 ;
    end
    else if(d1.w_en && !(d1.full))begin
      fifo[w_ptr]	<= d1.data_in ;
      w_ptr		    <= (w_ptr) + 1'b1 ;
    end
    else if(!(d1.w_en) && !(d1.empty))begin
      d1.data_out 	<= fifo[r_ptr] ;
      r_ptr			<= r_ptr + 1'b1 ;
    end
  end
  
  assign d1.full  = (w_ptr + 1'b1 == r_ptr);
  assign d1.empty = (w_ptr == r_ptr);

endmodule



//TESTBENCH
module fifo_tb;
  logic clk,rst;
  inf d2(.clk(clk),.rst(rst));
  
  fifo dut(d2);
  
  initial begin
    clk = 0;
    forever #5 clk = ~ clk ;
  end
  initial begin
    rst = 1;#10;
    rst = 0; d2.w_en=1 ; d2.data_in = 8'hfa ;#10;
    d2.w_en=0;#10;
    d2.w_en=1 ; d2.data_in = 8'hcc ;#10;
    d2.data_in = 8'h1c ;#10;
    d2.data_in = 8'hef ;#10;
    d2.data_in = 8'hd2 ;#10;
    d2.data_in = 8'hc9 ;#10;
    d2.data_in = 8'h54 ;#10;
    d2.w_en=0;#10;
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
