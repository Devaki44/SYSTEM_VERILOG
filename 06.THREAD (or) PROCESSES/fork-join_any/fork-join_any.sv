module threads;
  
  initial begin
    fork
      $display("----------------------");  //this is consider as one thread or processes
      
      begin
        $display("time=%0t,process1 started",$time);
        #5;
        $display("time=%0t,process1 finished",$time);
      end
      
      begin
        $display("time=%0t,process2 started",$time);
        #20;
        $display("time=%0t,process2 finished",$time);
      end
    join_any
    

    $display("----------------------");
    $display("time=%0t,outside block",$time);
    $display("----------------------");
  end
endmodule

//OUTPUT
# KERNEL: ----------------------
# KERNEL: ----------------------
# KERNEL: time=0,outside block
# KERNEL: ----------------------
# KERNEL: time=0,process1 started
# KERNEL: time=0,process2 started
# KERNEL: time=5,process1 finished
# KERNEL: time=20,process2 finished
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
