//BIT
module packed_array;
  bit [31:0]a;
  
  initial begin
    a = $random % 32 ;
    
    foreach(a[i])begin
         $display("data of a[%0d] = %0b",i,a[i]);
    end
  end
endmodule


//REG
module packed_array;
  reg [31:0]a;
  
  initial begin
    a = $random % 32 ;
    
    foreach(a[i])begin
         $display("data of a[%0d] = %0b",i,a[i]);
    end
  end
endmodule



//LOGIC
module packed_array;
  logic [31:0]a;
  
  initial begin
    a = $random % 32 ;
    
    foreach(a[i])begin
         $display("data of a[%0d] = %0b",i,a[i]);
    end
  end
endmodule



    
