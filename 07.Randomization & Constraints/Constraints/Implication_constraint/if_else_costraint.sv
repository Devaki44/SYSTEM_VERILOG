//CODE
class packet;
  rand bit[3:0]data;
  string exp;
  
  constraint data_c{ if(exp == "yes" ) 
    					(data > 12);
                     else
                        (data < 5);}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    pkt.exp = "no";
    repeat(5)begin
      pkt.randomize();
      $display( " data =%0d ",pkt.data);
    end
    begin
      $display("------------------------");
    end
    
    pkt.exp = "yes";
    repeat(5)begin
      pkt.randomize();
      $display( " data =%0d ",pkt.data);
    end
  end
endmodule


//OUTPUT
xcelium> run
 data =4 
 data =3 
 data =1 
 data =2 
 data =4 
------------------------
 data =14 
 data =13 
 data =14 
 data =14 
 data =13 
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
