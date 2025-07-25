//DESIGN CODE

interface inf(input logic clk,input rst);
  logic en;
  logic [7:0]addr;
  logic [7:0]data_in;
  logic [7:0]data_out;
  
  modport dut(input clk,rst,en,addr,data_in,output data_out);
endinterface


module sp_ram(inf.dut s1);
  
  logic [7:0]ram[0:255];
  
  always@(posedge s1.clk)begin
    if(s1.rst)
      s1.data_out <= 8'b0 ;
    else begin
      if(s1.en)
        ram[s1.addr]    <= s1.data_in ;
     else
        s1.data_out     <= ram[s1.addr] ;
    end
  end
endmodule



//TESTBENCH
module sp_ram_tb;
  logic clk;
  logic rst;
  
  inf s2(.clk(clk),.rst(rst));
  sp_ram dut(.s1(s2));
 
  initial begin
    clk = 0;
    forever #5 clk = ~ clk ;
  end
  initial begin
    rst=1;#10;
    rst=0;s2.en=1;s2.addr=8'hf2;s2.data_in=8'ha7;#10;
    rst=0;s2.en=0;s2.addr=8'hf2;s2.data_in=8'ha7;#10;
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule



