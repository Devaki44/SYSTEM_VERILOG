//CODE
class packet;
  rand int data;
  
  constraint data_c{ foreach(data[i])  if(i == 12)  data[i] == 1;
                    				           else         data[i] ==  0;}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    pkt.randomize();
    $display(" data = %b ",pkt.data);
  end
endmodule



//OUTPUT
xcelium> run
 data = 00000000000000000001000000000000 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
