module array_reduction;
  int arr[];
  int arr1[];
  
  initial begin
    arr = { 1,2,3,4,5};
    arr1 = {1,1,0,1};
    
    $display(" sum : %0d ",arr.sum());
    $display(" product :%0d ",arr.product());
    $display(" and :%0b ",arr1.and());
    $display(" or : %0b ",arr1.or());
    $display(" xor : %0b ",arr1.xor());
  end
endmodule
