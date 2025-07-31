//CODE
class packet;
  rand bit[7:0]data;
  
  constraint data_c{foreach(data[i])
    				if(i%2==1)   data[i] == 0;
                    else     	 data[i] == 1;}
endclass

module test;
  initial begin
    packet pkt = new();
    
    pkt.randomize();
    $display(" data = %b ",pkt.data);
  end
endmodule



//OUTPUT
# run -all
#  data = 01010101 
# exit
