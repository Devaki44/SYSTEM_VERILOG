module while_loop;
  int a;
  
  initial begin
    while(a < 10)begin
      $display("Value of a : %0d",a);
      a++ ;
    end
  end
endmodule



# KERNEL: Value of a : 0
# KERNEL: Value of a : 1
# KERNEL: Value of a : 2
# KERNEL: Value of a : 3
# KERNEL: Value of a : 4
# KERNEL: Value of a : 5
# KERNEL: Value of a : 6
# KERNEL: Value of a : 7
# KERNEL: Value of a : 8
# KERNEL: Value of a : 9
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
