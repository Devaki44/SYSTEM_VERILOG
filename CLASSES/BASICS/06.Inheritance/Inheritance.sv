class parent_class;
  bit[3:0]addr;
endclass

class child_class extends parent_class;
  bit[3:0]data;
endclass

module inheritance;
  child_class c;
 initial begin
  c = new();
  c.addr = 10;
  c.data = 15;
   $display("addr = %0d,data = %0d",c.addr,c.data);
 end
endmodule


// OUTPUT
# KERNEL: addr = 10,data = 15
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
