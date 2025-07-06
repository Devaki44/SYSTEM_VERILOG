module priority_code;
  int a = 50;
  
  
  initial begin
    priority if(a>0)begin
      $display("A is greater than 0");
    end 
    else if(a == 50) begin
      $display("A is equal to 50");
    end 
    else begin
      $display("no match");
    end
  end
  
endmodule



# KERNEL: A is greater than 0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
