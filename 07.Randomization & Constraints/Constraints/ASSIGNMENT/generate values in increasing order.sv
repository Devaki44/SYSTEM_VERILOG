//CODE
class packet;
  rand int data[10];
  
  constraint data_c{data[0] == 1 ;
                    foreach(data[i]){
                      if(i>0)  data[i] == data[i-1]+1 ;}}
endclass

module test;
  packet pkt;
  initial begin
      pkt = new();
      pkt.randomize();     
      $display(" data = %p ",pkt.data);
  end
endmodule



//OUTPUT
xcelium> run
 data = '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10} 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
