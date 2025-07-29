//CODE
class packet;
  rand bit[3:0] data ;
  
  constraint data_c{ data dist{2:/5 , [10:12]:/8}; }
endclass

module test;
  packet pkt ;
  initial begin
    pkt = new();
    repeat(13)begin
     pkt.randomize();
      $display(" data = %0d ",pkt.data);
    end
  end
endmodule


//OUTPUT
# KERNEL:  data = 2 
# KERNEL:  data = 12 
# KERNEL:  data = 11 
# KERNEL:  data = 2 
# KERNEL:  data = 2 
# KERNEL:  data = 2 
# KERNEL:  data = 2 
# KERNEL:  data = 12 
# KERNEL:  data = 11 
# KERNEL:  data = 12 
# KERNEL:  data = 11 
# KERNEL:  data = 11 
# KERNEL:  data = 12 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
