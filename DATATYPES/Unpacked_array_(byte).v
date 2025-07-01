module unpacked_array;
  byte a[7:0];
  
  initial begin
    a = {1,2,3,4,5,6,7,8} ;
    
    foreach(a[i])begin
      $display("data of a[%0d] = %0d",i,a[i]);
    end
  end
endmodule
    
    


# KERNEL: data of a[7] = 1
# KERNEL: data of a[6] = 2
# KERNEL: data of a[5] = 3
# KERNEL: data of a[4] = 4
# KERNEL: data of a[3] = 5
# KERNEL: data of a[2] = 6
# KERNEL: data of a[1] = 7
# KERNEL: data of a[0] = 8
