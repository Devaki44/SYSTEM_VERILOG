//CODE
class packet;
  rand bit[4:0]data;
  randc bit[3:0]x;
  
  constraint x_c   { x > 0;}
  constraint data_c{ data inside {3*x};}
endclass

module test;
  initial begin
    packet pkt = new();
    
    repeat(10)begin
      pkt.randomize();
      $display(" x=%0d ,data =%0d",pkt.x,pkt.data);
    end
  end
endmodule


//OUTPUT
# run -all
#  x=6 ,data =18
#  x=8 ,data =24
#  x=10 ,data =30
#  x=4 ,data =12
#  x=9 ,data =27
#  x=2 ,data =6
#  x=5 ,data =15
#  x=3 ,data =9
#  x=1 ,data =3
#  x=7 ,data =21
# exit
