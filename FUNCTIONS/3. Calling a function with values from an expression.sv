// 3. Calling a function with values from an expression
module func;
  initial begin
    
    $display(" Sum =%0d",sum(9,4));   
  end
  
  function int sum(input int a,b);
    return a+b;
  endfunction
endmodule



//output
# run -all
#  Sum =13
# exit
