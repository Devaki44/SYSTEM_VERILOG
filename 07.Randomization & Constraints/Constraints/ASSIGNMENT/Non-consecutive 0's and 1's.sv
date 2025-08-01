//CODE
class packet;
  rand bit data[10];
  
  constraint data_c{ data[0] inside {[0:1]};
    				foreach(data[i])
                      if(i>0){
                        if(data[i-1] == 1)    data[i] == 0;
                        else				  data[i] == 1;}}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(10)begin
     pkt.randomize();
     $display(" data =%0p ",pkt.data);
    end
  end
endmodule



//OUTPUT
# run -all
#  data =1 0 1 0 1 0 1 0 1 0 
#  data =1 0 1 0 1 0 1 0 1 0 
#  data =1 0 1 0 1 0 1 0 1 0 
#  data =0 1 0 1 0 1 0 1 0 1 
#  data =1 0 1 0 1 0 1 0 1 0 
#  data =0 1 0 1 0 1 0 1 0 1 
#  data =1 0 1 0 1 0 1 0 1 0 
#  data =1 0 1 0 1 0 1 0 1 0 
#  data =0 1 0 1 0 1 0 1 0 1 
#  data =1 0 1 0 1 0 1 0 1 0 
# exit                    
