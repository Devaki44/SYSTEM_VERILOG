//CODE
module semaphore();
  semaphore sem = new(3);
  
  task Process_A();
    sem.get(4);
    $display(" 1. Process_A started ");
    #5;
    $display(" 2. Process_A completed ");
    sem.put(4);
  endtask
  
  task Process_B();
    sem.get(5);
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
# run -all
# exit
