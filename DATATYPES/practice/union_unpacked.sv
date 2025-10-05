module union_tb;
  union {
    int data ;
    byte addr;}details;
  
  initial begin
    details.addr = 8'hff;
    $display(" addr : %0h ",details.addr);

    details.data = 32'habcd_abcd;
    
    $display(" data : %0h ",details.data);
    $display(" addr : %0h ",details.addr);

  end
endmodule
