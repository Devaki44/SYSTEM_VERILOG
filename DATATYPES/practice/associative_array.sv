module associative_array;
  int arr[string];
  string result ;
  
  initial begin
    arr = '{"one" : 1,"two" : 2,"three" : 3,"four" : 4};
    
    foreach(arr[i])begin
      $display(" arr[%0s] = %0d ",i,arr[i]);
    end
    
    $display(" number of element in an array : %0d",arr.num());
    $display(" size of the  array : %0d",arr.size());
    
    arr.delete("four");
    $display(" after deletion : %p ",arr);
    
    arr.first(result);
    $display(" result : %0s",result);
    
    arr.last(result);
    $display(" result : %0s",result);
    
    arr.prev(result);
    $display(" result : %0s",result);
    
    arr.next(result);
    $display(" result : %0s",result);
    
    if(arr.exists("one"))
      $display(" EXISTS ");
    else
      $display(" NOT EXISTS ");
    
    arr["five"] = 5;
    $display("the final array is : %p",arr);

    
  end
endmodule
