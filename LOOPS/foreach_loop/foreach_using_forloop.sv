module foreach_loop;
  int arr[7:0];
  
  initial begin
    arr = '{0,1,2,3,4,5,6,7};
    for(int i=0 ; i<$size(arr)   ; i++)begin
      $display("arr[%0d] = %0d",arr[i],i);
    end
  end
endmodule



# KERNEL: arr[7] = 0
# KERNEL: arr[6] = 1
# KERNEL: arr[5] = 2
# KERNEL: arr[4] = 3
# KERNEL: arr[3] = 4
# KERNEL: arr[2] = 5
# KERNEL: arr[1] = 6
# KERNEL: arr[0] = 7
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
