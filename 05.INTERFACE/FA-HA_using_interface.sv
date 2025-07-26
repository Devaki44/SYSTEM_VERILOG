//DESIGN CODE
interface inf();
  logic a,b,cin;
  logic sum,carry;
  
  modport des(input a,b,cin,output sum,carry);
endinterface

//module

module fa(inf.des d1);
  
  logic w1,w2,w3;
  
  ha h1(d1.a,d1.b,w1,w2);
  ha h2(w1,d1.cin,d1.sum,w3);
  assign d1.carry = w2 |w3 ;
endmodule


module ha(
  input logic a,b,
  output logic sum,carry);
  assign {carry,sum} = a+b ;
endmodule


//TESTBENCH
module fa_tb;
  
  inf d2();
  
  fa dut(d2);
  
  initial begin
    d2.a=0 ; d2.b=1 ; d2.cin=0 ;#5;
    d2.a=0 ; d2.b=0 ; d2.cin=1 ;#5;
    d2.a=1 ; d2.b=1 ; d2.cin=1 ;#5;
    d2.a=1 ; d2.b=1 ; d2.cin=0 ;#5;
    d2.a=0 ; d2.b=1 ; d2.cin=1 ;#5;
    $finish;
  end
  initial begin
    $monitor("time=%0t,a=%0b,b=%0b,cin=%0b,sum=%0b,carry=%0b",$time,d2.a,d2.b,d2.cin,d2.sum,d2.carry);
  end
endmodule


//OUTPUT
# KERNEL: time=0,a=0,b=1,cin=0,sum=1,carry=0
# KERNEL: time=5,a=0,b=0,cin=1,sum=1,carry=0
# KERNEL: time=10,a=1,b=1,cin=1,sum=1,carry=1
# KERNEL: time=15,a=1,b=1,cin=0,sum=0,carry=1
# KERNEL: time=20,a=0,b=1,cin=1,sum=0,carry=1
# RUNTIME: Info: RUNTIME_0068 testbench.sv (13): $finish called.
# KERNEL: Time: 25 ns,  Iteration: 0,  Instance: /fa_tb,  Process: @INITIAL#7_0@.
# KERNEL: stopped at time: 25 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
