module replication_operator;
  bit [2:0]a;
  string b;
  
  initial begin
    a=3'b100;
    $display("Replication of a : %0b",{5{a}});
    
    b="D";
    $display("Replication of b : %s",{3{b}});
  end
endmodule




# KERNEL: Replication of a : 100100100100100
# KERNEL: Replication of b : DDD
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
