//CODE
class packet;
  string name;
  int age;
  
  extern function new();
    
endclass

function packet::new();
    name = "devaki" ;
    age  = 8'd21;
    $display(" name = %0s, age = %0d ",name,age);
endfunction

module test;
  packet p1;
  initial begin
    p1 = new() ;
  end
endmodule


//OUTPUT
# KERNEL:  name = devaki, age = 21 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
