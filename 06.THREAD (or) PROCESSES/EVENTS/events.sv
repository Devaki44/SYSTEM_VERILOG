module events;
  event a;
  
  initial begin
    $display(" [%0t] triggering not started",$time);
    #20 ->a;
    $display(" [%0t]triggering has been started",$time);
  end
  initial begin
    $display(" [%0t] waiting for trigger trigger",$time);
    #20;
    wait(a.triggered);
    $display(" [%0t] received trigger  trigger",$time);
  end
  
  initial begin
    $display(" [%0t] waiting for trigger @",$time);
    #20;
    @(a);
    $display(" [%0t] received trigger  @",$time); 
  end  
endmodule



//OUTPUT
# KERNEL:  [0] triggering not started
# KERNEL:  [0] waiting for trigger trigger
# KERNEL:  [0] waiting for trigger @
# KERNEL:  [20]triggering has been started
# KERNEL:  [20] received trigger  trigger
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
