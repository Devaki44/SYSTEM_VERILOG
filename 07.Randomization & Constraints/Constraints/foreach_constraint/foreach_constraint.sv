//CODE
class packet;
  rand byte data[7:0];
  constraint data_c{ foreach(data[i]) 
           				 data[i] > 1;}
endclass

module  test;
  packet pkt;
  initial  begin
  pkt = new();
  repeat(2) begin
    pkt.randomize();
    $display(" data={ %0p } ",pkt.data);
  end
  end
endmodule

//OUTPUT
# KERNEL:  data={ 99 124 60 98 105 28 47 77 } 
# KERNEL:  data={ 94 87 108 66 68 25 121 54 } 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
