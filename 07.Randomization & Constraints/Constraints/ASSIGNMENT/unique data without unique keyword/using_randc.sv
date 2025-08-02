❖ Write a constraint to generate unique numbers without using the unique keyword.

//CODE
class packet;
  randc bit[3:0] data;
  
  constraint data_c{ data < 16;}
endclass

module test;
  initial begin
    packet pkt;
    pkt = new();
    
    repeat(16)begin
      void'(pkt.randomize());
      $display(" data = %0d" ,pkt.data);
    end
  end
endmodule



//OUTPUT
xcelium> run
 data = 5
 data = 14
 data = 13
 data = 7
 data = 4
 data = 11
 data = 15
 data = 9
 data = 1
 data = 0
 data = 12
 data = 2
 data = 8
 data = 6
 data = 3
 data = 10
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
