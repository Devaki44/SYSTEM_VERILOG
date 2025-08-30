class packet;
  static int a;
  static int b;
  
  static function new();
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
    end
  end
endmodule
      
    
    
  
  
  //OUTPUT
# run -all
#  a = 1, b=1 
#  a = 2, b=2 
#  a = 3, b=3 
#  a = 4, b=4 
#  a = 5, b=5 
# exit
