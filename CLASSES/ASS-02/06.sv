6. Create a class B that extends class A, and adds 2 more variables of different data types.


  //DESIGN CODE
  class classA;
  string name ;
  int age ;
  
  function new();
	name = "devaki";
    age	 = 6'h21 ;
    $display(" name = %0s , age = %0h ",name,age);
  endfunction
  function void display();
    $display(" name = %0s , age = %0h ",name,age);
  endfunction
  
endclass

class classB extends classA;
  byte addr ;
  int data;
  
  function new();
	  addr = 5'h34;
    data = 6'h21 ;
    $display(" addr = %0h , data = %0h ",addr,data);
  endfunction
  function void display();
    super.display();
    $display(" addr = %0h , data = %0h ",addr,data);
  endfunction
  
endclass
  

module test;
   classB c1;
   initial begin
     c1 = new();
     c1.data = 6'h10;
     c1.display();
   end
endmodule
  

  //OUTPUT
# KERNEL:  name = devaki , age = 21 
# KERNEL:  addr = 14 , data = 21 
# KERNEL:  name = devaki , age = 21 
# KERNEL:  addr = 14 , data = 10 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
