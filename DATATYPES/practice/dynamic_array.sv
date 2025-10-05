module dynamic_array;
  int arr[];
  int arr1[];
  
  initial begin
    arr = new[10];
    
    foreach(arr[i])begin
      arr[i] = $urandom_range(0,100);
      $display(" arr[%0d] = %0d ",i,arr[i]);
    end
    
    $display("------------------------------------");
    
    arr1 =  new[10](arr);
    foreach(arr[i])begin   
      $display("arr1[%0d] = %0d ",i,arr1[i]);
    end
    
    $display(" size of the array is : %0d ",arr.size());
    arr1.delete();
    $display(" the array is :  %p ",arr);
    
  end
endmodule
