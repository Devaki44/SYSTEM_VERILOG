module semaphore_ex;
  semaphore sem = new(4);
  
  task A();
    if(sem.try_get(1))
      $display("A : key received ");
    else
      $display("A : key not received");               
    
    $display("processA started");
    #5;
    $display("processA completed");
    
    sem.put(3);
  endtask
  
  
  task B();
    if(sem.try_get(2))
      $display("B : key received ");
    else
      $display("B : key not received ");
    
    $display("processB started");
    #6;
    $display("processB completed");
    
    sem.put(3);
  endtask
  
  
  
  initial begin
    
    fork 
    	B();
    	A();
    join
  
  end
endmodule
  



xcelium> run
B : key received 
processB started
A : key received 
processA started
processA completed
processB completed
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit


https://www.edaplayground.com/x/aeiY
