module do_while;
  int a;
 
initial begin 
  
  do begin
    a++;
    $display("Value of a : %0d",a);
  end
  while(a < 10);
  
end
endmodule



# KERNEL: Value of a : 1
# KERNEL: Value of a : 2
# KERNEL: Value of a : 3
# KERNEL: Value of a : 4
# KERNEL: Value of a : 5
# KERNEL: Value of a : 6
# KERNEL: Value of a : 7
# KERNEL: Value of a : 8
# KERNEL: Value of a : 9
# KERNEL: Value of a : 10
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
