module case_equality_operator;
  logic [7:0]a;
  logic [7:0]b;
  
  initial begin
    $display(		"Wildcard-equality");
    
    a=8'b11x1_1111;b=8'b11z1_x111;
    
    $display(		"Wildcard-equality");
    $display("a,b:(a=?=b) = %0b",a=?=b);
    $display("a,b:(a!?=b) = %0b",a!?=b);
    
    a=8'b11z1_x111;b=8'b1101_0111;
   
    $display("a,b:(a=?=b) = %0b",a=?=b);
    $display("a,b:(a!?=b) = %0b",a!?=b);
  end
  
endmodule



# run -all
# Wildcard-equality
# Wildcard-equality
# a,b:(a=?=b) = 1
# a,b:(a!?=b) = 0
# a,b:(a=?=b) = x
# a,b:(a!?=b) = x
# exit
