//CODE
class packet;
  rand bit[9:0]data;
  
  constraint data_c{ data < 1023 ;}
endclass

module test;
  initial begin
    packet pkt;
    pkt = new();
    
    repeat(10)begin
      pkt.randomize();
      $display(" data =%b ",pkt.data);
    end
  end
endmodule

//OUTPUT
# run -all
#  data =1100000111 
#  data =0110001011 
#  data =1111100100 
#  data =1011110011 
#  data =1110001110 
#  data =0110000001 
#  data =0100001101 
#  data =1110111010 
#  data =0110000101 
#  data =0010110100 
# exit
