//CODE
class packet;
  rand byte data[10];
  
  constraint data_c{
    foreach(data[i]) {
      if(i<5)   		 data[i] == i+1 ;
      else if(i==5)      data[i] == 5 ;
      else if(i>5)       data[i] == data[i-1] -1 ; }}
  

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
#  data =1 2 3 4 5 5 4 3 2 1 
# exit
