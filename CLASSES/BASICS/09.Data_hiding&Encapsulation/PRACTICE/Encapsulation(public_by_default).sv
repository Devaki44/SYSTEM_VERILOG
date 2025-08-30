class parent ;
  int a;
  
  function new();
    a++;
    $display(" PARENT : a = %0d ",a);
  endfunction
endclass

class child extends parent;
  
  function new();
    a++;
    $display(" CHILD : a =%0d ",a);
  endfunction
  
endclass

class child1 extends child;
  
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
 CHILD : a =2 
 PARENT : a = 1 
 CHILD : a =2 
 CHILD1 : a =3 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
