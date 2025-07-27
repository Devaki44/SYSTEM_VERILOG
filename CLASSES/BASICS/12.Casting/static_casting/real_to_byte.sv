module casting;
  real a;
  byte b;
  
  initial begin
    a= 8;
    
    $display(" %0d ",a);
    
    b = byte'(a);
    $display(" %b ",b);
  end
endmodule


//OUTPUT
# KERNEL:  8 
# KERNEL:  00001000 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
