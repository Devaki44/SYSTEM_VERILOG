module relational_operator;
  int a,b;
  string x,y;
  
  initial begin
    a=32;b=45;
    $display("a > b : %0b",a>b);
    $display("a < b : %0b",a<b);
    
    x="D";y="M" ;
    $display("x < y : %0b",x<y);
    $display("x > y : %0b",x>y);
    
  end
  
endmodule


# KERNEL: a > b : 0
# KERNEL: a < b : 1
# KERNEL: x < y : 1
# KERNEL: x > y : 0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
