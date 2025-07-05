module forever_loop;
  bit clk;
  
  initial begin
    clk = 0;
    forever begin
      #2 clk = ~clk ;
      $display(" clk = %0b ",clk);
    end
  end
  initial begin
    #50;
    $finish;
  end
endmodule




# KERNEL:  clk = 1 
# KERNEL:  clk = 0 
# KERNEL:  clk = 1 
# KERNEL:  clk = 0 
# KERNEL:  clk = 1 
# KERNEL:  clk = 0 
# KERNEL:  clk = 1 
# KERNEL:  clk = 0 
# KERNEL:  clk = 1 
# KERNEL:  clk = 0 
# KERNEL:  clk = 1 
# KERNEL:  clk = 0 
# KERNEL:  clk = 1 
# KERNEL:  clk = 0 
# KERNEL:  clk = 1 
# KERNEL:  clk = 0 
# KERNEL:  clk = 1 
# KERNEL:  clk = 0 
# KERNEL:  clk = 1 
# KERNEL:  clk = 0 
# KERNEL:  clk = 1 
# KERNEL:  clk = 0 
# KERNEL:  clk = 1 
# KERNEL:  clk = 0 
# RUNTIME: Info: RUNTIME_0068 testbench.sv (13): $finish called.
# KERNEL: Time: 50 ns,  Iteration: 0,  Instance: /forever_loop,  Process: @INITIAL#11_1@.
# KERNEL: stopped at time: 50 ns
# VSIM: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
