module if_statement;
  int a = 50;
  int b = 50;
  
  initial begin
    unique0 if(a<b)begin
      $display("A is less than B");
    end 
    else if(b<a) begin
      $display("B is less than A");
    end 
//     else begin
//       $display("A is equal to B");
//     end
  end
  
endmodule



# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
