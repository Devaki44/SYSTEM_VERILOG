class packet;
  static int a;
  int b;
  
  function new();
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
#  a = 2, b=1 
#  a = 3, b=1 
#  a = 4, b=1 
#  a = 5, b=1 
# exit
