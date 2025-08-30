class packet;
  parameter N = 4;
  logic [N-1:0]a;
  
  function new();
    a = 4'd15 ;
    $display(" a = %d ",a);
  endfunction
  
endclass

module test;
  packet p;
  initial begin
    p = new();
  end
endmodule



//OUTPUT
# run -all
#  a = 15 
# exit
