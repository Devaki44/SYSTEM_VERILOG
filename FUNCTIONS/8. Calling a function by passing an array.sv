//8. Calling a function by passing an array
module func;
  int array[5];
  
  initial begin
    void'(function_call(array));
    $display("array = %p ",array);
  end
  
  function automatic void function_call(ref int arr[5]);  
    foreach(arr[i])begin
      arr[i] = i+1 ;
      $display("arr [%0d] = %p ",i,arr[i]);
    end
    
  endfunction
  
endmodule




//output
# run -all
# arr [0] = 1 
# arr [1] = 2 
# arr [2] = 3 
# arr [3] = 4 
# arr [4] = 5 
# array = '{1, 2, 3, 4, 5} 
# exit
