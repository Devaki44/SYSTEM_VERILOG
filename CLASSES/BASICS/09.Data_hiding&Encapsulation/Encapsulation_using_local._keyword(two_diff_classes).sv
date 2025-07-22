//DESIGN CODE
class packet1;
  local int a = 5;

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
ERROR VCP5248 "Cannot access local/protected member ""a"" from this scope." "testbench.sv" 14  32
FAILURE "Compile failure 1 Errors 0 Warnings  Analysis time: 0[s]."
Exit code expected: 0, received: 255
