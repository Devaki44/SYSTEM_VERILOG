module casting;
  real a;
  time b;
  
  initial begin
    a= 8.002;
    
    $display(" %0f ",a);
    
    b = time'(a);
    $display(" %b ",b);
  end
endmodule




//OUTPUT
# KERNEL:  8.002000 
# KERNEL:  0000000000000000000000000000000000000000000000000000000000001000 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
