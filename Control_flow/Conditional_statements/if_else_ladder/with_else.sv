module if_statement;
  int a = 50;
  int b = 20;
  int c = 0;
  
  initial begin
    if(a<b)begin
      $display("A is less than B");
    end 
    else if(b<c) begin
      $display("B is less than C");
    end
    else begin
      $display("C is the lesser number");  
    end
  end
  
endmodule


# KERNEL: C is the lesser number
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
