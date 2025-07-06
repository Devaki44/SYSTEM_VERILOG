module if_statement;
  int a = 50;
  int b = 20;
  
  initial begin
    if(a<b)begin
      $display("A is less than B");
    end 
    else if(b<a) begin
      $display("B is less than A");
    end   
  end
  
endmodule



# KERNEL: B is less than A
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
