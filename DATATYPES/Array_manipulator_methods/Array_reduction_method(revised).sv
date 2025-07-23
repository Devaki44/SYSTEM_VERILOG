module arr_reduction;
  int arr[];
  int arr1[];
  initial begin
    arr = '{1,2,3,4,5};
    arr1 = {1,0,1,1};
    
    $display("Sum of arr : %0d",arr.sum());//sum
    
    $display("product of arr : %0d ",arr.product());//product
    
    $display("and_operstion of arr1 : %0b",arr1.and());//and
    
    $display(" or_operation of arr1 : %0b",arr1.or());//or
    
    $display(" xor_operation of arr1 : %0b",arr1.xor());//xor
  end
endmodule


//OUTPUT
# KERNEL: Sum of arr : 15
# KERNEL: product of arr : 120 
# KERNEL: and_operstion of arr1 : 0
# KERNEL:  or_operation of arr1 : 1
# KERNEL:  xor_operation of arr1 : 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
