❖ Write a constraint for a 2D array with specific constraints.

//CODE
class packet;
  rand bit[3:0] arr[3:0][1:0];
  
  constraint arr_c{foreach(arr[i,j])
  					 {(arr[i][j]) < 16;}}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    pkt.randomize();
    foreach(pkt.arr[i,j])begin
      $display(" arr[%0d][%0d] =%0d ",i,j,pkt.arr[i][j]);
    end
  end
endmodule


//OUTPUT
# run -all
#  arr[3][1] =8 
#  arr[3][0] =14 
#  arr[2][1] =12 
#  arr[2][0] =14 
#  arr[1][1] =4 
#  arr[1][0] =9 
#  arr[0][1] =11 
#  arr[0][0] =4 
# exit
