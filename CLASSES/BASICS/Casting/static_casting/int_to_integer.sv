module casting;
  integer a;
  int b;
  
  initial begin
    a= 8'b00x1_xxxx;
    
    $display(" %b ",a);
    
    b = int'(a);
    $display(" %b ",b);
  end
endmodule
    



//OUTPUT
# KERNEL:  00000000000000000000000000x1xxxx 
# KERNEL:  00000000000000000000000000010000 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
