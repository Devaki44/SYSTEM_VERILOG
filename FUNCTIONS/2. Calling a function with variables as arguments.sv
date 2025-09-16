module func;
  int result;
  int x = 4;
  int y = 5;
  
  initial begin
    result = sum(x,y);
    $display("result = %0d",result);
  end
  
  function int sum(input int a,b);
    return a+b ;
  endfunction
endmodule





//output
# run -all
# result = 9
# exit
