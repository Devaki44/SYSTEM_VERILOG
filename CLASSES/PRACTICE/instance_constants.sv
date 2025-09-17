class parent;
  const int data  ;
  
  function new();
    data = 8'hf4;
    $display(" data =%0h ",data);
  endfunction
  
endclass
module test;
  parent p1;
  initial begin
    p1 = new();
  end
endmodule



//output
# run -all
#  data =f4 
# exit
