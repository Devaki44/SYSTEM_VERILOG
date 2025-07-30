//CODE
class packet;
  rand bit[3:0]a,b,c;
  
  constraint packet_c{ c == func(a,b) ;}
  
  //function
  function bit[3:0]func(bit [3:0] x,y);
    if(x<4)  func = x ;
    else     func = y ;
  endfunction
  
endclass

module test;
  packet pkt ;
  initial begin
    pkt = new();
    
    repeat(10)begin
      pkt.randomize();
      $display(" a=%0d , b=%0d , c=%0d ",pkt.a,pkt.b,pkt.c);
    end
  end
endmodule


//OUTPUT
xcelium> run
 a=4 , b=13 , c=13 
 a=3 , b=3 , c=3 
 a=1 , b=13 , c=1 
 a=2 , b=5 , c=2 
 a=4 , b=0 , c=0 
 a=12 , b=1 , c=1 
 a=14 , b=8 , c=8 
 a=6 , b=3 , c=3 
 a=6 , b=11 , c=11 
 a=6 , b=15 , c=15 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
