//CODE
class packet;
  rand byte data;
  randc byte addr;
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    pkt.addr.rand_mode(0);
    
    repeat(10)begin
      pkt.randomize();
      $display(" addr = %0d , data = %0d ",pkt.addr,pkt.data);
    end
  end
endmodule


//OUTPUT
# KERNEL:  addr = 0 , data = -39 
# KERNEL:  addr = 0 , data = 99 
# KERNEL:  addr = 0 , data = -64 
# KERNEL:  addr = 0 , data = -67 
# KERNEL:  addr = 0 , data = 67 
# KERNEL:  addr = 0 , data = 93 
# KERNEL:  addr = 0 , data = -31 
# KERNEL:  addr = 0 , data = -110 
# KERNEL:  addr = 0 , data = 42 
# KERNEL:  addr = 0 , data = 90 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
