class packet;		
  bit [7:0]addr;
  bit [7:0]data;

  function new();
    addr = 8'h01;
    data = 8'h02;
    $display(" NEW : addr = %0h , data = %0h ",addr,data);
  endfunction
  
  function void indata();
     addr = 8'hfa;
     data = 8'hac;
    $display(" CLASS1 : addr = %0h , data = %0h ",addr,data);
  endfunction
  
  function void display();
    $display(" DISPLAY FUNC : addr = %0h , data = %0h ",addr,data);
  endfunction
endclass


module test;
  packet p1;
  
  initial begin
    p1 = new();
    p1.addr = 8'h22;
    p1.data = 8'h33;
    p1.display();
    p1.indata();
    p1.display();
  end
endmodule
    

//OUTPUT
# KERNEL:  NEW : addr = 1 , data = 2 
# KERNEL:  DISPLAY FUNC : addr = 22 , data = 33 
# KERNEL:  CLASS1 : addr = fa , data = ac 
# KERNEL:  DISPLAY FUNC : addr = fa , data = ac 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
