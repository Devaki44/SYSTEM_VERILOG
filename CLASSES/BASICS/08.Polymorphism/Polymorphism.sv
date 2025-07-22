//DESIGN CODE
class parent;
  int addr;
  
  function new();
    addr = 8'hff;
    $display(" addr = %0h ",addr);
  endfunction
  virtual function void display();
    $display(" addr = %0h ",addr);
  endfunction
    
endclass

class child extends parent;
  int data ;
  
  function new();
    data = 8'hac;
    $display(" data = %0h ",data);
  endfunction
  function void display();
    super.display();
    $display(" data = %0h ",data);
  endfunction
endclass

module test;
  parent p[1:0];
  child c1;
  initial begin
    c1 = new();
    $display("-----------------------");    
    p[1] = c1;
    p[1].display();
    $display("-----------------------");
    p[0] = new();
    p[0].display();
    
  end
endmodule



//OUTPUT
# KERNEL:  addr = ff 
# KERNEL:  data = ac 
# KERNEL: -----------------------
# KERNEL:  addr = ff 
# KERNEL:  data = ac 
# KERNEL: -----------------------
# KERNEL:  addr = ff 
# KERNEL:  addr = ff 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
