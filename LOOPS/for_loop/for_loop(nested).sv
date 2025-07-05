module for_loop;
  int out ;
   
  initial begin
    for(int i=2 ; i<3 ; i++ )begin
      for(int j=0 ; j<=10 ; j++)begin
        out = i * j ;
        $display(" %0d * %0d = %0d",i,j,out);
      end
    end
  end
  
endmodule



# KERNEL:  2 * 0 = 0
# KERNEL:  2 * 1 = 2
# KERNEL:  2 * 2 = 4
# KERNEL:  2 * 3 = 6
# KERNEL:  2 * 4 = 8
# KERNEL:  2 * 5 = 10
# KERNEL:  2 * 6 = 12
# KERNEL:  2 * 7 = 14
# KERNEL:  2 * 8 = 16
# KERNEL:  2 * 9 = 18
# KERNEL:  2 * 10 = 20
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
