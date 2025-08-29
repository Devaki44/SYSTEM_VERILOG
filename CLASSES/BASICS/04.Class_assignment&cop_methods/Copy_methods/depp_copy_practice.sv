typedef class list;
class packet;
  bit [7:0]addr ;
  bit  [7:0]data ;
  list ls;
  
  function new();
    addr = 8'hd7 ;
    data = 8'hff ;
    ls = new();
//     $display("TOP : addr =%h,data = %h",addr,data);
  endfunction
  
  function void display();
    $display("DISPLAY1 : addr =%h,data = %h",addr,data);
  endfunction
  
  function packet copy();
    copy = new();
    copy.addr = this.addr ;
    copy.data = this.data ;
    copy.ls   = ls.copy   ;
    return copy;
  endfunction
  
endclass

class list;
  string name;
  bit [4:0]age;
  
  function new();
    name = "DEVAKI";
    age  = 5'd21;
//     $display("NEST : name = %s,age = %d",name,age);
  endfunction
  
  function void display();
    $display("DISPLAY2 : name = %s ,age = %d",name,age);
  endfunction
  
  function list copy();
    copy = new();
    copy.name =  this.name ;
    copy.age  =  this.age  ;
    return copy;
    endfunction
  
endclass
  
  
module test;
  packet p1,p2;
  
  initial begin
    p1 = new() ;
    $display("------------------");
    
    p2 = new() ;
    $display("------------------");
    
    p1.display();
    $display("------------------");
    p1.addr = 8'h12;
    p1.display();
    $display("------------------");
    
    p2.display();
    $display("----------------");
    
    p2 = p1.copy() ;
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
# ------------------
# ------------------
# DISPLAY1 : addr =d7,data = ff
# ------------------
# DISPLAY1 : addr =12,data = ff
# ------------------
# DISPLAY1 : addr =d7,data = ff
# ----------------
# DISPLAY1 : addr =12,data = ff
# ----------------
# DISPLAY2 : name = MUTHUVEL ,age = 21
# ----------------
# DISPLAY2 : name = DEVAKI ,age = 21
# exit
    
    
