module array_locator;
  int arr[];
  int result[];
  
  initial begin
    arr = {2,5,4,4,6,7,7,8,9,2};
    
    result = arr.find(x) with (x==4);
    $display(" data is : %0p ",result);
    
    result = arr.find_first(x) with (x==4);
    $display(" data is : %0p ",result);
    
    result = arr.find_index(x) with (x==4);
    $display(" .....data is : %0p ",result);
    
    result = arr.find_first_index(x) with (x==4);
    $display(" index is : %0p ",result);
    
    result = arr.find_last(x) with (x==4);
    $display(" data is : %0p ",result);
    
    result = arr.find_last_index(x) with (x==4);
    $display(" index is : %0p ",result);
    
    result = arr.min();
    $display(" data is : %0p ",result);
    
    result = arr.max();
    $display(" data is : %0p ",result);
    
    result = arr.unique();
    $display(" data is : %0p ",result);
    
    result = arr.unique_index();
    $display(" data is : %0p ",result);
    
    
    
    
    
    
  end
endmodule
    
    
