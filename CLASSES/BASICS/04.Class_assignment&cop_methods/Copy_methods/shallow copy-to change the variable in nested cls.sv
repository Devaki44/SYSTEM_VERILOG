typedef class list;
class packet;		
  bit [7:0]addr;
  bit [7:0]data;
  list pk;

  function new();
    addr = 8'h01;
    data = 8'h02;
    pk = new();
    $display(" NEW : addr = %0h , data = %0h ",addr,data);
  endfunction
  
  function void indata();
     addr = 8'hfa;
     data = 8'hac;
     $display(" CLASS1 : addr = %0h , data = %0h ",addr,data);
  endfunction
  
  function void display();
    $display(" DISPLAY 1 : addr = %0h , data = %0h ",addr,data);
  endfunction
endclass

class list;
  string name;
  byte age;
  
  function new();
    name = "devaki";
    age  =  8'h21 ;
    $display(" CLASS2 : name = %0s , age = %0h ",name,age);
  endfunction
  
  function void display();
    $display(" DISPLAY 2 : name = %0s , age = %0h ",name,age);
  endfunction
    
endclass

module test;
  packet p1,p2;
  
  initial begin
    p1 = new();
    p1.display();
    
    p2 = new p1 ;
     
    p2.pk.name = "Muthuvel";
    p2.pk.display();
       
  end
endmodule


//OUTPUT
# KERNEL:  CLASS2 : name = devaki , age = 21 
# KERNEL:  NEW : addr = 1 , data = 2 
# KERNEL:  DISPLAY 1 : addr = 1 , data = 2 
# KERNEL:  DISPLAY 2 : name = Muthuvel , age = 21 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
