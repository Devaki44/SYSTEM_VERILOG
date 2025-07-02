module dynamic_array;
  int arr_0[] ;
  int arr_1[] ;
  
 initial begin
   arr_0 = new[10] ;  
   arr_0 = '{1,2,3,4,5,6,7,8,9,10};
   arr_1 = new[10](arr_0) ;
   
   foreach(arr_1[i])begin
     
     $display("arr_1[%0d]=%0d",i,arr_1[i]);
   end
   
 end
  
endmodule

# KERNEL: arr_1[0]=1
# KERNEL: arr_1[1]=2
# KERNEL: arr_1[2]=3
# KERNEL: arr_1[3]=4
# KERNEL: arr_1[4]=5
# KERNEL: arr_1[5]=6
# KERNEL: arr_1[6]=7
# KERNEL: arr_1[7]=8
# KERNEL: arr_1[8]=9
# KERNEL: arr_1[9]=10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
