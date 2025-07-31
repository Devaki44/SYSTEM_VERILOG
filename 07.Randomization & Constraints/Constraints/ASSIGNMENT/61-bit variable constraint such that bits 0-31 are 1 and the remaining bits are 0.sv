//CODE
class packet;
  rand bit[60:0]data;
  
  constraint data_c{  foreach(data[i])   
    				if(i<32)	data[i] == 1;
                    else        data[i] == 0;}
endclass

module test;
  initial begin
    packet pkt;
    pkt = new();
    
    repeat(2)begin
      pkt.randomize();
      $display(" data = %b " ,pkt.data);
    end
  end
endmodule



//OUTPUT
# run -all
#  data = 0000000000000000000000000000011111111111111111111111111111111 
#  data = 0000000000000000000000000000011111111111111111111111111111111 
# exit
