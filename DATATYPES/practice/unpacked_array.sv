module unpacked_array; 
  bit [7:0]arr[7:0][3:0];
  
  initial begin
  
    foreach(arr[i,j])begin
      
      arr[i][j] = $urandom_range(0,256);
      
      $display(" arr[%0d][%0d] = %0d ",i,j,arr[i][j]);
    end
  end
endmodule
