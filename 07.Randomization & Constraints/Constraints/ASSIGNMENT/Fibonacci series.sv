❖ Write a constraint to generate the Fibonacci series.

//CODE
class packet;
  rand int f[10];
  
  constraint data_c{f[0] == 0;
                    f[1] == 1;
                    foreach(f[i]){
                    if(i>=2)
                      f[i] == (f[i-1] + f[i-2]);}}  
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    void'(pkt.randomize());
    foreach(pkt.f[i])begin
      $display(" f[%0d] = %0d ",i,pkt.f[i]);
    end
  end
endmodule



//OUTPUT
xcelium> run
 f[0] = 0 
 f[1] = 1 
 f[2] = 1 
 f[3] = 2 
 f[4] = 3 
 f[5] = 5 
 f[6] = 8 
 f[7] = 13 
 f[8] = 21 
 f[9] = 34 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
