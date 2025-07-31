//CODE
class packet;
  rand bit[2:0]data;
  rand bit even;
  
  constraint data_c{ if(even)  data%2 == 0 ;
                     else	   data%2 != 0 ;}
endclass

module test;
  initial begin
    packet pkt = new();
    
    repeat(10)begin
      pkt.randomize();
      $display(" even=%0d ,data =%0d ",pkt.even,pkt.data);
    end
  end
endmodule



//OUTPUT
xcelium> run
 even=0 ,data =7 
 even=1 ,data =0 
 even=1 ,data =0 
 even=0 ,data =5 
 even=0 ,data =5 
 even=1 ,data =2 
 even=0 ,data =7 
 even=0 ,data =5 
 even=0 ,data =1 
 even=0 ,data =3 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
