//DESIGN CODE
virtual class parent;
  int addr;
  
  function new();
    addr = 8'h0ff;
    $display(" addr = %0h ",addr);
  endfunction
  function void display();
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
  child c1;
  initial begin
    c1 = new();
    c1.display();  //Here,the parent class's method is accessed through child class ,even method name are same but it is resolved using super.keyword
    
  end
endmodule
    

//OUTPUT
# KERNEL:  addr = ff 
# KERNEL:  data = ac 
# KERNEL:  addr = ff 
# KERNEL:  data = ac 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
