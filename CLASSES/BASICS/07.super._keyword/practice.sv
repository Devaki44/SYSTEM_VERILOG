class parent;
  bit [7:0] data;
  
  function new();
    data =8'hcd ;
  endfunction
  
  function void display();
    $display(" PARENT : data = %h ",data);
  endfunction
  
endclass

class child extends parent;
  bit [7:0] data = 8'hff;
  
  function new();
    super.data = 8'hcd ;
    super.display();
  endfunction
  
  function void display();
    $display(" CHILD : data = %h ",data);
  endfunction
  
endclass

module test;
  child c1;
  initial begin
    c1 = new();
    c1.display();
    
  end
endmodule
    



//OUTPUT
# run -all
#  PARENT : data = cd 
#  CHILD : data = ff 
# exit
