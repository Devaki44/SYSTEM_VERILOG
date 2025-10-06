module if_statement;
  int a = 50;
  
  initial begin
    unique0 if(a>0)begin
      $display("A is greater than 0");
    end 
    else if(a == 50) begin
      $display("A is equal to 50");
    end 
    else begin
      $display("A is not equal to 50");
    end
  end
  
endmodule



A is greater than 0

Warning-[RT-MTOCMU0IF] More than one condition match in statement
testbench.sv, 5
  Unique0 if statement inside if_statement matches more than one condition at 
  time 0ns.
