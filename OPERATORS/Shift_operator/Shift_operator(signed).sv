module shift_operator;
  logic signed[7:0]a;
  
  initial begin
    a = 8'b1100_1011;
    
    $display("Logical_Right_Shift:%b",a>>1);
    $display("Logical_Left_Shift:%b",a<<1);
    $display("Arithmetic_Right_Shift=%b",a>>>2);
    $display("Arithmetic_Left_Shift=%b",a<<<1);
  end
endmodule

# KERNEL: Logical_Right_Shift:01100101
# KERNEL: Logical_Left_Shift:10010110
# KERNEL: Arithmetic_Right_Shift=11110010
# KERNEL: Arithmetic_Left_Shift=10010110
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
