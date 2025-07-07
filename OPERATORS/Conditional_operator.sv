module conditional_operator;
  logic [3:0]data;
  logic en;
  logic [3:0]out;
  
  initial begin
    data = 4'hd;
    en   = 1'b1;
    out  = en ? data : 4'b0;
    $display("out : %0b",out);
    
    en   = 1'b0;
    out  = en ? data : 4'b0;
    $display("out : %0b",out);
    
    en   = 1'bx;
    out  = en ? data : 4'b0;
    $display("out : %0b",out);
    
    en   = 1'bz;
    out  = en ? data : 4'b0;
    $display("out : %0b",out);
  end
endmodule



# KERNEL: out : 1101
# KERNEL: out : 0
# KERNEL: out : xx0x    //simulator  error:Expected output = xxxx
# KERNEL: out : xx0x    //simulator error:Expected output = xxxx
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
