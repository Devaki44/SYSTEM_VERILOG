10. Call (invoke) the static function N times, then display the final value of the static variable.


//DESIGN CODE
class classH;
  static int b;
  
  static function void incre();
    b++ ;
  endfunction
endclass

module test;
  classH c1;
  initial begin
    for(int i=0;i<7;i++)begin
      c1.incre();
    end
    $display(" b = %0d",c1.b);
  end
endmodule


//OUTPUT
# KERNEL:  b = 7
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
