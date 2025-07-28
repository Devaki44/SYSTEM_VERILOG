//CODE
class packet;
  rand byte data;
  randc byte addr;
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    pkt.rand_mode(0);
    
    repeat(10)begin
      pkt.randomize();
      $display(" addr = %0d , data = %0d ",pkt.addr,pkt.data);
    end
  end
endmodule


//OUTPUT
# KERNEL:  addr = 0 , data = 0 
# KERNEL:  addr = 0 , data = 0 
# KERNEL:  addr = 0 , data = 0 
# KERNEL:  addr = 0 , data = 0 
# KERNEL:  addr = 0 , data = 0 
# KERNEL:  addr = 0 , data = 0 
# KERNEL:  addr = 0 , data = 0 
# KERNEL:  addr = 0 , data = 0 
# KERNEL:  addr = 0 , data = 0 
# KERNEL:  addr = 0 , data = 0 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
