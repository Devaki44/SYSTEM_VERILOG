module arr_ordering;
  int arr[];
  
  initial begin
    arr = '{22,65,33,75,3,1};
    
    //reverse
    arr.reverse();
    $display(" reversed array is : %p ",arr);
    
    //sort
    arr.sort();
    $display(" sorted array is :%p ",arr);
    
    //rsort
    arr.rsort();
    $display(" re-sorted array is : %p ",arr);
    
    //shuffle
    arr.shuffle();
    $display(" shuffled arrayb is : %p",arr);
  end
endmodule


//OUTPUT
# KERNEL:  reversed array is : '{1, 3, 75, 33, 65, 22} 
# KERNEL:  sorted array is :'{1, 3, 22, 33, 65, 75} 
# KERNEL:  re-sorted array is : '{75, 65, 33, 22, 3, 1} 
# KERNEL:  shuffled arrayb is : '{3, 65, 75, 1, 22, 33}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
