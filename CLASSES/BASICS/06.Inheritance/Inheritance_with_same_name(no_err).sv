
//DESIGN CODE
class parent_class;
  bit[3:0]data_1 = 4'd10;
  function void display();
    $display(" BASE : data_1 = %0d",data_1);
  endfunction
endclass

class child_class extends parent_class;
  bit[3:0]data_1 = 4'd12;
 
  function void display();
//     super.data_1 = 4'd13 ;
//     super.display();
    $display(" CHILD : data_1 = %0d",data_1);
  endfunction
endclass

module inheritance;
  parent_class p;
  child_class c;
 initial begin
  c = new();
  p = new();
  c.display();
  p.display();
 end
endmodule




//OUTPUT
# KERNEL:  CHILD : data_1 = 12
# KERNEL:  BASE : data_1 = 10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
