module fine_grain_process;
  process p;
  
  initial begin
    
  fork 
    begin
    	p = process::self();//commenting this line can give the idea about self()
      $display("[%0t] child process is running",$time);
      #5;
      $display("[%0t] Status = %s",$time, p.status.name());//RUNNING [1]
//       #50;
//       $display("[%0t] child process is finished",$time);
//       $display("[%0t] Status = %s",$time, p.status.name());//FINISHED [5]
     #100;
    end
  join_none
    
  
    #10;
    $display("[%0t] Status = %s",$time, p.status.name()); //WAITING [2]
    wait (p != null );
    
    #10;
    p.suspend();
    $display("[%0t] Status = %s",$time, p.status.name()); //SUSPENDED [3]

    #5;
    p.resume();
    $display("[%0t] Status = %s",$time, p.status.name()); //RUNNING [1]
    
    #5;
    p.await();
    $display("[%0t] Status = %s",$time, p.status.name()); //WAITING [2]
    
    #5;
    p.kill();
    $display("[%0t] Status = %s",$time, p.status.name()); //KILLED [5]
    
    //FINISHED [4]
  end
endmodule


/*  At time = 20ns, your process is still inside a #100 delay,
 so even though you resumed it, it’s not executing anything yet — it’s waiting for time to pass.
 When that delay finishes, it’ll automatically change to RUNNING, then FINISHED.*/





//output[0] child process is running
[5] Status = RUNNING
[10] Status = WAITING
[20] Status = SUSPENDED
[25] Status = WAITING
[110] Status = FINISHED
[115] Status = FINISHED
           V C S   S i m u l a t i o n   R e p o r t 
