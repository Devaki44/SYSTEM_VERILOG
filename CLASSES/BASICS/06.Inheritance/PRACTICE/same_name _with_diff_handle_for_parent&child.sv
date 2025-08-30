class parent;
  bit [7:0]data = 8'haa ;
  
  function void display();
    $display(" PARENT : data = %h",data);
  endfunction
endclass

class child extends parent ;
  bit [7:0]data = 8'hdd;
  
  function display();
    $display(" CHILD : data = %h",data);
  endfunction

endclass

module test;
  parent p;
  child c ;
  initial begin
    c = new();
    p = new();
    p.display();
    c.display();
  end
endmodule



//OUTPUT
# run -all
#  PARENT : data = aa
#  CHILD : data = dd
# exit
