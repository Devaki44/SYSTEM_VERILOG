class parent;
  bit [7:0]addr;
  bit [7:0]data;
  
  extern function new();
  
endclass

  function parent::new();
    addr = 8'hff;
    data = 8'hde;
    $display(" addr =%h , data = %h",addr,data);
  endfunction
  
module test;
  parent p;
  initial begin
    p = new() ;
  end
endmodule



//OUTPUT
# run -all
#  addr =ff , data = de
# exit
