//CODE
class packet;
  rand bit[3:0]data;
  
//   constraint data_c{ data > 10 ;}
endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(5)begin
      pkt.randomize() with {data inside {[2:8]};};
      $display(" data =%0d ",pkt.data);
      $display("-----------------------------");
    end
  end
endmodule


//OUTPUT
# run -all
#  data =6 
# -----------------------------
#  data =4 
# -----------------------------
#  data =4 
# -----------------------------
#  data =8 
# -----------------------------
#  data =7 
# -----------------------------
# exit
