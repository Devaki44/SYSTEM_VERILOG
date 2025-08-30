class parent ;
  bit [7:0] data ;
  
  function new();
    data = 8'hfd;
  endfunction
  
  virtual function void display();
    $display(" PARENT : data = %h ",data);
  endfunction
endclass

class child extends parent;
  bit [7:0]data;
  
  function new();
    data =8'hdd;
  endfunction
  
  function void display();
    $display("CHILD : data =%h ",data);
  endfunction
endclass

module test;
  parent  p1,p2;
  child c1;
  initial begin
    c1 = new();
    p1 = c1;    ///upcasting
    p2 = new();
    
    $display("-----------------------------------");
    p1.display();
    $display("-----------------------------------");
//     p2.display();
    
  end
endmodule




//OUTPUT
# run -all
# -----------------------------------
# CHILD : data =dd 
# -----------------------------------
# exit
