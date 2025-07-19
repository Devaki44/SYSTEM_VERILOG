class param #(parameter int N=4,M=2);
  bit [N-1:0]a;
  reg [M-1:0]b;
  
  function new();
    a = 16 ;
    b = 3  ;
    $display("a =%0d ,b=%0d",a,b);
  endfunction
endclass

module test;
 initial begin
   param #(5,6)p;
   p = new();  
 end
endmodule

//OUTPUT
# KERNEL: a =16 ,b=3
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
