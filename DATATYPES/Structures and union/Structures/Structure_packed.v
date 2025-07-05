module structure_packed;
  
  struct packed{ 
    int num;
    byte a;
    logic [3:0]b;}numbers;
  
  initial begin
    
    numbers = '{4096,125,15};
    
    $display("The array is : %p",numbers);
    $display("Data num is : %032b",numbers.num);
    $display("Data a is : %08b",numbers.a);
    $display("Data b is : %0b",numbers.b);
  end
endmodule


# KERNEL: The array is : '{num:4096, a:125, b:15}
# KERNEL: Data num is : 00000000000000000001000000000000
# KERNEL: Data a is : 01111101
# KERNEL: Data b is : 1111
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
