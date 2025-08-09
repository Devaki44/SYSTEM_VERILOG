module semaphore();
  semaphore sem = new(3);
  
  task Process_A();
    sem.get(3);
    $display(" 1. Process_A started ");
    #5;
    $display(" 2. Process_A completed ");
    sem.put(3);
  endtask
  
  task Process_B();
    sem.get(1);
    $display(" 3. Process_B started");
    #4;
    $display(" 4. Process_B completed ");
    sem.put(1);
  endtask
  
  initial begin
   fork
    Process_A() ;
    Process_B() ;
   join
  end
endmodule



//OUTPUT
xcelium> run
 1. Process_A started 
 2. Process_A completed 
 3. Process_B started
 4. Process_B completed 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
