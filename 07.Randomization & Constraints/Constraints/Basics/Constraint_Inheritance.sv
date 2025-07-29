//CODE
class parent;
  rand logic[3:0]data;
  
  constraint data_c { data > 5;}
endclass

class child extends parent;
  
  constraint data_c{ data < 5 ;}
endclass
module test;
  parent pkt1;
  child pkt2;
  initial begin
  
   pkt1 = new();
   pkt2 = new();
  
   pkt1.randomize();
    $display(" data = %0d ",pkt1.data);
    
    pkt2.randomize();
    $display(" data = %0d ",pkt2.data);
  end
endmodule


//OUTPUT
# KERNEL:  data = 11 
# KERNEL:  data = 3 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
