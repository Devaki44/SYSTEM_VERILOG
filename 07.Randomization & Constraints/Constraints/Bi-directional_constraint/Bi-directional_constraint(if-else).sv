//CODE
class packet;
  rand bit a,b ;
  
  constraint c{ if(a==0) (b==1);
               else      (b==0);}
endclass

module test;
  packet pkt;
  initial begin
    pkt =  new();
    
    repeat(10)begin
      pkt.randomize();
      $display(" a=%0d , b=%0d ",pkt.a,pkt.b);
    end
  end
endmodule



//OUTPUT
xcelium> run
 a=0 , b=1 
 a=0 , b=1 
 a=0 , b=1 
 a=0 , b=1 
 a=0 , b=1 
 a=0 , b=1 
 a=1 , b=0 
 a=0 , b=1 
 a=0 , b=1 
 a=1 , b=0 
xmsim: *W,RNQUIE: Simulation is complete.
