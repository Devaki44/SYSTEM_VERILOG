class static_code;
   static byte a;  
   static byte b;
  
  function new();
  	b++;	
   	a=b;	
  endfunction
  
  static function void display();
    $display(" INSIDE: a =%0d b =%0d",a, b);
  endfunction

endclass

module test;
  initial begin
    static_code handle[4] ;
    
    foreach (handle[i])begin
      handle[i] = new();
      handle[i].display();

    end
  end
endmodule
  
  
# KERNEL:  INSIDE: a =1 b =1
# KERNEL:  INSIDE: a =2 b =2
# KERNEL:  INSIDE: a =3 b =3
# KERNEL:  INSIDE: a =4 b =4
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
