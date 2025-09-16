//10. Calling a function with variables that had default values

module func;
  int result ;
  
  initial begin
    result = sum();
    $display(" result = %0d ",result);
  end
  
  function int sum(input int a=6,b=8);
    sum = a+b ;
    return sum;
  endfunction
endmodule


//output
# run -all
#  result = 14 
# exit
