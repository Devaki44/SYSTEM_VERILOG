module casting;
  int a;
  integer b;
  
  initial begin
    a= 8'b00x1_xxxx;
    
    $display(" %0b ",a);
    
    b = byte'(a);
    $display(" %0b ",a);
  end
endmodule



//OUTPUT
# KERNEL:  10000 
# KERNEL:  10000 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
