// super.
class parent;
  int data;
  string name;
  
  function new();
    data = 8'hff;
    name = "devaki";
    $display("data = %0h ,name = %0s",data,name);
  endfunction
    
  function void display();    
     $display("data = %0h ,name = %0s",data,name);
  endfunction
endclass

class child extends parent;
  int data;
  string name;
  
  function new();
    data = 8'h06;
    name = "deva";
    $display("data = %0h ,name = %0s",data,name);
  endfunction

  function void display();
     super.display();
     $display("data = %0h ,name = %0s",data,name);
  endfunction
endclass

module test;
  child  c1;
  initial begin
    c1  = new();
    
    c1.display();
  end
endmodule




//output
# run -all
# data = ff ,name = devaki
# data = 6 ,name = deva
# data = ff ,name = devaki
# data = 6 ,name = deva
# exit
