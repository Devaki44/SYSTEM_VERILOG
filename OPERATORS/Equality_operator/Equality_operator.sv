module equality_operator;
  logic [7:0]a;
  logic [7:0]b;
  
  initial begin
    
    $display(		"Equality operator");
    
    a=8'hff;b=8'b11z1_x111;
    
    $display("a=8'hff b=8'b11z1_x110:(a==b) = %0b",a==b);
    $display("a=8'hff b=8'b11z1_x110:(a!=b) = %0b",a!=b);
    
    a=8'hff;b=8'b1101_0111;
   
    $display("a=8'hff b=8'b11z1_x110:(a==b) = %0b",a==b);
    $display("a=8'hff b=8'b11z1_x110:(a!=b) = %0b",a!=b);
   
    
  end
  
endmodule



# KERNEL: Equality operator
# KERNEL: a=8'hff b=8'b11z1_x110:(a==b) = x
# KERNEL: a=8'hff b=8'b11z1_x110:(a!=b) = x
# KERNEL: a=8'hff b=8'b11z1_x110:(a==b) = 0
# KERNEL: a=8'hff b=8'b11z1_x110:(a!=b) = 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
