❖ Write a constraint to generate unique numbers without using the unique keyword.

//CODE
class packet;
  rand bit[3:0] data[16];
  
  constraint data_c{foreach(data[i]){
    					foreach(data[j]){ 
                          if(i<j)		data[i] != data[j];}}}
endclass

module test;
  initial begin
    packet pkt;
    pkt = new();
    
    void'(pkt.randomize());
    $display(" data = %p" ,pkt.data);
  end
endmodule



//OUTPUT
xcelium> run
 data = '{'h4, 'he, 'h6, 'h7, 'hc, 'h1, 'h8, 'ha, 'hd, 'h0, 'h9, 'h2, 'hf, 'hb, 'h5, 'h3}
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
