//Question:08.Create a class FCreate a class G extended from class F; add a class constructor to assign the value for the class F variable.

  
//DESIGN CODE
class classF ;
  int addr;
  byte data;
  
  function new();
    addr = 8'hff;
    data = 8'haa;
    $display(" addr = %0h , data = %0h",addr,data);
  endfunction
  function void display();
     $display(" addr = %0h , data = %0h",addr,data);
  endfunction
endclass
    
class classG extends classF ;
   string name;
  
  function new();
    name = "devaki" ;
    data = 8'hee;
    $display(" name =%s",name);
  endfunction
  function void display();
    super.display();
    $display("  name =%s",name);
  endfunction
endclass
    
module test;
  classG c1;
  initial begin
    c1 = new();
    c1.display();
  end
endmodule


//OUTPUT
# KERNEL:  addr = ff , data = aa
# KERNEL:  name =devaki
# KERNEL:  addr = ff , data = ee
# KERNEL:   name =devaki
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
