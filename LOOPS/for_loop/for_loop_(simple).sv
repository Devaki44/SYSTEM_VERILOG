module for_loop;
   
  initial begin
    for(int i=0 ; i<10 ; i++ )begin
      $display("Value of i : %0d",i);
    end
  end
  
endmodule


# KERNEL: Value of i : 0
# KERNEL: Value of i : 1
# KERNEL: Value of i : 2
# KERNEL: Value of i : 3
# KERNEL: Value of i : 4
# KERNEL: Value of i : 5
# KERNEL: Value of i : 6
# KERNEL: Value of i : 7
# KERNEL: Value of i : 8
# KERNEL: Value of i : 9
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
