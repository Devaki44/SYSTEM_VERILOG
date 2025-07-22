
//DESIGN CODE
virtual class parent;
  int addr;
  
  function new();
    addr = 8'hff ;
    $display(" addr = %0h ",addr);
  endfunction
endclass

class child extends parent;
  int data ;
  
  function new();
    data = 8'hac;
    $display(" data = %0h ",data);
  endfunction
endclass

module test;
  parent p1;
  child c1;
  initial begin
    p1 = new();
    c1 = new();
    
    p1.addr = 8'hcc;  //cannot be directly accessed(instantiated),but possible if it is non-virtual class
    c1.addr = 8'hee;  //can be access only through child class as inheritance
    
    
  end
endmodule


//OUTPUT
ERROR VCP2937 "Cannot instantiate abstract class: parent." "testbench.sv" 23  15
FAILURE "Compile failure 1 Errors 0 Warnings  Analysis time: 0[s]."
