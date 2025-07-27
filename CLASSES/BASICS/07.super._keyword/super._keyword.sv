class parent_class;
  bit[3:0]data_1 = 4'd10;
  function void display1();
    $display(" BASE : data_1 = %0d",data_1);
  endfunction
endclass

class child_class extends parent_class;
  bit[3:0]data_1 = 4'd12;

  
  function void display2();
    super.data_1 = 4'd13 ;
    super.display1();
    $display(" CHILD : data_1 = %0d",data_1);
  endfunction
endclass

module inheritance;
  child_class c;
 initial begin
  c = new();
  c.display2();
 end
endmodule


//OUTPUT
# KERNEL:  BASE : data_1 = 13
# KERNEL:  CHILD : data_1 = 12
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
