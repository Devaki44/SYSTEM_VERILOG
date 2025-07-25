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
    join_none
    disable fork;
	
    $display("----------------------");
    $display("time=%0t,outside block",$time);
    $display("----------------------");
  end
endmodule



//OUTPUT
# KERNEL: ----------------------
# KERNEL: time=0,outside block
# KERNEL: ----------------------
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
