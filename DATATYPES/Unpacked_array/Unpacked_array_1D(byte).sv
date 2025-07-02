
module Unpacked_array;
  byte a[7:0];
  
  initial begin
    
    foreach(a[i])begin
      
      a[i] = $urandom_range(64,128);
      
      $display("data of a[%0d] = %b",i,a[i]);
    end
  end
endmodule


# KERNEL: data of a[7] = 01101010
# KERNEL: data of a[6] = 01110100
# KERNEL: data of a[5] = 01101101
# KERNEL: data of a[4] = 01100100
# KERNEL: data of a[3] = 01010101
# KERNEL: data of a[2] = 01001011
# KERNEL: data of a[1] = 01001010
# KERNEL: data of a[0] = 10000000
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
