//CODE
class packet;
  rand byte unsigned data[10];
  
  constraint data_c{foreach(data[i])
  				    if(i%2) data[i] == (i+1)/2;
                    else    data[i] == 0;}
endclass

module test;
  packet pkt ;
  initial begin
    pkt = new();
    
    repeat(10)begin
      pkt.randomize();
      $display(" data=%0p ",pkt.data);
    end
  end
endmodule


//OUTPUT
# run -all
#  data=0 1 0 2 0 3 0 4 0 5 
#  data=0 1 0 2 0 3 0 4 0 5 
#  data=0 1 0 2 0 3 0 4 0 5 
#  data=0 1 0 2 0 3 0 4 0 5 
#  data=0 1 0 2 0 3 0 4 0 5 
#  data=0 1 0 2 0 3 0 4 0 5 
#  data=0 1 0 2 0 3 0 4 0 5 
#  data=0 1 0 2 0 3 0 4 0 5 
#  data=0 1 0 2 0 3 0 4 0 5 
#  data=0 1 0 2 0 3 0 4 0 5 
# exit
