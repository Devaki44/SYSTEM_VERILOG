//CODE
class packet;
  rand bit[1:0] data[9];
  
  constraint data_c{
    foreach(data[i]) {
      if((i%4 ==0) || (i%4 == 3))  	data[i] == 1 ;
      else                          data[i] == 2 ; }}
  

endclass

module test;
  initial begin
    packet pkt;
    pkt = new();
    
    pkt.randomize();
    $display(" data =%0p ",pkt.data);
  end
endmodule



//OUTPUT
# run -all
#  data =1 2 2 1 1 2 2 1 1 
# exit
