module queue_tb;
  int queue1[$];
  
  initial begin
    queue1 = '{2,5,6,7,4,9};
    
    //Display
    foreach(queue1[i])begin
      $display("queue1[%0d]=[%0d]",i,queue1[i]);
    end
    
    //Size
    $display("The size of the queue1 is : %0d",queue1.size());
    
    //Insert
    queue1.insert(3,10);
    $display("queue1 :",queue1);
    
    
    //Delete
    queue1.delete(4);
    $display("queue1:",queue1);
    
    //push_front
    queue1.push_front(11);
    $display("queue1:",queue1);
    
    //pop_front
    queue1.push_back(33);
    $display("queue1:",queue1);
    
    //pop_back
    queue1.pop_back();
    $display("queue1:",queue1);
    
    //pop_front
    queue1.pop_front();
    $display("queue1:",queue1);
    
  end
endmodule

/*
# KERNEL: queue1[0]=[2]
# KERNEL: queue1[1]=[5]
# KERNEL: queue1[2]=[6]
# KERNEL: queue1[3]=[7]
# KERNEL: queue1[4]=[4]
# KERNEL: queue1[5]=[9]
# KERNEL: The size of the queue1 is : 6
# KERNEL: queue1 :'{2, 5, 6, 10, 7, 4, 9}
# KERNEL: queue1:'{2, 5, 6, 10, 4, 9}
# KERNEL: queue1:'{11, 2, 5, 6, 10, 4, 9}
# KERNEL: queue1:'{11, 2, 5, 6, 10, 4, 9, 33}
# KERNEL: queue1:'{11, 2, 5, 6, 10, 4, 9}
# KERNEL: queue1:'{2, 5, 6, 10, 4, 9}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
*/
