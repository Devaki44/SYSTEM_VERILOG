//CODE
class packet;
  rand bit[15:0] data;
  
  constraint data_c{ data[0] inside {[0:1]};
    				foreach(data[i])
                      if(i>0){
                        if(data[i-1] == 1)    data[i] == 0;
//                         else				  data[i] == 1;
                      }}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(5)begin
     pkt.randomize();
      $display(" data =%b ",pkt.data);
    end
  end
endmodule



//OUTPUT
# run -all
#  data =0010000100101001 
#  data =0100000100001000 
#  data =0010101000100101 
#  data =1000000001001000 
#  data =0101010000100000 
# exit
