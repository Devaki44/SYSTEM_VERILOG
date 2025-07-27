typedef class list;
class packet;		
  bit [7:0]addr;
  bit [7:0]data;
  list pk;

  function new();
    addr = 8'hab;
    data = 8'h22;
    pk = new();
  endfunction
  
  function void display();
    $display(" DISPLAY 1 : addr = %0h , data = %0h ",addr,data);
  endfunction
  
  function packet copy();
    copy	= new();
    copy.addr = this.addr;
    copy.data = this.data;
    copy.pk   = pk.copy  ;
    return copy;
  endfunction
endclass

class list;
  string name;
  byte age;
  
  function new();
    name = "devaki";
    age  =  8'h21 ;
  endfunction
  
  function void display();
    $display(" DISPLAY 2 : name = %0s , age = %0h ",name,age);
  endfunction
  
  function list copy();
    copy	= new();
    copy.name = this.name;
    copy.age = this.age;
    return copy;
  endfunction
    
endclass

module deep_copy;
  packet p1,p2;
  
  initial begin
    p1 = new();
    p2 = new();
    
    p1.display();
    p2.display();
    
    p1.addr = 8'hcb;p1.data = 8'h11;
    p1.display();
    
    p2 = p1.copy();
    p2.display();
    
    p2.pk.name = "MM";
    p2.pk.display();
    
    p1.pk.display();
    
      
  end
endmodule



//OUTPUT

# KERNEL:  DISPLAY 1 : addr = ab , data = 22 
# KERNEL:  DISPLAY 1 : addr = ab , data = 22 
# KERNEL:  DISPLAY 1 : addr = cb , data = 11 
# KERNEL:  DISPLAY 1 : addr = cb , data = 11 
# KERNEL:  DISPLAY 2 : name = MM , age = 21 
# KERNEL:  DISPLAY 2 : name = devaki , age = 21 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
