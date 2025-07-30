//CODE
class packet;
  rand bit[3:0] data;
  
  constraint data_c { soft data < 10 ;}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(5)begin
      pkt.randomize() with { data > 10 ;};
        $display(" data = %0d ",pkt.data);
    end
  end
endmodule


//OUTPUT
# KERNEL:  data = 13 
# KERNEL:  data = 11 
# KERNEL:  data = 11 
# KERNEL:  data = 15 
# KERNEL:  data = 13 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
