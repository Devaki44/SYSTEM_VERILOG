module concatenation_operator;
  logic [7:0]out;
  logic [3:0]data1,data2;
  string out_string;
  
  initial begin
    data1 = 4'b1101;
    data2 = 4'bx101;
    out = {data1 , data2};
    $display("out : %b",out);
    
    out_string = {"Hi"," ","Devaki"};
    $display("out_string : %p",out_string);
    
    out_string = {"Hi"," ","Devaki"};
    $display("out_string : %s",out_string);
  end
endmodule
    


# KERNEL: out : 1101x101
# KERNEL: out_string : "Hi Devaki"
# KERNEL: out_string : Hi Devaki
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
