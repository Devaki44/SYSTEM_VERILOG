❖Write a code to generate unique numbers without using randomize.

//CODE
module test;
  bit[3:0] data[10];
  
  initial begin
    foreach(data[i])
      data[i]  = $urandom ;
  end
  initial begin
    foreach(data[i])begin
    	$display(" data[%0d] = %0d ",i,data[i]);
    end
    $display(" data =%p ",data);
  end
endmodule




//OUTPUT
xcelium> run
 data[0] = 6 
 data[1] = 14 
 data[2] = 12 
 data[3] = 1 
 data[4] = 6 
 data[5] = 8 
 data[6] = 2 
 data[7] = 12 
 data[8] = 15 
 data[9] = 12 
 data ='{'h6, 'he, 'hc, 'h1, 'h6, 'h8, 'h2, 'hc, 'hf, 'hc} 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
