//DESIGN CODE
interface in();
  logic a,b;
  logic sum,carry;
  modport  m1(input a,b,output sum,carry);
endinterface

module ha(in.m1 h1);
  
  assign {h1.carry,h1.sum} = (h1.a) + (h1.b) ;
endmodule


//TESTBENCH
module ha_tb;
  in h2();
  ha dut(.h1(h2));
  
 
  initial begin
    h2.a = 0;h2.b = 0;#5;
    h2.a = 0;h2.b = 1;#5;
    h2.a = 1;h2.b = 0;#5;
    h2.a = 1;h2.b = 1;#5;
    $finish;
  end
  initial begin
    $monitor("time=%0t,a=%0b,b=%0b,sum=%0b,carry=%0b",$time,h2.a,h2.b,h2.sum,h2.carry);
  end
endmodule



//OUTPUT
# KERNEL: time=0,a=0,b=0,sum=0,carry=0
# KERNEL: time=5,a=0,b=1,sum=1,carry=0
# KERNEL: time=10,a=1,b=0,sum=1,carry=0
# KERNEL: time=15,a=1,b=1,sum=0,carry=1
# RUNTIME: Info: RUNTIME_0068 testbench.sv (11): $finish called.
# KERNEL: Time: 20 ns,  Iteration: 0,  Instance: /ha_tb,  Process: @INITIAL#6_0@.
# KERNEL: stopped at time: 20 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
