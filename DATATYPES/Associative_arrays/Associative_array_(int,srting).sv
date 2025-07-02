module associative_array;
  int abc[int];
  string pqr[string];
  
  initial begin
    abc = '{1:100 ,2:200 ,3:300 ,4:400 };
    pqr = '{"Red":"Stop" , "Yellow":"Ready" , "Green":"Go"};
    
    foreach(abc[i])begin
      $display("abc[%0d] = [%0d]",i,abc[i]);
    end
    
    foreach(pqr[colour])begin
      $display("pqr[%s] = [%s]",colour,pqr[colour]);
    end
  end
endmodule



# KERNEL: abc[1] = [100]
# KERNEL: abc[2] = [200]
# KERNEL: abc[3] = [300]
# KERNEL: abc[4] = [400]
# KERNEL: pqr[Green] = [Go]
# KERNEL: pqr[Red] = [Stop]
# KERNEL: pqr[Yellow] = [Ready]
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
