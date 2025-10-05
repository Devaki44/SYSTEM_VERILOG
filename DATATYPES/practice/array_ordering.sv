module array_locator;
  int arr[];
  
  initial begin
    arr =  {22,64,78,91,3,4};
    
    arr.sort();
    $display(" arary is : %0p ",arr);
    
    arr.rsort();
    $display(" array is : %0p ",arr);
    
    arr.reverse();
    $display(" array is : %0p ",arr);
    
    arr.shuffle();
    $display(" array is : %0p ",arr);
  end
endmodule
