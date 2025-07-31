//CODE
class packet;
  rand bit[4:0]data;
  
  constraint data_c{data inside {[10:30]};
                    data%2 == 0;}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(20)begin
      void'(pkt.randomize());
      $display("data =%0d ",pkt.data);
    end
  end
endmodule


//OUTPUT
# run -all
# data =14 
# data =12 
# data =30 
# data =16 
# data =20 
# data =26 
# data =22 
# data =20 
# data =20 
# data =12 
# data =24 
# data =18 
# data =18 
# data =16 
# data =22 
# data =26 
# data =12 
# data =16 
# data =24 
# data =20 
# exit
