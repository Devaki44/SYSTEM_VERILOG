//CODE
class packet;
  randc byte data;
  
  constraint data_c{data inside {25,27,30,36,40,45};}
endclass

module  test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(10)begin
      pkt.randomize();
      $display(" data = %0d ",pkt.data);
    end
  end
endmodule


//OUTPUT
# run -all
#  data = 25 
#  data = 27 
#  data = 36 
#  data = 30 
#  data = 40 
#  data = 45 
#  data = 30 
#  data = 36 
#  data = 45 
#  data = 40 
# exit
