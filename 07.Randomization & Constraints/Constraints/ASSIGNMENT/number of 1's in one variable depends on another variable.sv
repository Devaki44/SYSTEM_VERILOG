❖ Write a constraint where the number of 1's in one variable depends on another variable.

//CODE
class packet;
  rand bit[7:0] a;
  rand bit b;
  
  constraint data_c{ if(^(a))	b == 1;
                     else       b == 0;}
endclass

module test;
  initial begin
    packet pkt = new();
    
    repeat(5)begin
    	pkt.randomize();
    	$display(" a =%b ,b=%b ",pkt.a,pkt.b);
    end
  end
endmodule



//OUTPUT
xcelium> run
 a =01010100 ,b=1 
 a =11100011 ,b=1 
 a =00001000 ,b=1 
 a =01110100 ,b=0 
 a =01100001 ,b=1 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
