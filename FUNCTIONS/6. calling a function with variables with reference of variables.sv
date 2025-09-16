//6. calling a function with variables with reference of variables
module func;
  int a=5;
  int b=17;
  int result;
  
  initial begin
    result = sum(a,b);
    $display(" result =%0d ",result);
  end
  
  function automatic int sum(ref int x,y);
    sum = x+y ;
    return sum;
  endfunction
endmodule 



//output
# run -all
#  result =22 
# exit
