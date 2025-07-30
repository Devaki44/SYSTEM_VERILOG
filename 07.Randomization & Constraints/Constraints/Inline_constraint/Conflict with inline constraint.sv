//CODE
class packet;
  rand bit[3:0]data;
  
  constraint data_c{ data > 10 ;}
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
Error-[CNST-CIF] Constraints inconsistency failure
testbench.sv, 13
  Constraints are inconsistent and cannot be solved.
  Please check the inconsistent constraints being printed above and rewrite 
  them.

 data =0 
-----------------------------
           V C S   S i m u l a t i o n   R e p o r t 

