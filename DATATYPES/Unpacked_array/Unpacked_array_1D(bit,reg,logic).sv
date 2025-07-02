//Same for  reg and logic

module Unpacked_array;
  bit a[7:0];
  
  initial begin
    
    foreach(a[i])begin
      
      a[i] = $urandom_range(0,1);
      
      $display("data of a[%0d] = %b",i,a[i]);
    end
  end
endmodule
# KERNEL: data of a[7] = 0
# KERNEL: data of a[6] = 0
# KERNEL: data of a[5] = 1
# KERNEL: data of a[4] = 1
# KERNEL: data of a[3] = 0
# KERNEL: data of a[2] = 1
# KERNEL: data of a[1] = 0
# KERNEL: data of a[0] = 0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.


//FOR VECTORS

module Unpacked_array;
  bit [7:0]a[7:0];
  
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
