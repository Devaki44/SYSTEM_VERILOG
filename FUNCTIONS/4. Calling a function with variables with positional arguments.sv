// 4. Calling a function with variables with positional arguments
module func;
  int result;
  
  initial begin
    result = sum(.a(5),.b(6));
    $display("result = %0d ",result);
    
  end
  
  function int sum(input int a,b);
    begin
      sum = a + b ;
    end
  endfunction
endmodule



//output
# run -all
# result = 11 
# exit
