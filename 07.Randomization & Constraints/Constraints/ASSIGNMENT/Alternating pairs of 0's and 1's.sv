//CODE
class packet;
  rand bit[1:0]data[10];
  
  constraint data_c{foreach(data[i]) if(i%2)  data[i] == 2'b10;
                    				 else     data[i] == 2'b01;}
endclass

module test;
  initial begin
    packet pkt = new();
    
    repeat(1)begin
      pkt.randomize();
      foreach(pkt.data[i])begin
        $display(" data[%0d] = %b",i,pkt.data[i]);
      end
    end
  end
endmodule

//OUTPUT
# run -all
#  data[0] = 01
#  data[1] = 10
#  data[2] = 01
#  data[3] = 10
#  data[4] = 01
#  data[5] = 10
#  data[6] = 01
#  data[7] = 10
#  data[8] = 01
#  data[9] = 10
# exit
