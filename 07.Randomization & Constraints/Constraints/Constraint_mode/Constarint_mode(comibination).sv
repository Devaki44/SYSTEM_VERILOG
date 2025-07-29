//CODE
class packet;
  rand bit[3:0]data;
  rand bit[3:0]addr;
  
  constraint data_c{ data inside {[5:12]}; }
  constraint addr_c{ addr inside {[5:12]}; }
endclass

module test;
  packet pkt ;
  initial begin
    pkt = new() ;
    
    repeat(5)begin
      pkt.data_c.constraint_mode(0);
      pkt.randomize();
      $display(" data =%0d , addr=%0d ",pkt.data,pkt.addr);
    end
  end
endmodule



//OUTPUT
# KERNEL:  data =0 , addr=11 
# KERNEL:  data =1 , addr=6 
# KERNEL:  data =10 , addr=11 
# KERNEL:  data =14 , addr=6 
# KERNEL:  data =13 , addr=10 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
