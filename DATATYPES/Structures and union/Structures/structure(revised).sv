module structure;
  struct {int addr;
         byte data;
         string name;}details;
  initial begin
    
    details = '{32'h9000_00ee,8'hff,"devaki"};

    
    $display(" addr = %b ",details.addr);
    $display(" data = %b ",details.data);
    $display(" name = %s ",details.name);
  end
endmodule


//OUTPUT
# KERNEL:  addr = 10010000000000000000000011101110 
# KERNEL:  data = 11111111 
# KERNEL:  name = devaki 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
