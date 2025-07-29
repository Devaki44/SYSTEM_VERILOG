//CODE
class packet;
  rand bit[3:0]data;
  constraint addr_c {data < 5 ; }
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    repeat(5)begin
    	pkt.randomize();
    	$display(" data=%0d ",pkt.data);
    end
  end
endmodule


//OUTPUT
# KERNEL:  data=3 
# KERNEL:  data=0 
# KERNEL:  data=0 
# KERNEL:  data=1 
# KERNEL:  data=4 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
