class parent;
  bit [7:0]data ;
  
  function void display();
    $display(" PARENT : data = %h",data);
  endfunction
endclass

class child extends parent ;
  bit [7:0]data = 8'hdd;
  
  function display();
    super.data = 8'hff ;
    super.display();
    $display(" CHILD : data = %h",data);
  endfunction

endclass

module test;
  child c ;
  initial begin
    c = new();
    c.display();
  end
endmodule
  

//OUTPUT
# run -all
#  PARENT : data = ff
#  CHILD : data = dd
# exit
