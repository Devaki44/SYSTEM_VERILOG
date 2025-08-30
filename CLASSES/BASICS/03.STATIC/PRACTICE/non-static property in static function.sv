class packet;
   int a;
   int b;
  
  static function display();
    a++;
    b++;
    $display(" a = %0d, b=%0d ",a,b);
  endfunction
endclass

module test;
  packet p[5];
  initial begin
    
    foreach(p[i])begin
      p[i] = new() ;
      p[i].display();
    end
  end
endmodule
      
    
    
  
  
  //OUTPUT
-- Compiling package design_sv_unit
** Error: testbench.sv(6): (vlog-2888) Illegal to access non-static property 'a' from a static method.
** Error: testbench.sv(6): Unresolved reference to 'this' for non-static field 'a'.
** Error: testbench.sv(7): (vlog-2888) Illegal to access non-static property 'b' from a static method.
** Error: testbench.sv(7): Unresolved reference to 'this' for non-static field 'b'.
** Error: testbench.sv(8): (vlog-2888) Illegal to access non-static property 'a' from a static method.
** Error: testbench.sv(8): Unresolved reference to 'this' for non-static field 'a'.
** Error: testbench.sv(8): (vlog-2888) Illegal to access non-static property 'b' from a static method.
** Error: testbench.sv(8): Unresolved reference to 'this' for non-static field 'b'.
-- Compiling module test
** Error: testbench.sv(13): 'packet' is an unknown type.
Or did you omit the '()' for an instantiation?
** Error: testbench.sv(16): (vlog-13118) Number of dimensions specified in foreach loop are more than array dimensions.
** Error: testbench.sv(18): Nonconstant index into instance array 'p'.
End time: 08:20:18 on Aug 30,2025, Elapsed time: 0:00:00
Errors: 11, Warnings: 0
End time: 08:20:18 on Aug 30,2025, Elapsed time: 0:00:00
*** Summary *********************************************
    qrun: Errors:   0, Warnings:   0
    vlog: Errors:  11, Warnings:   0
  Totals: Errors:  11, Warnings:   0
