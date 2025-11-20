module semaphore();
  semaphore sem = new(3);
  
  task Process_A();
    sem.get(3);
    $display(" 1. Process_A started ");
    #5;
    $display(" 2. Process_A completed ");
    sem.put(4);
  endtask
  
  task Process_B();
    sem.get(4);
    $display(" 3. Process_B started");
    #4;
    $display(" 4. Process_B completed ");
    sem.put(1);
  endtask
    
  
  initial begin
   fork
        Process_B() ;

    Process_A() ;
   join
  end
endmodule


// module semaphore();
//   semaphore sem = new(3);
  
//   task Process_A();
//     sem.get(4);
//     $display(" 1. Process_A started ");
//     #5;
//     $display(" 2. Process_A completed ");
//   sem.put(3);
//   endtask
  
//   task Process_B();
//     sem.get(4);
//     $display(" 3. Process_B started");
//     #4;
//     $display(" 4. Process_B completed ");
//     sem.put(1);
//   endtask
    
  
//   initial begin
//    fork
//     Process_A() ;
//     Process_B() ;
//    join
//   end
// endmodule



// module semaphore();
//   semaphore sem = new(3);
  
//   task Process_A();
//     sem.get(2);
//     $display(" 1. Process_A started ");
//     #5;
//     $display(" 2. Process_A completed ");
//   sem.put(3);
//   endtask
  
//   task Process_B();
//     sem.get(2);
//     $display(" 3. Process_B started");
//     #4;
//     $display(" 4. Process_B completed ");
//     sem.put(1);
//   endtask
    
  
//   initial begin
//    fork
//     Process_A() ;
//     Process_B() ;
//    join
//   end
// endmodule




// module semaphore();
//   semaphore sem = new(3);
  
//   task Process_A();
//     sem.get(2);
//     $display(" 1. Process_A started ");
//     #5;
//     $display(" 2. Process_A completed ");
// //   sem.put(3);
//   endtask
  
//   task Process_B();
//     sem.get(4);
//     $display(" 3. Process_B started");
//     #4;
//     $display(" 4. Process_B completed ");
//     sem.put(1);
//   endtask
    
  
//   initial begin
//    fork
//     Process_A() ;
//     Process_B() ;
//    join
//   end
// endmodule





// module semaphore();
//   semaphore sem = new(4);
  
//   task Process_A();
//     sem.get(2);
//     $display(" 1. Process_A started ");
//     #5;
//     $display(" 2. Process_A completed ");
//   sem.put(3);
//   endtask
  
//   task Process_B();
//     sem.get(2);
//     $display(" 3. Process_B started");
//     #4;
//     $display(" 4. Process_B completed ");
//     sem.put(1);
//   endtask
    
  
//   initial begin
//    fork
//     Process_A() ;
//     Process_B() ;
//    join
//   end
// endmodule



// module semaphore();
//   semaphore sem = new(3);
  
//   task Process_A();
//     if(sem.get(2));
//     $display(" 1. Process_A started ");
//     #5;
//     $display(" 2. Process_A completed ");
//   sem.put(3);
//   endtask
  
//   task Process_B();
//     sem.get(4);
//     $display(" 3. Process_B started");
//     #4;
//     $display(" 4. Process_B completed ");
//     sem.put(1);
//   endtask
    
  
//   initial begin
//    fork
//     Process_A() ;
//     Process_B() ;
//    join
//   end
// endmodule



// module semaphore_example();
//   semaphore sem = new(3);
  
//   task process_A();
//     sem.get(3);
//     $display("process_A is started");
//     #5ns;
//     $display("process_A is completed");
//     sem.put(5);
//   endtask

//   task process_B();
//     sem.get(5);  // Accessing more keys than initialized
//     $display("process_B is started");
//     #10ns;
//     $display("process_B is completed");
//     sem.put(5);
//   endtask
  
//   task process_C();
//     sem.get(6);  // Accessing more keys than available in the bucket
//     $display("process_C is started");
//     #5ns;
//     $display("process_C is completed");
//     sem.put(5);
//   endtask
  
//   initial begin
//     fork
//       process_A();
//       process_B();
//       process_C();
//     join
//   end
// endmodule

// ////////////////////////////////////////////////////////////////////////////
// ✔ YES — the simulator schedules fork threads roughly in the declared order
// ✔ This affects which task "gets to try first"
// ✔ That affects who blocks and who runs
// ✔ That affects whether the simulator thinks there is deadlock
// ✔ That decides whether B wakes up or not
//   //////////////////////////////////////////////////////////////////////
  
//   module semaphore_example();
//   semaphore sem = new(1);
  
//   task process_A();
//     if(sem.try_get()) 
//       $display("process_A: Key received");
//     else 
//       $display("process_A: Key is not available");
//     $display("process_A started");
//     #5ns;
//     $display("process_A completed");
//     sem.put();
//   endtask
  
//   task process_B();
//     if(sem.try_get()) 
//       $display("process_B: Key received");
//     else 
//       $display("process_B: Key is not available");
//     $display("process_B started");
//     #4ns;
//     $display("process_B completed");
//     sem.put();
//   endtask

//   initial begin
//     fork
//       process_B();
//       process_A();
//     join
//   end
// endmodule
