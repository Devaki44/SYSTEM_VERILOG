module union_packed;
  
  union packed{ int addr;
                int data;}details;
  
  initial begin
    
    details.addr = 32'hff;
    details.data = 32'haa;
    
    $display(" addr = %0h ",details.addr);
    $display(" data = %0h ",details.data);
  end
endmodule


//OUTPUT
# run -all
#  addr = aa 
#  data = aa 
# exit
