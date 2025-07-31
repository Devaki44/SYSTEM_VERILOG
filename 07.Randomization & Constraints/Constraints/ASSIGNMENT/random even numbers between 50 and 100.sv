//CODE
class packet;
  rand bit[6:0] data;
  
  constraint data_c{data inside {[50:100]};
                    data%2 == 0;}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(10)begin
      pkt.randomize();
      $display(" data = %0d ",pkt.data);
    end
  end
endmodule

//OUTPUT
xcelium> run
 data = 78 
 data = 52 
 data = 56 
 data = 76 
 data = 80 
 data = 84 
 data = 94 
 data = 76 
 data = 66 
 data = 72 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
