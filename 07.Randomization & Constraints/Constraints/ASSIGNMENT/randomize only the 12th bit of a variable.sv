//CODE
class packet;
  rand bit[11:0]data;
  
  constraint data_c{ data < 2047 ;}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(10)begin
      pkt.randomize();
      $display(" data =%b ",pkt.data);
    end
  end
endmodule



//OUTPUT
# run -all
#  data =001101110101 
#  data =010101101111 
#  data =000101010001 
#  data =010010010111 
#  data =011001100111 
#  data =010111010111 
#  data =001010001011 
#  data =011000010110 
#  data =001110010000 
#  data =000100100101 
# exit
