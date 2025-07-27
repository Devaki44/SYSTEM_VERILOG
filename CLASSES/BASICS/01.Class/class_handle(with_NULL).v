class home;
  int light;
  string sw;
  
  task task1;
    light = 1;
    sw	  = "ON" ;
    
    $display("The switch is %s ,so the light %0d",sw,light);
  endtask
endclass

module test;
  initial begin
  home a;
    
  if(a == null)
    $display("EMPTY");
  else
    $display("NOT EMPTY");
    
  end
  
endmodule


# KERNEL: EMPTY
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
