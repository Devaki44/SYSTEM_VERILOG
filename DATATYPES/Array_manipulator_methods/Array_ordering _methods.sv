module array_ordering_method;
  
  int arr[8] = '{43,67,95,34,56,01,32,77};
  
  initial begin
    
    //Reverse
    arr.reverse();
    $display("Reversed array is: %p",arr);
    
    //Sort
    arr.sort();
    $display("The sorted array is : %p ",arr);
    
    //rsort
    arr.rsort();
    $display("The resorted array is: %p ",arr);
    
    //Shuffle
    arr.shuffle();
    $display("The shuffled array is : %p ",arr);
    
  end
endmodule
  
  
  
/*  
# KERNEL: Reversed array is: '{77, 32, 1, 56, 34, 95, 67, 43}
# KERNEL: The sorted array is : '{1, 32, 34, 43, 56, 67, 77, 95} 
# KERNEL: The resorted array is: '{95, 77, 67, 56, 43, 34, 32, 1} 
# KERNEL: The shuffled array is : '{43, 1, 95, 34, 56, 32, 67, 77} 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
*/
