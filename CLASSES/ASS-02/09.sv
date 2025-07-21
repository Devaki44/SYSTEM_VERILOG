09. Create a class H with: static variable and static function that increments the static variable

//DESIGN CODE
class classH;
  static int b;
  
  static function incre();
    b++ ;
    $display(" b=%0d ",b);
  endfunction
endclass

module test;
  classH c1[4];
  initial begin
    foreach(c1[i])begin
      c1[i].incre();
    end
  end
endmodule


//OUTPUT
# KERNEL:  b=1 
# KERNEL:  b=2 
# KERNEL:  b=3 
# KERNEL:  b=4 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
