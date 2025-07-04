module unpacked_array;
  bit arr[7:0];
  
  
  initial begin
    arr= {1,2,3,4,5,6,7,8};
    
    foreach(arr[i])begin
      $display("arr[%0d] = %0d",i,arr[i]);
    end
  end
endmodule


# KERNEL: arr[7] = 1
# KERNEL: arr[6] = 0
# KERNEL: arr[5] = 1
# KERNEL: arr[4] = 0
# KERNEL: arr[3] = 1
# KERNEL: arr[2] = 0
# KERNEL: arr[1] = 1
# KERNEL: arr[0] = 0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
