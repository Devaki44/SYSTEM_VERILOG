class home;
  bit light=0;
  string sw="OFF";
  
  task task1();  
	bit light=1 ;
	string sw="ON";
    
  	this.light = light;
  	this.sw = sw	  ;	
    
    $display("INSIDE CLASS: The sw is %s ,so the light %0d",sw,light);
  endtask
endclass

module test;
  initial begin
    
  	home a;
 	a = new();
    
    a.task1();
    
    a.light = 0 ;
  	a.sw = "off"	  ;	
    
    $display("OUTSIDE CLASS: The sw is %s ,so the light %0d",a.sw,a.light);
  end
endmodule


//OUTPUT
# KERNEL: INSIDE CLASS: The sw is ON ,so the light 1
# KERNEL: OUTSIDE CLASS: The sw is off ,so the light 0
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
