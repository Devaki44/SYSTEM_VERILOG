❖Write a constraint to ensure unique elements in a 2D array without using the unique keyword.

//CODE
class packet;
  rand bit[3:0] data[4][2];
  
  constraint data_c{foreach(data[i,j])
    data[i][j] inside {[0:15]};}
  
  constraint unique_c{foreach(data[i1,j1])
    					foreach(data[i2,j2]){
                          if((i1 != i2)||(j1 != j2))	
                            data[i1][j1] != data[i2][j2];}}
endclass

module test;
  initial begin
    packet pkt;
    pkt = new();
    
    void'(pkt.randomize());
    foreach(pkt.data[i,j])begin
      $display(" data[%0d][%0d] = %0d" ,i,j,pkt.data[i][j]);
    end
  end
endmodule




//OUTPUT
xcelium> run
 data[0][0] = 4
 data[0][1] = 12
 data[1][0] = 14
 data[1][1] = 1
 data[2][0] = 6
 data[2][1] = 8
 data[3][0] = 7
 data[3][1] = 10
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
