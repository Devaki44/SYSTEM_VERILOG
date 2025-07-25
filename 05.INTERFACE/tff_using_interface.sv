//DESIGN CODE
interface tff_i(
  input logic clk,
  input logic rst);
  logic t;
  logic q;
  
  modport des(input clk,rst,t,output q);
endinterface

module tff(tff_i.des d1);
  
  always@(posedge d1.clk)begin
    if(d1.rst)
      d1.q <= 1'b0 ;
    else if(d1.t == 1)
      d1.q <= (~(d1.q)) ;
  end
endmodule


//TESTBENCH
module tff_tb;
  logic clk;
  logic rst;
  
  tff_i d2(.clk(clk),.rst(rst));  
  
  tff dut(.d1(d2));
  
  initial begin
    clk = 0 ;
    forever #5 clk = ~clk ;
  end
  initial begin
    rst = 1; d2.t=1 ;
    #10;rst = 0;
    #30;d2.t=0;
    #50;
    $finish;
  end
  initial begin
    $monitor("Time = %0t,clk=%0b,rst=%0b,t=%0b,q=%0b",$time,clk,rst,d2.t,d2.q);
  end
endmodule


//OUTPUT
# KERNEL: Time = 0,clk=0,rst=1,t=1,q=x
# KERNEL: Time = 5,clk=1,rst=1,t=1,q=0
# KERNEL: Time = 10,clk=0,rst=0,t=1,q=0
# KERNEL: Time = 15,clk=1,rst=0,t=1,q=1
# KERNEL: Time = 20,clk=0,rst=0,t=1,q=1
# KERNEL: Time = 25,clk=1,rst=0,t=1,q=0
# KERNEL: Time = 30,clk=0,rst=0,t=1,q=0
# KERNEL: Time = 35,clk=1,rst=0,t=1,q=1
# KERNEL: Time = 40,clk=0,rst=0,t=0,q=1
# KERNEL: Time = 45,clk=1,rst=0,t=0,q=1
# KERNEL: Time = 50,clk=0,rst=0,t=0,q=1
# KERNEL: Time = 55,clk=1,rst=0,t=0,q=1
# KERNEL: Time = 60,clk=0,rst=0,t=0,q=1
# KERNEL: Time = 65,clk=1,rst=0,t=0,q=1
# KERNEL: Time = 70,clk=0,rst=0,t=0,q=1
# KERNEL: Time = 75,clk=1,rst=0,t=0,q=1
# KERNEL: Time = 80,clk=0,rst=0,t=0,q=1
# KERNEL: Time = 85,clk=1,rst=0,t=0,q=1
# RUNTIME: Info: RUNTIME_0068 testbench.sv (18): $finish called.
# KERNEL: Time: 90 ns,  Iteration: 0,  Instance: /tff_tb,  Process: @INITIAL#13_1@.
# KERNEL: stopped at time: 90 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
