module if_statement;
  int a = 50;
  
  initial begin
    unique if(a>0)begin
      $display("A is greater than 0");
    end 
    else if(a == 50) begin
      $display("A is equal to 50");
    end 
    else begin
      $display("A is not equal to 50");
    end
  end
  
endmodule



# KERNEL: A is greater than 0
# ASSERT: Error: Assertion 'unique_if_1' FAILED at time: 0, testbench.sv(5), scope: if_statement. Two or more conditions are true simultaneously: a>0 (line: 5), a==50. (line: 8)
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
