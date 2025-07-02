module dynamic_array;
  int arr_0[] ;
  
 initial begin
   arr_0 = new[10] ;  
   arr_0 = '{1,2,3,4,5,6,7,8,9,10};
   
   foreach(arr_0[i])begin
     $display("arr_0[%0d]=%0d",i,arr_0[i]);
   end
   arr_0.delete();
   $display("After deleting, the array :",arr_0);
   
 end
  
endmodule

# KERNEL: arr_0[0]=1
# KERNEL: arr_0[1]=2
# KERNEL: arr_0[2]=3
# KERNEL: arr_0[3]=4
# KERNEL: arr_0[4]=5
# KERNEL: arr_0[5]=6
# KERNEL: arr_0[6]=7
# KERNEL: arr_0[7]=8
# KERNEL: arr_0[8]=9
# KERNEL: arr_0[9]=10
# KERNEL: After deleting, the array :'{}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
