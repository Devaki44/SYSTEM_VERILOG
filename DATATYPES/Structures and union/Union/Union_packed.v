module union_code;
  union {
    bit [7:0]a;
    reg [7:0]b;
    logic [7:0]c;}numbers;
  
  initial begin
  
    numbers.c = 100 ;
    $display("Value of c : %0b",numbers.c);
    
    $display("Value of a : %0b",numbers.a);
  end
endmodule
    


# KERNEL: Value of c : 1100100
# KERNEL: Value of a : 1100100
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
