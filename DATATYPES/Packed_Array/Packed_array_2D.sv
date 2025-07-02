module packed_array;
  logic [3:0][7:0]a;
  
 initial begin
   a= 32'hffff_eacd ;
  foreach(a[i,j])begin
    $display("a[%0d][%0d]= %d",i,j,a[i][j]);
  end
 end
endmodule



module packed_array;
  reg [3:0][7:0]a;
  
 initial begin
   a= 32'hffff_eacd ;
  foreach(a[i,j])begin
    $display("a[%0d][%0d]= %d",i,j,a[i][j]);
  end
 end
endmodule


module packed_array;
  bit [3:0][7:0]a;
  
 initial begin
   a= 32'hffff_eacd ;
  foreach(a[i,j])begin
    $display("a[%0d][%0d]= %d",i,j,a[i][j]);
  end
 end
endmodule



# KERNEL: a[3][7]= 1
# KERNEL: a[3][6]= 1
# KERNEL: a[3][5]= 1
# KERNEL: a[3][4]= 1
# KERNEL: a[3][3]= 1
# KERNEL: a[3][2]= 1
# KERNEL: a[3][1]= 1
# KERNEL: a[3][0]= 1
# KERNEL: a[2][7]= 1
# KERNEL: a[2][6]= 1
# KERNEL: a[2][5]= 1
# KERNEL: a[2][4]= 1
# KERNEL: a[2][3]= 1
# KERNEL: a[2][2]= 1
# KERNEL: a[2][1]= 1
# KERNEL: a[2][0]= 1
# KERNEL: a[1][7]= 1
# KERNEL: a[1][6]= 1
# KERNEL: a[1][5]= 1
# KERNEL: a[1][4]= 0
# KERNEL: a[1][3]= 1
# KERNEL: a[1][2]= 0
# KERNEL: a[1][1]= 1
# KERNEL: a[1][0]= 0
# KERNEL: a[0][7]= 1
# KERNEL: a[0][6]= 1
# KERNEL: a[0][5]= 0
# KERNEL: a[0][4]= 0
# KERNEL: a[0][3]= 1
# KERNEL: a[0][2]= 1
# KERNEL: a[0][1]= 0
# KERNEL: a[0][0]= 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
