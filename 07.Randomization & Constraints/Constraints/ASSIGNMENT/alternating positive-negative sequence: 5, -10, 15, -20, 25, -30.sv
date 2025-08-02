❖ Write a constraint to generate the alternating positive-negative sequence: 5, -10, 15, -20, 25, -30.

//CODE
class packet;
  rand byte unsigned temp[6];
  rand byte signed data[6];


  constraint temp_c {temp[0] ==5;
                     temp[1] ==10;
                     temp[2] ==15;
                     temp[3] ==20;
                     temp[4] ==25;
                     temp[5] ==30;
                     }

  constraint data_c {foreach (data[i])
    data[i] == ((i % 2) ? -temp[i] : temp[i]);}

endclass

module test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(2)begin
      pkt.randomize();
      $display(" data =%0p ",pkt.data);
    end
  end
endmodule



//OUTPUT
  # run -all
#  data =5 -10 15 -20 25 -30 
#  data =5 -10 15 -20 25 -30 
# exit
