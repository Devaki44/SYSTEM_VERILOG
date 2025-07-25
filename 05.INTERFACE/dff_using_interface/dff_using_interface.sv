//DESIGN CODE
interface dff_i(input logic clk,input logic rst);
  logic d;
  logic q;
  modport dut(input clk,rst,d,output q);
endinterface


module dff(dff_i.dut d1);
  
  always@(posedge d1.clk)begin
    if(d1.rst)
      d1.q <= 1'b0 ;
    else
      d1.q <= d1.d ;
  end
endmodule



//TESTBENCH
module dff_tb;
  logic clk,rst;
  dff_i d2(.clk(clk),.rst(rst));
  dff uut(.d1(d2));
  
  initial begin
    clk = 0 ;
    forever #5 clk = ~(clk) ;
  end
  initial begin
    rst = 1;d2.d = 1;
    #10; 
    rst = 0;d2.d = 1;
    #10; 
    rst = 0;d2.d = 1;
    
    $finish;
  end
  initial begin
    $monitor("time=%0t,clk=%0b,rst=%0b,d=%0b,q=%0b",$time,d2.clk,d2.rst,d2.d,d2.q);
  end
endmodule




//OUTPUT
# KERNEL: time=0,clk=0,rst=1,d=1,q=x
# KERNEL: time=5,clk=1,rst=1,d=1,q=0
# KERNEL: time=10,clk=0,rst=0,d=1,q=0
# KERNEL: time=15,clk=1,rst=0,d=1,q=1
# RUNTIME: Info: RUNTIME_0068 testbench.sv (17): $finish called.
# KERNEL: Time: 20 ns,  Iteration: 0,  Instance: /dff_tb,  Process: @INITIAL#10_1@.
# KERNEL: stopped at time: 20 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
