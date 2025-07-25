module fork_join;
  
  initial begin
    fork
      $display("----------------------");
      
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
    join
    $display("----------------------");
    $display("$time,outside block");
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
# KERNEL: $time,outside block
# KERNEL: ----------------------
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
