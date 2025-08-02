//CODE
class packet;
  rand byte unsigned a,b;
  rand bit out;
  
  constraint data_c{ a < 16; b < 16;}
  constraint out_c{if((a+b)%2)	out == 1;
                   else         out == 0;}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(10)begin
      pkt.randomize();
      $display(" a=%0d,b=%0d,out=%0d",pkt.a,pkt.b,pkt.out);
    end
  end
endmodule

//OUTPUT
# run -all
#  a=7,b=13,out=0
#  a=8,b=2,out=0
#  a=4,b=13,out=1
#  a=2,b=1,out=1
#  a=3,b=10,out=1
#  a=7,b=10,out=1
#  a=14,b=11,out=1
#  a=8,b=1,out=1
#  a=15,b=3,out=0
#  a=2,b=11,out=1
# exit
