//PARAMETERIZATION
// by value
class home #(parameter w=4,d=3);
  bit [w-1 : 0]data;
  bit [d-1 : 0]addr;
  
  function new();
    data = 15 ;
    addr = 7;
    $display("data = %d ,addr = %d ",data,addr);
  endfunction
endclass
module test;
  home h1;
  initial begin
    h1 = new();
  end
endmodule



//OUTPUT
# run -all
# data = 15 ,addr = 7 
# exit
