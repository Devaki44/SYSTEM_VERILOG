//CODE
class packet;
  rand byte data;
  randc byte addr;
  
  //pre_randomize()
  function void pre_randomize();
    $display("Inside pre_randomize");
    $display(" data=%0d , addr=%0d ",data,addr);
    
  endfunction
  
  //post_randomize
  function void post_randomize();
    $display("Inside post_randomize");
    $display(" data=%0d , addr=%0d ",data,addr);
  endfunction
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
	pkt.randomize();
  end
endmodule


//OUTPUT
# KERNEL: Inside pre_randomize
# KERNEL:  data=0 , addr=0 
# KERNEL: Inside post_randomize
# KERNEL:  data=-39 , addr=97 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
