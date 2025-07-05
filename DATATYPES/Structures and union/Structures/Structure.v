module structure;
  struct {
    string name;
    byte a;
    logic [3:0]b;}numbers;
  
  initial begin
    
    numbers = '{"Devaki",125,15};
    
    $display("The array is : %p",numbers);
    $display("The name is : %0s ",numbers.name);
    $display("Data a is : %0b",numbers.a);
    $display("Data b is : %0b",numbers.b);
  end
endmodule



# KERNEL: The array is : '{name:"Devaki", a:125, b:15}
# KERNEL: The name is : Devaki 
# KERNEL: Data a is : 1111101
# KERNEL: Data b is : 1111
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.


