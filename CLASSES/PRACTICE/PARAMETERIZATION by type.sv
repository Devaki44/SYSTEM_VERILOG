//PARAMETERIZATION
//by type
class home #(parameter w=4,type T= string);
  bit [w-1 : 0]data;
  T name;
  
  function new();
    data = 15 ;
    name = "devaki";
    $display("data = %d ,name = %s ",data,name);
  endfunction
endclass
module test;
  home h1;
  initial begin
    h1 = new();
  end
endmodule



//output
# run -all
# data = 15 ,name = devaki 
# exit

