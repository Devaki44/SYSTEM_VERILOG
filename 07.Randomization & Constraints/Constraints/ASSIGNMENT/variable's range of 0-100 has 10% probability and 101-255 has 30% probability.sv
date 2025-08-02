❖ Write a constraint where a variable's range of 0-100 has 10% probability and 101-255 has 30% probability.

//CODE
class packet;
  rand int data;
  
  constraint data_c{data dist{[0:100]:=10,[101:255]:=30};}
endclass
                    
module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(10)begin
      void'(pkt.randomize());
      $display("data =%0d ",pkt.data);
    end
  end
endmodule


//OUTPUT
xcelium> run
data =29 
data =152 
data =217 
data =106 
data =23 
data =179 
data =109 
data =120 
data =183 
data =79 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
