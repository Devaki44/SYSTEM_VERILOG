//CODE
class packet;
  rand byte data[];
  rand bit[3:0]size;
  
  constraint data_c{ foreach(data[i]) 
           				 data[i] > 1;}
  constraint size_d{ data.size < 5 ;}
endclass

module  test;
  packet pkt;
  initial  begin
  pkt = new();
    repeat(5) begin
    pkt.randomize();
    
    $display(" size = %0d ",pkt.data.size());
    foreach(pkt.data[i])
      $display(" data : %0p ",pkt.data[i]);
    $display("-------------------------");
  end
  end
endmodule


//OUTPUT
# KERNEL:  size = 3 
# KERNEL:  data : 124 
# KERNEL:  data : 60 
# KERNEL:  data : 98 
# KERNEL: -------------------------
# KERNEL:  size = 3 
# KERNEL:  data : 28 
# KERNEL:  data : 47 
# KERNEL:  data : 77 
# KERNEL: -------------------------
# KERNEL:  size = 3 
# KERNEL:  data : 88 
# KERNEL:  data : 66 
# KERNEL:  data : 68 
# KERNEL: -------------------------
# KERNEL:  size = 0 
# KERNEL: -------------------------
# KERNEL:  size = 3 
# KERNEL:  data : 76 
# KERNEL:  data : 25 
# KERNEL:  data : 45 
# KERNEL: -------------------------
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
