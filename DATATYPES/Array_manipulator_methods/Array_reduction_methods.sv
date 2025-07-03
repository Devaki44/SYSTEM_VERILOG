module array_reduction;
  int arr[5];
  
  initial begin
    arr = '{1,3,1,7,1};
    
    //Sum
    $display("Sum of the array : %0d",arr.sum());
    
    //Product
    $display("Product of array : %0d",arr.product());
    
    //and
    $display("and function of array : %0b",arr.and());
    
    //or
    $display("or function of array : %0b",arr.or());
    
    //xor
    $display("xor function of array : %0b",arr.xor());
            
  end
  endmodule


# KERNEL: Sum of the array : 13
# KERNEL: Product of array : 21
# KERNEL: and function of array : 1
# KERNEL: or function of array : 111
# KERNEL: xor function of array : 101
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
