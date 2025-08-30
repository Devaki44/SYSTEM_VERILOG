class parent ;
  local int a;
  
  function new();
    a++;
    $display(" PARENT : a = %0d ",a);
  endfunction
endclass

class child extends parent;
  int a;
  
  function new();
    a++;
    $display(" CHILD : a =%0d ",a);
  endfunction
  
endclass

class child1 extends child;
  int a;
  
  function new();
    a++;
    $display(" CHILD1 : a =%0d ",a);
  endfunction
  
endclass

module test;
  parent p;
  child c;
  child1 c1;
  initial begin
    p = new();
    c = new();
    c1 = new();
    
  end
endmodule

//OUTPUT
xcelium> run
 PARENT : a = 1 
 PARENT : a = 1 
 CHILD : a =1 
 PARENT : a = 1 
 CHILD : a =1 
 CHILD1 : a =1 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
