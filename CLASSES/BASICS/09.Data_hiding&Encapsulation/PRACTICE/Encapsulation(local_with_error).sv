class parent ;
  local int a;
  
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
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
    a++;
    |
xmvlog: *E,CLSNLO (testbench.sv,13|4): Access to local member 'a' in class 'parent' is not allowed here.
    $display(" CHILD : a =%0d ",a);
                                |
xmvlog: *E,CLSNLO (testbench.sv,14|32): Access to local member 'a' in class 'parent' is not allowed here.
    a++;
    |
xmvlog: *E,CLSNLO (testbench.sv,21|4): Access to local member 'a' in class 'parent' is not allowed here.
    $display(" CHILD1 : a =%0d ",a);
                                 |
xmvlog: *E,CLSNLO (testbench.sv,22|33): Access to local member 'a' in class 'parent' is not allowed here.
xrun: *E,VLGERR: An error occurred during parsing.  Review the log file for errors with the code *E and fix those identified problems to proceed.  Exiting with code (status 1).
TOOL:	xrun	23.09-s001: Exiting on Aug 30, 2025 at 07:11:11 EDT  (total: 00:00:01)
