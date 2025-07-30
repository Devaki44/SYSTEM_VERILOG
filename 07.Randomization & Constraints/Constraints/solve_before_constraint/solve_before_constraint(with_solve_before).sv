//CODE
class packet;
  rand bit       a;
  rand bit [3:0] b;
  
  constraint sab { solve a before b;}
  constraint a_b { (a == 1) -> b == 0; }
endclass

module inline_constr;
  initial begin
    packet pkt;
    pkt = new();
    repeat(10) begin
      pkt.randomize();
      $display("\tValue of a = %0d, b = %0d",pkt.a,pkt.b);
    end
  end
endmodule



//OUTPUT
xcelium> run
	Value of a = 1, b = 0
	Value of a = 0, b = 8
	Value of a = 0, b = 9
	Value of a = 0, b = 11
	Value of a = 0, b = 4
	Value of a = 1, b = 0
	Value of a = 0, b = 14
	Value of a = 1, b = 0
	Value of a = 0, b = 7
	Value of a = 1, b = 0
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
