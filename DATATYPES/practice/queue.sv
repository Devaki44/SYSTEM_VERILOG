module queue;
  int arr[$];
  
  initial begin
    arr = {1,2,3,4,5,6,7};
    
    $display(" array is : %0p ",arr);
    
    $display(" size of the array is : %0d ",arr.size());
    
    arr.delete(4);
    $display(" array after deletion : %0p ",arr);
    
    arr.insert(5,88);
    $display(" array after insertion : %0p ",arr);
    
    arr.push_front(11);
    $display(" array after push_front : %0p ",arr);
    
    arr.push_back(11);
    $display(" array after push_back : %0p ",arr);
    
    arr.pop_front();
    $display(" array after pop_front : %0p",arr);
    
    arr.pop_back();
    $display("array after pop_back : %0p ",arr);
    
  end
endmodule
