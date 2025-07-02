//SAME FOR BYTE , INT, SHORTINT, INT, LONGINT(all are signed)

module Unpacked_array;
  byte a[7:0][3:0];
  
  initial begin
    
    foreach(a[i,j])begin
      
      a[i][j] = $urandom_range(0,256);
      
      $display("data of a[%0d][%0d] = %b",i,j,a[i][j]);
    end
  end
endmodule

# KERNEL: data of a[7][3] = 00000010
# KERNEL: data of a[7][2] = 01100010
# KERNEL: data of a[7][1] = 00111101
# KERNEL: data of a[7][0] = 00001110
# KERNEL: data of a[6][3] = 00101010
# KERNEL: data of a[6][2] = 00101110
# KERNEL: data of a[6][1] = 00001001
# KERNEL: data of a[6][0] = 01011010
# KERNEL: data of a[5][3] = 01001011
# KERNEL: data of a[5][2] = 11010010
# KERNEL: data of a[5][1] = 10011010
# KERNEL: data of a[5][0] = 10000101
# KERNEL: data of a[4][3] = 11100111
# KERNEL: data of a[4][2] = 10010100
# KERNEL: data of a[4][1] = 10100101
# KERNEL: data of a[4][0] = 11011010
# KERNEL: data of a[3][3] = 01010001
# KERNEL: data of a[3][2] = 11001111
# KERNEL: data of a[3][1] = 11100001
# KERNEL: data of a[3][0] = 10000010
# KERNEL: data of a[2][3] = 11011010
# KERNEL: data of a[2][2] = 11100101
# KERNEL: data of a[2][1] = 10010010
# KERNEL: data of a[2][0] = 10110011
# KERNEL: data of a[1][3] = 10100000
# KERNEL: data of a[1][2] = 01101000
# KERNEL: data of a[1][1] = 10010011
# KERNEL: data of a[1][0] = 10110111
# KERNEL: data of a[0][3] = 00100110
# KERNEL: data of a[0][2] = 10101011
# KERNEL: data of a[0][1] = 10100010
# KERNEL: data of a[0][0] = 10100111
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
