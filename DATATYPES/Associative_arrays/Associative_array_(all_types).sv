module associative_array;
  string pqr[string];
  string result;
  
  initial begin
    pqr = '{"Red":"Stop" , "Yellow":"Ready" , "Green":"Go"};
    $display("pqr : ",pqr);
    
    foreach(pqr[i])begin
      $display("pqr[%0s]=%0s",i,pqr[i]);
    end
    
    //.num()
    $display("Number of element in array : %0d",pqr.num());
    
    //.size
    $display("Size of the array : %0d",pqr.size());
    
    //.delete()
    pqr.delete("Yellow");
    $display("After deleting,the array is",pqr);
    
    //.exists()
    if (pqr.exists("Red"))begin
      $display("The index exists");
    end
    else begin
      $display("The index not exists");
    end
    
    //.first()
    if(pqr.first(result))
      $display("The first element of the queue = %0s ",result);
    
    //.next()
    if(pqr.next(result))
      $display("The next element of the queue = %0s ",result);
    
    //.last()
    if(pqr.last(result))
      $display("The last element of the queue = %0s ",result);
    
    //.prev()
    if(pqr.prev(result))
      $display("The previous element of the queue = %0s ",result);
               
  end
endmodule




# KERNEL: pqr : '{"Green":"Go", "Red":"Stop", "Yellow":"Ready"}
# KERNEL: pqr[Green]=Go
# KERNEL: pqr[Red]=Stop
# KERNEL: pqr[Yellow]=Ready
# KERNEL: Number of element in array : 3
# KERNEL: Size of the array : 3
# KERNEL: After deleting,the array is'{"Green":"Go", "Red":"Stop"}
# KERNEL: The index exists
# KERNEL: The first element of the queue = Green 
# KERNEL: The next element of the queue = Red 
# KERNEL: The last element of the queue = Red 
# KERNEL: The previous element of the queue = Green 
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
