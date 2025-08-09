module semaphore();
  
  task w_mem();
    $display(" 1. Before writing into memory ");
    #5;
    $display(" 2. After writing into memory ");
  endtask
  
  task r_mem();
    $display(" 3. Before reading from memory ");
    #4;
    $display(" 4. After reading from memory ");
  endtask
  
  initial begin
   fork
    w_mem() ;
    r_mem() ;
   join
  end
endmodule


//OUTPUT
# run -all
#  1. Before writing into memory 
#  3. Before reading from memory 
#  4. After reading from memory 
#  2. After writing into memory 
# exit

