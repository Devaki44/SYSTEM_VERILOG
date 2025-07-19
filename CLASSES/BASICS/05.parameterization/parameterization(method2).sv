class param;
  parameter int N=4;
  bit [N-1:0]a;
  
  function new();
    a = 4'd10 ;
    $display("a =%d ",a);
  endfunction
endclass

module test;
 initial begin
  param p = new();  
 end
endmodule


//OUTPUT
# KERNEL: a =10 
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
