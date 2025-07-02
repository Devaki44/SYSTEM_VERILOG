module dynamic_array;
  int arr[] ;
  
 initial begin
  arr = new[10] ;  
  arr = {1,2,3,4,5,6,7,8,9,10} ;
   
   foreach(arr[i])begin
     $display("arr[%0d]=%0d",i,arr[i]);
   end
   
 end
  
endmodule


# KERNEL: arr[0]=1
# KERNEL: arr[1]=2
# KERNEL: arr[2]=3
# KERNEL: arr[3]=4
# KERNEL: arr[4]=5
# KERNEL: arr[5]=6
# KERNEL: arr[6]=7
# KERNEL: arr[7]=8
# KERNEL: arr[8]=9
# KERNEL: arr[9]=10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
