module fork_join_any;
  
  initial begin
    fork
      $display("----------------------");  //this is consider as one thread or processes
      
      begin
        $display("$time,process1 started");
        #5;
        $display("$time,process1 finished");
      end
      
      begin
        $display("$time,process2 started");
        #20;
        $display("$time,process2 finished");
      end
    join_any
    wait fork;
    $display("----------------------");
    $display("outside block");
    $display("----------------------");
  end
endmodule



//OUTPUT
# KERNEL: ----------------------
# KERNEL: $time,process1 started
# KERNEL: $time,process2 started
# KERNEL: $time,process1 finished
# KERNEL: $time,process2 finished
# KERNEL: ----------------------
# KERNEL: outside block
# KERNEL: ----------------------
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
