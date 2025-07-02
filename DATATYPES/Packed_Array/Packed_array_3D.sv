module packed_array;
  bit [7:0][3:0][1:0]a;
  
  initial begin
    a = 64'habcd_abcd_dcba_dcba ;
    
    foreach(a[i,j,k])begin
      $display("data of a[%0d][%0d][%0d] = %0b",i,j,k,a[i][j][k]);
    end
  end
endmodule



module packed_array;
  reg [7:0][3:0][1:0]a;
  
  initial begin
    a = 64'habcd_abcd_dcba_dcba ;
    
    foreach(a[i,j,k])begin
      $display("data of a[%0d][%0d][%0d] = %0b",i,j,k,a[i][j][k]);
    end
  end
endmodule




module packed_array;
  logic [7:0][3:0][1:0]a;
  
  initial begin
    a = 64'habcd_abcd_dcba_dcba ;
    
    foreach(a[i,j,k])begin
      $display("data of a[%0d][%0d][%0d] = %0b",i,j,k,a[i][j][k]);
    end
  end
endmodule



# KERNEL: data of a[7][3][1] = 1
# KERNEL: data of a[7][3][0] = 0
# KERNEL: data of a[7][2][1] = 1
# KERNEL: data of a[7][2][0] = 0
# KERNEL: data of a[7][1][1] = 1
# KERNEL: data of a[7][1][0] = 0
# KERNEL: data of a[7][0][1] = 1
# KERNEL: data of a[7][0][0] = 1
# KERNEL: data of a[6][3][1] = 1
# KERNEL: data of a[6][3][0] = 1
# KERNEL: data of a[6][2][1] = 0
# KERNEL: data of a[6][2][0] = 0
# KERNEL: data of a[6][1][1] = 1
# KERNEL: data of a[6][1][0] = 1
# KERNEL: data of a[6][0][1] = 0
# KERNEL: data of a[6][0][0] = 1
# KERNEL: data of a[5][3][1] = 1
# KERNEL: data of a[5][3][0] = 0
# KERNEL: data of a[5][2][1] = 1
# KERNEL: data of a[5][2][0] = 0
# KERNEL: data of a[5][1][1] = 1
# KERNEL: data of a[5][1][0] = 0
# KERNEL: data of a[5][0][1] = 1
# KERNEL: data of a[5][0][0] = 1
# KERNEL: data of a[4][3][1] = 1
# KERNEL: data of a[4][3][0] = 1
# KERNEL: data of a[4][2][1] = 0
# KERNEL: data of a[4][2][0] = 0
# KERNEL: data of a[4][1][1] = 1
# KERNEL: data of a[4][1][0] = 1
# KERNEL: data of a[4][0][1] = 0
# KERNEL: data of a[4][0][0] = 1
# KERNEL: data of a[3][3][1] = 1
# KERNEL: data of a[3][3][0] = 1
# KERNEL: data of a[3][2][1] = 0
# KERNEL: data of a[3][2][0] = 1
# KERNEL: data of a[3][1][1] = 1
# KERNEL: data of a[3][1][0] = 1
# KERNEL: data of a[3][0][1] = 0
# KERNEL: data of a[3][0][0] = 0
# KERNEL: data of a[2][3][1] = 1
# KERNEL: data of a[2][3][0] = 0
# KERNEL: data of a[2][2][1] = 1
# KERNEL: data of a[2][2][0] = 1
# KERNEL: data of a[2][1][1] = 1
# KERNEL: data of a[2][1][0] = 0
# KERNEL: data of a[2][0][1] = 1
# KERNEL: data of a[2][0][0] = 0
# KERNEL: data of a[1][3][1] = 1
# KERNEL: data of a[1][3][0] = 1
# KERNEL: data of a[1][2][1] = 0
# KERNEL: data of a[1][2][0] = 1
# KERNEL: data of a[1][1][1] = 1
# KERNEL: data of a[1][1][0] = 1
# KERNEL: data of a[1][0][1] = 0
# KERNEL: data of a[1][0][0] = 0
# KERNEL: data of a[0][3][1] = 1
# KERNEL: data of a[0][3][0] = 0
# KERNEL: data of a[0][2][1] = 1
# KERNEL: data of a[0][2][0] = 1
# KERNEL: data of a[0][1][1] = 1
# KERNEL: data of a[0][1][0] = 0
# KERNEL: data of a[0][0][1] = 1
# KERNEL: data of a[0][0][0] = 0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
