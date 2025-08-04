//CODE

module semaphore();
  semaphore sem = new(3);
  
  task Process_A();
    sem.get();
    
    if(sem.try_get())
      $display(" Process_A : key received ");
    else
      $display(" Process_A : key not avilable ");
    
    $display(" 1. Process_A started ");
    #5;
    $display(" 2. Process_A completed ");
    sem.put();
  endtask
  
  task Process_B();
    sem.get();
    
     if(sem.try_get())
       $display(" Process_B : key received ");
    else
      $display(" Process_B : key not avilable ");
    
    $display(" 3. Process_B started");
    #4;
    $display(" 4. Process_B completed ");
    sem.put();
  endtask
  
  initial begin
   fork
    Process_A() ;
    Process_B() ;
   join
  end
endmodule



//OUTPUT
# run -all
#  Process_A : key received 
#  1. Process_A started 
#  Process_B : key not avilable 
#  3. Process_B started
#  4. Process_B completed 
#  2. Process_A completed 
# exit
