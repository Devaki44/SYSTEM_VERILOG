//CODE
class packet;
  rand bit[2:0]data_1;
  randc bit[2:0]data_2;
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(8)begin
      pkt.randomize();
      $display(" data_1 = %0d , data_2 = %0d ",pkt.data_1,pkt.data_2);
    end
  end
endmodule


//OUTPUT
# KERNEL:  data_1 = 1 , data_2 = 1 
# KERNEL:  data_1 = 0 , data_2 = 6 
# KERNEL:  data_1 = 5 , data_2 = 2 
# KERNEL:  data_1 = 3 , data_2 = 0 
# KERNEL:  data_1 = 5 , data_2 = 3 
# KERNEL:  data_1 = 1 , data_2 = 4 
# KERNEL:  data_1 = 2 , data_2 = 5 
# KERNEL:  data_1 = 2 , data_2 = 7 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
