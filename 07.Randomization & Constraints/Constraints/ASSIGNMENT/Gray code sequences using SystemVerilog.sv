//CODE
class packet;
  randc bit [3:0]data;
  bit [3:0]gray;
  
  constraint data_c{ data < 16 ;}
  
  function void post_randomize();
    gray = data ^ (data >> 1) ;
  endfunction
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(16)begin
      pkt.randomize();
      $display(" data = %0d , gray = %0d",pkt.data,pkt.gray);
    end
  end
endmodule


//OUTPUT
xcelium> run
 data = 5 , gray = 7
 data = 14 , gray = 9
 data = 13 , gray = 11
 data = 7 , gray = 4
 data = 4 , gray = 6
 data = 11 , gray = 14
 data = 15 , gray = 8
 data = 9 , gray = 13
 data = 1 , gray = 1
 data = 0 , gray = 0
 data = 12 , gray = 10
 data = 2 , gray = 3
 data = 8 , gray = 12
 data = 6 , gray = 5
 data = 3 , gray = 2
 data = 10 , gray = 15
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
