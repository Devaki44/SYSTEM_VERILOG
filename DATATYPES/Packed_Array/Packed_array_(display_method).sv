module packed_array;
  bit [7:0]arr;
  
  
  initial begin
    arr= 8'hff ;
    
    foreach(arr[i])begin
      $display("arr[%0d] = %0d",i,arr[i]);
    end
  end
endmodule



# KERNEL: arr[7] = 1
# KERNEL: arr[6] = 1
# KERNEL: arr[5] = 1
# KERNEL: arr[4] = 1
# KERNEL: arr[3] = 1
# KERNEL: arr[2] = 1
# KERNEL: arr[1] = 1
# KERNEL: arr[0] = 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
