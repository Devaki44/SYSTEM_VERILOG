module dynamic_array;
  int arr[] ;
  
 initial begin
  arr = new[10] ;  
  arr = {1,2,3,4,5,6,7,8,9,10} ;
   
   $display("Size of the array = %0d ", arr.size());
   
 end 
endmodule


# KERNEL: Size of the array = 10 
