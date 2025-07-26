//DESIGN CODE

//interface
interface inf();
  logic [3:0]a,b;
  logic cin;
  logic [3:0]sum;
  logic cout;
  
  modport des(input a,b,cin,output sum,cout);
endinterface

//module
module rca(inf.des d1);
  
  logic [3:0]c;
  
  fa ins1(d1.a[0],d1.b[0],d1.cin,d1.sum[0],c[0]);
  
  genvar i;
  generate
    for(i=1;i<4;i++)begin
      fa ins2(d1.a[i],d1.b[i],c[i-1],d1.sum[i],c[i]);
    end
  endgenerate
  
  assign d1.cout = c[3] ;
endmodule


//full-adder
module fa(
  input logic a,b,cin,
  output logic sum,cout);
  
  assign {cout,sum} = a+b+cin ;
endmodule



//TESTBENCH
module rca_tb;
  
  inf d2();
  rca dut(d2);
  
  initial begin
    d2.a = 4'b1000; d2.b=4'b1110 ; d2.cin=0 ;#5;
    d2.a = 4'b1000; d2.b=4'b1110 ; d2.cin=1 ;#5;
    $finish;
  end
  initial begin
    $monitor("time=%0t,a=%0b,b=%0b,cin=%0b,sum=%b,cout=%0b",$time,d2.a,d2.b,d2.cin,d2.sum,d2.cout);
  end
endmodule


//OUTPUT
# KERNEL: time=0,a=1000,b=1110,cin=0,sum=0110,cout=1
# KERNEL: time=5,a=1000,b=1110,cin=1,sum=0111,cout=1
# RUNTIME: Info: RUNTIME_0068 testbench.sv (9): $finish called.
# KERNEL: Time: 10 ns,  Iteration: 0,  Instance: /rca_tb,  Process: @INITIAL#6_0@.
# KERNEL: stopped at time: 10 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
