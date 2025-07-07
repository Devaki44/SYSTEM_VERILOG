module wildcard_operator;
  logic [7:0]a;
  logic [7:0]b;
  
  initial begin
    $display(		"Wildcard_operator");
    
    a=8'bxxxx_xxxx;b=8'b1101_0111;
   
    $display("a,b:(a==?b) = %0b",a==?b);
    $display("a,b:(a!=?b) = %0b",a!=?b);
    
     a=8'b11x1_1111;b=8'b11z1_x111;
    
    $display("a,b:(a==?b) = %0b",a==?b);
    $display("a,b:(a!=?b) = %0b",a!=?b);
  
    a=8'b11z1_1111;b=8'b1101_xx11;
    
    $display("a,b:(a==?b) = %0b",a==?b);
    $display("a,b:(a!=?b) = %0b",a!=?b);
  end
  
endmodule



# KERNEL: Wildcard_operator
# KERNEL: a,b:(a==?b) = x
# KERNEL: a,b:(a!=?b) = x
# KERNEL: a,b:(a==?b) = 1
# KERNEL: a,b:(a!=?b) = 0
# KERNEL: a,b:(a==?b) = x
# KERNEL: a,b:(a!=?b) = x
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
