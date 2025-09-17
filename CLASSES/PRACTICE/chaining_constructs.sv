// // chaining construct
class parent;
  int data ;
  string name;
  
  function new();
    data = 8'hff;
    name = "devaki";
    $display("data =%0h , name=%s",data,name);
  endfunction
  
  function void display();
    $display("data =%0h , name=%s",data,name);
  endfunction
endclass

class child extends parent;
  int addr;
  string colour ;
  
  function new();
    addr = 8'h04;
    colour = "blue";
    $display(" addr = %0h,colour = %s ",addr,colour);
  endfunction
  
  function void display();
    super.display();
    $display(" addr = %0h,colour = %s ",addr,colour);
  endfunction
endclass

module test;
  child c1;
  initial begin
    c1 = new();
    c1.display();
  end
endmodule





///output
# 
# run -all
# data =ff , name=devaki
#  addr = 4,colour = blue 
# data =ff , name=devaki
#  addr = 4,colour = blue 
# exit
