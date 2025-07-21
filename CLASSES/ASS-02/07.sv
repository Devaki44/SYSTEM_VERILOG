07. Create a class A with 4 different data‑type variables.

//DESIGN CODE
class classA;
  int addr;
  byte data;
  string name;
  bit [3:0]value;
  
  function new();
    addr = 8'hca;
    data = 8'h11;
    name =  "devaki" ;
    value = 4'h6;
    $display(" addr=%0h,data=%0h,name=%0s,value=%0h",addr,data,name,value);
  endfunction
endclass

module test;
  classA c1;
  initial begin
    c1 = new();
  end
endmodule


//OUTPUT
# KERNEL:  addr=ca,data=11,name=devaki,value=6
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.


