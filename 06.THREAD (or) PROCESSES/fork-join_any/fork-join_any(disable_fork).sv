module threads;
  
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
    disable fork;
    $display("----------------------");
    $display("outside block");
    $display("----------------------");
  end
endmodule


//OUTPUT
# KERNEL: ----------------------
# KERNEL: ----------------------
# KERNEL: outside block
# KERNEL: ----------------------
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
