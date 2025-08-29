typedef class list;
class packet;
  bit [7:0]addr ;
  bit  [7:0]data ;
  list ls;
  
  function new();
    addr = 8'hd7 ;
    data = 8'hff ;
    ls = new();
    $display("TOP : addr =%h,data = %h",addr,data);
  endfunction
  
  function void display();
    $display("DISPLAY1 : addr =%h,data = %h",addr,data);
  endfunction
endclass

class list;
  string name;
  bit [4:0]age;
  
  function new();
    name = "DEVAKI";
    age  = 5'h21;
    $display("NEST : name = %s,age = %h",name,age);
  endfunction
  
  function void display();
    $display("DISPLAY2 : name = %s ,age = %h",name,age);
  endfunction
  
endclass
  
  
module test;
  packet p1,p2;
  
  initial begin
    p1 = new() ;
    p2 = new p1 ;
    
    p1.display();
    $display("------------------");
    p1.addr = 8'h12;
    p1.display();
    $display("------------------");
    p2.display();
    $display("----------------");
    p1.ls.name =  "MUTHUVEL";
    p1.ls.display();
    $display("----------------");
    p2.ls.display();

  end
endmodule
    
    


//OUTPUT
  # run -all
# NEST : name = DEVAKI,age = 01
# TOP : addr =d7,data = ff
# DISPLAY1 : addr =d7,data = ff
# ------------------
# DISPLAY1 : addr =12,data = ff
# ------------------
# DISPLAY1 : addr =d7,data = ff
# ----------------
# DISPLAY2 : name = MUTHUVEL ,age = 01
# ----------------
# DISPLAY2 : name = MUTHUVEL ,age = 01
# exit
