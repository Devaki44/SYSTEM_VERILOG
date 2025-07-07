module logical_operator;
  bit [3:0]a,b;
  bit out;
  
  initial begin
    a = 4'b1011;
    b = 4'b0001;
    
    out = a->b;
    $display("out : %b",out);
    
    out = a <-> b ;
    $display("out : %b",out);
    
  end
endmodule


# KERNEL: out : 1
# KERNEL: out : 1
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
