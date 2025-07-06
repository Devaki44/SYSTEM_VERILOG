module if_statement;
  int a = 35;
  
  initial begin
    if(a<10)begin
      $display("A is less than 10");
    end 
    else begin
      $display("A is greater than 10");
    end
  end
  
endmodule


# KERNEL: A is greater than 10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
