module forever_loop;
  bit clk;
  time t;
  
  initial begin
    clk = 0;
    t   = 0 ;
    forever begin
      #2 clk = ~clk ;
      t   = $time ;
      $display(" $time = %0t,clk = %0b ",$time,clk);
    
      if(t>=50)begin
        break;
      end
    end
  end
endmodule



# KERNEL:  $time = 2,clk = 1 
# KERNEL:  $time = 4,clk = 0 
# KERNEL:  $time = 6,clk = 1 
# KERNEL:  $time = 8,clk = 0 
# KERNEL:  $time = 10,clk = 1 
# KERNEL:  $time = 12,clk = 0 
# KERNEL:  $time = 14,clk = 1 
# KERNEL:  $time = 16,clk = 0 
# KERNEL:  $time = 18,clk = 1 
# KERNEL:  $time = 20,clk = 0 
# KERNEL:  $time = 22,clk = 1 
# KERNEL:  $time = 24,clk = 0 
# KERNEL:  $time = 26,clk = 1 
# KERNEL:  $time = 28,clk = 0 
# KERNEL:  $time = 30,clk = 1 
# KERNEL:  $time = 32,clk = 0 
# KERNEL:  $time = 34,clk = 1 
# KERNEL:  $time = 36,clk = 0 
# KERNEL:  $time = 38,clk = 1 
# KERNEL:  $time = 40,clk = 0 
# KERNEL:  $time = 42,clk = 1 
# KERNEL:  $time = 44,clk = 0 
# KERNEL:  $time = 46,clk = 1 
# KERNEL:  $time = 48,clk = 0 
# KERNEL:  $time = 50,clk = 1 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
