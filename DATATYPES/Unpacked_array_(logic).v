module unpacked_array;
  logic a[7:0];
  
  initial begin
    a = {1,2,3,4,5,6,7,8} ;
    
    foreach(a[i])begin
         $display("data of a[%0d] = %0b",i,a[i]);
    end
  end
endmodule



# KERNEL: data of a[7] = 1
# KERNEL: data of a[6] = 0
# KERNEL: data of a[5] = 1
# KERNEL: data of a[4] = 0
# KERNEL: data of a[3] = 1
# KERNEL: data of a[2] = 0
# KERNEL: data of a[1] = 1
# KERNEL: data of a[0] = 0
