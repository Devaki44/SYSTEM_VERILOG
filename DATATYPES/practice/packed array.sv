module packed_array;
  logic [31:0]arr ;
  
  initial begin
    arr  =  32'habcd_abcd;
    
    foreach(arr[i])begin
      $display("arr[%0d] = %0h",i,arr[i]);
    end
  end
endmodule
