//CODE
module union_unpacked;
  
  union { int addr;
          byte data;}details;
  
  initial begin
    
    details.addr = 32'hefdc_bbff;
    $display(" addr = %0h ",details.addr);
    
    details.data = 8'haa;    
    $display(" addr = %0h ",details.addr);
    $display(" data = %0h ",details.data);
  end
endmodule

//OUTPUT
# run -all
#  addr = efdcbbff 
#  addr = efdcbbaa 
#  data = aa 
# exit
