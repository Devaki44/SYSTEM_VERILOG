module queue;
  int data[$];
  
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
# KERNEL:  The array is :'{1, 2, 3, 88, 4, 5, 6, 7}
# KERNEL: Size of array : 8
# KERNEL:  The array is :'{1, 2, 3, 4, 5, 6, 7}
# KERNEL:  The array is : '{99, 1, 2, 3, 4, 5, 6, 7}
# KERNEL:  The array is : '{99, 1, 2, 3, 4, 5, 6, 7, 99}
# KERNEL:  The array is : '{1, 2, 3, 4, 5, 6, 7, 99}
# KERNEL:  The array is : '{1, 2, 3, 4, 5, 6, 7}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
