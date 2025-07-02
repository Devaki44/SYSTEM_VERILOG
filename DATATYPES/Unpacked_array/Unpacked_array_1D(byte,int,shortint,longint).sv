module Unpacked_array;
  byte a[7:0];
  
  initial begin
    
    foreach(a[i])begin
      
      a[i] = $urandom_range(0,127);
      
      $display("data of a[%0d] = %b",i,a[i]);
    end
  end
endmodule

# KERNEL: data of a[7] = 00000110
# KERNEL: data of a[6] = 01111100
# KERNEL: data of a[5] = 01100011
# KERNEL: data of a[4] = 01101101
# KERNEL: data of a[3] = 01011100
# KERNEL: data of a[2] = 01011111
# KERNEL: data of a[1] = 01011110
# KERNEL: data of a[0] = 01000000
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.




module Unpacked_array;
  int a[7:0];
  
  initial begin
    
    foreach(a[i])begin
      
      a[i] = $urandom_range(0,4096);
      
      $display("data of a[%0d] = %b",i,a[i]);
    end
  end
endmodule

# KERNEL: data of a[7] = 00000000000000000000110101110101
# KERNEL: data of a[6] = 00000000000000000000011100011111
# KERNEL: data of a[5] = 00000000000000000000101110000010
# KERNEL: data of a[4] = 00000000000000000000100110001110
# KERNEL: data of a[3] = 00000000000000000000000011000001
# KERNEL: data of a[2] = 00000000000000000000000011100011
# KERNEL: data of a[1] = 00000000000000000000101101110110
# KERNEL: data of a[0] = 00000000000000000000111100110111
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.




module Unpacked_array;
  shortint a[7:0];
  
  initial begin
    
    foreach(a[i])begin
      
      a[i] = $urandom_range(0,4096);
      
      $display("data of a[%0d] = %b",i,a[i]);
    end
  end
endmodule
# KERNEL: data of a[6] = 0000011100011111
# KERNEL: data of a[5] = 0000101110000010
# KERNEL: data of a[4] = 0000100110001110
# KERNEL: data of a[3] = 0000000011000001
# KERNEL: data of a[2] = 0000000011100011
# KERNEL: data of a[1] = 0000101101110110
# KERNEL: data of a[0] = 0000111100110111
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.




module Unpacked_array;
  longint a[7:0];
  
  initial begin
    
    foreach(a[i])begin
      
      a[i] = $urandom_range(0,4096);
      
      $display("data of a[%0d] = %b",i,a[i]);
    end
  end
endmodule
# KERNEL: data of a[7] = 0000000000000000000000000000000000000000000000000000110101110101
# KERNEL: data of a[6] = 0000000000000000000000000000000000000000000000000000011100011111
# KERNEL: data of a[5] = 0000000000000000000000000000000000000000000000000000101110000010
# KERNEL: data of a[4] = 0000000000000000000000000000000000000000000000000000100110001110
# KERNEL: data of a[3] = 0000000000000000000000000000000000000000000000000000000011000001
# KERNEL: data of a[2] = 0000000000000000000000000000000000000000000000000000000011100011
# KERNEL: data of a[1] = 0000000000000000000000000000000000000000000000000000101101110110
# KERNEL: data of a[0] = 0000000000000000000000000000000000000000000000000000111100110111
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
