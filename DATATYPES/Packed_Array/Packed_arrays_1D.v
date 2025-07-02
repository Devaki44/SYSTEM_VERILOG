module packed_array;
  logic [31:0]a;
  
  initial begin
    a = 32'habcd_abcd ;
    
    foreach(a[i])begin
         $display("data of a[%0d] = %0b",i,a[i]);
    end
  end
endmodule


module packed_array;
  reg [31:0]a;
  
  initial begin
    a = 32'habcd_abcd ;
    
    foreach(a[i])begin
         $display("data of a[%0d] = %0b",i,a[i]);
    end
  end
endmodule




module packed_array;
  bit [31:0]a;
  
  initial begin
    a = 32'habcd_abcd ;
    
    foreach(a[i])begin
         $display("data of a[%0d] = %0b",i,a[i]);
    end
  end
endmodule



# KERNEL: data of a[31] = 1
# KERNEL: data of a[30] = 0
# KERNEL: data of a[29] = 1
# KERNEL: data of a[28] = 0
# KERNEL: data of a[27] = 1
# KERNEL: data of a[26] = 0
# KERNEL: data of a[25] = 1
# KERNEL: data of a[24] = 1
# KERNEL: data of a[23] = 1
# KERNEL: data of a[22] = 1
# KERNEL: data of a[21] = 0
# KERNEL: data of a[20] = 0
# KERNEL: data of a[19] = 1
# KERNEL: data of a[18] = 1
# KERNEL: data of a[17] = 0
# KERNEL: data of a[16] = 1
# KERNEL: data of a[15] = 1
# KERNEL: data of a[14] = 0
# KERNEL: data of a[13] = 1
# KERNEL: data of a[12] = 0
# KERNEL: data of a[11] = 1
# KERNEL: data of a[10] = 0
# KERNEL: data of a[9] = 1
# KERNEL: data of a[8] = 1
# KERNEL: data of a[7] = 1
# KERNEL: data of a[6] = 1
# KERNEL: data of a[5] = 0
# KERNEL: data of a[4] = 0
# KERNEL: data of a[3] = 1
# KERNEL: data of a[2] = 1
# KERNEL: data of a[1] = 0
# KERNEL: data of a[0] = 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.




    
