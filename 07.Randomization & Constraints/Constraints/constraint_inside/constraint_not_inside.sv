//CODE
class packet;
  randc bit[3:0]data;
  
  constraint data_c{ !(data inside {[5:10]});}
  
endclass

module test;
  packet ptk;
  initial begin
    ptk = new() ;
    repeat(5)begin
      ptk.randomize();
      $display(" data = %0d ",ptk.data);
    end
  end
endmodule


//OUTPUT
# KERNEL:  data = 13 
# KERNEL:  data = 1 
# KERNEL:  data = 15 
# KERNEL:  data = 0 
# KERNEL:  data = 11 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
