module multi_dimentional_array;
  bit [7:0][3:0]arr[1:0][7:0];
  
  initial begin
    
    foreach(arr[i,j,k,l])begin
      
      arr[i][j][k][l] = $urandom_range(0,256);
      $display(" arr[%0d][%0d][%0d][%0d] = [%0d] ",i,j,k,l,arr[i][j][k][l]);
    end
    
  end
endmodule
