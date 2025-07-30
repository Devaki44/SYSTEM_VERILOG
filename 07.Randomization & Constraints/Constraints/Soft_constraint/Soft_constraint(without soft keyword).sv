//CODE
class packet;
  rand int data;
  
  constraint data_c { data < 10 ;}
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
# RCKERNEL: Warning: RC_0024 testbench.sv(13): Randomization failed. The condition of randomize call cannot be satisfied.
# RCKERNEL: Info: RC_0109 testbench.sv(13): ... after reduction pkt.data to 4'(pkt.data)
# RCKERNEL: Info: RC_0103 testbench.sv(13): ... the following condition cannot be met: (pkt.data<10)&&(pkt.data>10)
# RCKERNEL: Info: RC_1007 testbench.sv(1): ... see class 'packet' declaration.
# KERNEL:  data = 0 
# KERNEL:  data = 0 
# KERNEL:  data = 0 
# KERNEL:  data = 0 
# KERNEL:  data = 0 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
