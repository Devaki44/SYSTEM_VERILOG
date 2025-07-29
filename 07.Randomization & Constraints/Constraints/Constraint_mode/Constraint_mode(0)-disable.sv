//CODE
class packet;
  rand bit[3:0]data;
  
  constraint data_c{ data inside {[5:12]}; }
endclass

module test;
  packet pkt ;
  initial begin
    pkt = new() ;
    
    repeat(5)begin
      pkt.constraint_mode(0);
      pkt.randomize();
      $display(" data =%0d ",pkt.data);
    end
  end
endmodule



//OUTPUT
# KERNEL:  data =9 
# KERNEL:  data =3 
# KERNEL:  data =0 
# KERNEL:  data =13 
# KERNEL:  data =3 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
