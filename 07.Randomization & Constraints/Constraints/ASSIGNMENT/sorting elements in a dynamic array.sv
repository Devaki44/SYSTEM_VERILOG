❖Write a constraint for sorting elements in a dynamic array.
//CODE

class packet#(parameter N = 16);
  rand bit[3:0] data[N];
  
  constraint data_c{foreach(data[i]) data[i] inside {[0:15]};}
  
  constraint sort_c{foreach(data[i])
    if(i < N-1)   data[i] <= data[i+1] ;}
endclass

module test;
  initial begin
    packet#(16) pkt = new();
    
    repeat(5)begin
    	pkt.randomize();
    	$display(" data = %p ",pkt.data);
    end
  end
endmodule


//OUTPUT
xcelium> run
 data = '{'h9, 'h9, 'hc, 'hc, 'hc, 'hc, 'hc, 'hc, 'hc, 'hc, 'hc, 'hc, 'hc, 'hc, 'hc, 'he} 
 data = '{'h0, 'h0, 'h0, 'h1, 'h1, 'h1, 'h2, 'h4, 'h4, 'h4, 'hb, 'hb, 'hc, 'hd, 'hf, 'hf} 
 data = '{'h0, 'h1, 'h1, 'h2, 'h3, 'h4, 'h4, 'h4, 'h4, 'h6, 'h6, 'h6, 'h6, 'h7, 'h7, 'h9} 
 data = '{'h1, 'h1, 'h3, 'h4, 'h4, 'h4, 'h4, 'h7, 'h7, 'h7, 'h7, 'h7, 'hc, 'hc, 'hc, 'hc} 
 data = '{'h0, 'h0, 'h0, 'h0, 'h0, 'h1, 'h1, 'h1, 'h1, 'h3, 'h4, 'h6, 'hc, 'hd, 'hd, 'hd} 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
