❖ Write a constraint to generate palindrome numbers.

//CODE
class packet;
  rand bit[1:0]data[4];
  
  constraint data_c{
                    foreach(data[i])
                     data[i] inside {[0:3]};  
    				 data[0] == data[3];
					 data[1] == data[2];
  					}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    void'(pkt.randomize());
    $display(" data = %0p ",pkt.data);
  end
endmodule


//OUTPUT
xcelium> run
 data = '{'h3, 'h2, 'h2, 'h3} 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
