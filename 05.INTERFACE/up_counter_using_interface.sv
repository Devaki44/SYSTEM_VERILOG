//DESIGN CODE

interface inf(input logic clk,rst);
  logic [3:0]count;
  
  modport des(input clk,rst,output count);
endinterface


module counter(inf.des d1);
  
  always@(posedge d1.clk)begin
    if(d1.rst)
    d1.count <= 4'b0000 ;
   else
    d1.count <= d1.count + 1'b1 ;
  end
endmodule
  


//TESTBENCH
module counter_tb;
  logic clk;
  logic rst;
  
  inf d2(.clk(clk),.rst(rst));
  
  counter dut(.d1(d2));
  
  initial begin
    clk = 0 ;
    forever #5 clk = ~clk ;
  end
  initial begin
    rst = 1;
    #10;
    rst  = 0;
    #50;
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  initial begin
    $monitor("time=%0t,clk=%0b,rst=%0b,count=%0d",$time,clk,rst,d2.count);
  end
endmodule



//OUTPUT
# KERNEL: time=0,clk=0,rst=1,count=x
# KERNEL: time=5,clk=1,rst=1,count=0
# KERNEL: time=10,clk=0,rst=0,count=0
# KERNEL: time=15,clk=1,rst=0,count=1
# KERNEL: time=20,clk=0,rst=0,count=1
# KERNEL: time=25,clk=1,rst=0,count=2
# KERNEL: time=30,clk=0,rst=0,count=2
# KERNEL: time=35,clk=1,rst=0,count=3
# KERNEL: time=40,clk=0,rst=0,count=3
# KERNEL: time=45,clk=1,rst=0,count=4
# KERNEL: time=50,clk=0,rst=0,count=4
# KERNEL: time=55,clk=1,rst=0,count=5
# RUNTIME: Info: RUNTIME_0068 testbench.sv (18): $finish called.
# KERNEL: Time: 60 ns,  Iteration: 0,  Instance: /counter_tb,  Process: @INITIAL#13_1@.
# KERNEL: stopped at time: 60 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
