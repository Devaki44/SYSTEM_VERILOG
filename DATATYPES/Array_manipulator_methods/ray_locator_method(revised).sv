module arr_locator;
  int arr[];
  int result[$];
  
  initial begin
    arr = {7,6,5,4,6,2,1};
    
    //find
    result = arr.find(x) with (x==6);
    $display(" the data is : %p",result);
    
    //find_index
    result = arr.find_index(x) with (x==6);
    $display(" the data is : %p",result);
    
    //find_first
    result = arr.find_first(x) with (x==6);
    $display(" the data is : %p",result);
    
    //find_first_index
    result = arr.find_first_index(x) with (x==6);
    $display(" the data is : %p",result);
    
    //find_last
    result = arr.find_last(x) with (x==6);
    $display(" the data is : %p",result);
    
    //find_last_index
    result = arr.find_last_index(x) with (x==6);
    $display(" the data is : %p",result);
    
    //min()
    result = arr.min();
    $display("minimum of array is : %p ",result);
    
    //max()
    result = arr.max();
    $display("maximum of array is : %p",result);
    
    //unique()
    result = arr.unique();
    $display(" unique element : %p ",result);
    
    //unique_index()
    result = arr.unique_index();
    $display(" their indeces : %p",result);
  end
endmodule


//OUTPUT
# KERNEL:  the data is : '{6, 6}
# KERNEL:  the data is : '{1, 4}
# KERNEL:  the data is : '{6}
# KERNEL:  the data is : '{1}
# KERNEL:  the data is : '{6}
# KERNEL:  the data is : '{4}
# KERNEL: minimum of array is : '{1} 
# KERNEL: maximum of array is : '{7}
# KERNEL:  unique element : '{1, 2, 4, 5, 6, 7} 
# KERNEL:  their indeces : '{6, 5, 3, 2, 1, 0}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
