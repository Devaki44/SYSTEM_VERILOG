module queue;
  int data[$:6];
  
  initial begin
    data = '{1,2,3,4,5,6,7};
    
    //display
    $display(" The array is :%p",data);
    
    //insert
    data.insert(3,88);
    $display(" The array is :%p",data);   
    
    //size
    $display("Size of array : %0d",data.size());
    
    //delete
    data.delete(3);
    $display(" The array is :%p",data);  
    
    //push-front
    data.push_front(99);
    $display(" The array is : %p",data);
    
     //push-back
    data.push_back(99);
    $display(" The array is : %p",data);
    
     //pop-front
    data.pop_front();
    $display(" The array is : %p",data);
    
    //pop-back
    data.pop_back();
    $display(" The array is : %p",data);
  end
endmodule


//OUTPUT
# KERNEL:  The array is :'{1, 2, 3, 4, 5, 6, 7}
# RUNTIME: Warning: RUNTIME_0249 testbench.sv (11): Operation would exceed maximum right index of 6.
# KERNEL: Time: 0 ns,  Iteration: 0,  Instance: /queue,  Process: @INITIAL#4_0@.
# KERNEL:  The array is :'{1, 2, 3, 4, 5, 6, 7}
# KERNEL: Size of array : 7
# KERNEL:  The array is :'{1, 2, 3, 5, 6, 7}
# KERNEL:  The array is : '{99, 1, 2, 3, 5, 6, 7}
# RUNTIME: Warning: RUNTIME_0249 testbench.sv (26): Operation would exceed maximum right index of 6.
# KERNEL: Time: 0 ns,  Iteration: 0,  Instance: /queue,  Process: @INITIAL#4_0@.
# KERNEL:  The array is : '{99, 1, 2, 3, 5, 6, 7}
# KERNEL:  The array is : '{1, 2, 3, 5, 6, 7}
# KERNEL:  The array is : '{1, 2, 3, 5, 6}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
