//CODE
class packet;
  randc byte addr;
  
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(10)begin
      pkt.randomize();
      $display(" addr = %0d ",pkt.addr);
    end
  end
endmodule


//OUTPUT
# KERNEL:  addr = 46 
# KERNEL:  addr = -31 
# KERNEL:  addr = -123 
# KERNEL:  addr = 34 
# KERNEL:  addr = 15 
# KERNEL:  addr = -49 
# KERNEL:  addr = 66 
# KERNEL:  addr = 6 
# KERNEL:  addr = 23 
# KERNEL:  addr = 5 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
