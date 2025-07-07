module bitwise_operator;
  logic [3:0]in;
  logic out;
  
  initial begin
    in = 4'b1x01;
    
    out = &in;
    $display("out : %0b",out);

    out = |in;
    $display("out : %0b",out);
    
    out = ^in;
    $display("out : %0b",out);
    
    out = ~&in;
    $display("out : %0b",out);
    
    out = ~|in;
    $display("out : %0b",out);
    
    out = ~^in;
    $display("out : %0b",out);
  end
endmodule

# KERNEL: out : 0
# KERNEL: out : 1
# KERNEL: out : x
# KERNEL: out : 1
# KERNEL: out : 0
# KERNEL: out : x
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.




module bitwise_operator;
  logic [3:0]in;
  logic out;
  
  initial begin
    in = 4'bxxxx;
    
    out = &in;
    $display("out : %0b",out);

    out = |in;
    $display("out : %0b",out);
    
    out = ^in;
    $display("out : %0b",out);
    
    out = ~&in;
    $display("out : %0b",out);
    
    out = ~|in;
    $display("out : %0b",out);
    
    out = ~^in;
    $display("out : %0b",out);
  end
endmodule


module bitwise_operator;
  logic [3:0]in;
  logic out;
  
  initial begin
    in = 4'bzzzz;
    
    out = &in;
    $display("out : %0b",out);

    out = |in;
    $display("out : %0b",out);
    
    out = ^in;
    $display("out : %0b",out);
    
    out = ~&in;
    $display("out : %0b",out);
    
    out = ~|in;
    $display("out : %0b",out);
    
    out = ~^in;
    $display("out : %0b",out);
  end
endmodule


# KERNEL: out : x
# KERNEL: out : x
# KERNEL: out : x
# KERNEL: out : x
# KERNEL: out : x
# KERNEL: out : x
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.

