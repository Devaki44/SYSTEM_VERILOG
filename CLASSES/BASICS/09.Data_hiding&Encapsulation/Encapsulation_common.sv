//DESIGN CODE
class packet1;
  local int a = 5;  //by using local. -valid only to the class,whereas using protected. overrides the parent properties but the output for boyh the condition is same.

  function new();
    a++ ;
    $display(" d1 : a = %0d ",a);
  endfunction
  
endclass
class packet2 extends packet1;
  int a;

  function new();
    a++ ;
    $display(" d1 : a = %0d ",a);
  endfunction
  
endclass

module test;
  packet2 p2;

  initial begin
    p2 = new();
  end
endmodule


//OUTPUT
# KERNEL:  d1 : a = 6 
# KERNEL:  d1 : a = 1 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
