//CODE
class packet;
  randc bit[3:0]data;
  
  constraint data_c{ data inside {[5:10]};}
  
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
# KERNEL:  data = 5 
# KERNEL:  data = 9 
# KERNEL:  data = 7 
# KERNEL:  data = 6 
# KERNEL:  data = 10 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
