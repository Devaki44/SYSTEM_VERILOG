// 1. Calling a function with values as arguments
module func;
  int result;
  
  initial begin
    result = sum(3,5);
    $display("result = %0d",result);
  end
  
  function int sum(input int a,b);
    return a+b ;
  endfunction
endmodule



//output
# run -all
# result = 8
# exit
