//CODE
class packet;
  rand bit[3:0]data;
  string exp;
  
  constraint data_c{ (exp == "yes" ) -> (data > 12) ;}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    pkt.exp = "yes";
    repeat(5)begin
      pkt.randomize();
      $display( " data =%0d ",pkt.data);
    end
  end
endmodule


//OUTPUT
xcelium> run
 data =13 
 data =15 
 data =14 
 data =15 
 data =13 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
