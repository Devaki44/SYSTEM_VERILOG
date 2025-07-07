module array_locator;
  int arr[];
  int result[$];  
  
  initial begin
    arr = new[6];
    arr = '{66,55,44,33,22,11};
    
    //.find()
    result = arr.find(x) with (x >= 22);
    $display("The result is :%p ",result);
    
    //.find_index()
    result = arr.find_index(x) with (x < 44);
    $display("The indexes : %p ",result);
 
    //.find_first()
    result = arr.find_first(x) with (x > 55);
    $display("The first element is : %p",result);
    
    //.find_first_index()
    result = arr.find_first_index(x) with (x > 55);
    $display("The first element's index is : %p",result);
    
    //.find_last()
    result = arr.find_last(x) with (x < 22);
    $display("The last element is : %p",result);
    
    //.find_last_index()
    result = arr.find_last_index(x) with (x < 22);
    $display("The last element's index is : %p",result);
    
    //.min()
    result = arr.min();
    $display("The minimum value of the array is : %p",result);
    
    //.max()
    result = arr.max();
    $display("The maximum value of the array is : %p",result);
    
    //.unique()
    result = arr.unique();
    $display("The unique value of arrray is : %p",result);    
    
    //.unique()
    result = arr.unique_index();
    $display("The unique value's index of arrray is : %p",result);
    
  end
endmodule




# KERNEL: The result is :'{66, 55, 44, 33, 22} 
# KERNEL: The indexes : '{3, 4, 5} 
# KERNEL: The first element is : '{66}
# KERNEL: The first element's index is : '{0}
# KERNEL: The last element is : '{11}
# KERNEL: The last element's index is : '{5}
# KERNEL: The minimum value of the array is : '{11}
# KERNEL: The maximum value of the array is : '{66}
# KERNEL: The unique value of arrray is : '{11, 22, 33, 44, 55, 66}
# KERNEL: The unique value's index of arrray is : '{5, 4, 3, 2, 1, 0}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
