//CODE
class packet;
  rand real data;
  
  constraint data_c{data >= 1.35 ;
                    data <= 2.57;}
endclass

module test;
  initial begin
    packet pkt;
    pkt = new();
    
    repeat(5)begin
      pkt.randomize();
      $display(" data = %0f ",pkt.data);
    end
  end
endmodule



//OUTPUT
# run -all
#  data = 1.635998 
#  data = 1.756934 
#  data = 1.657768 
#  data = 1.421830 
#  data = 2.105774 
# exit
