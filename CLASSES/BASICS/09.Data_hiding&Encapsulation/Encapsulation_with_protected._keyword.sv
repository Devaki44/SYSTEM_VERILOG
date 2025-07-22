//DESIGN CODE
class packet1;
  protected int a = 5;

  function new();
    a++ ;
    $display(" d1 : a = %0d ",a);
  endfunction
  
endclass

class packet2 extends packet1;
  
  function new();
    $display(" d3 : a = %0d ",a);
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
# KERNEL:  d3 : a = 6 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
