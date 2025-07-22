//DESIGN CODE
typedef list;
class packet;
  int data;
  list pk;
  function new();
    data = 8'hff;
    pk = new();
    $display(" data = %0h ",data);
  endfunction
endclass

class list;
  int addr;
  function new();
    addr = 8'hee;
    $display(" addr = %0h ",addr);
  endfunction
  function void display();
    $display(" addr = %0h ",addr);
  endfunction
    
endclass

module test;
  packet p1,p2;
  initial  begin
    p1 = new();
    p2 = p1;
    p2.pk.display();
  end
endmodule




//OUTPUT
# KERNEL:  addr = ee 
# KERNEL:  data = ff 
# KERNEL:  addr = ee 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
