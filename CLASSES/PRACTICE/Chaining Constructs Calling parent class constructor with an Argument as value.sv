// Chaining Constructs Calling parent class constructor with an Argument as value


class parent;
  int a;
  
  function new(int x);
    a = x;
    $display(" a =%0d ",a);
  endfunction
  
endclass
class child extends parent ;
  int b;
  
  function new(int y);
    super.new(2);
    b = y;
    $display(" b =%0d ",b);
  endfunction
endclass
class child1 extends child;
  int c;
  
  function new();
    super.new(1);
    c=0;
    $display(" c =%0d ",c);
  endfunction
endclass

module test;
  child1 c1;
  initial begin
    c1 = new();
  end
endmodule


//output
# run -all
#  a =2 
#  b =1 
#  c =0 
# exit
