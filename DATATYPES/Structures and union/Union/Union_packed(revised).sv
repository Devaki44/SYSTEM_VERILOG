module union_packed;
  
  union packed{int addr;
        	   int data;}details;
  
  initial begin
    
    details.addr = 32'hff;
    
    $display(" addr = %0h ",details.addr);
    $display(" data = %0h ",details.data);
  end
endmodule

//OUTPUT
# KERNEL:  addr = ff 
# KERNEL:  data = ff 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
