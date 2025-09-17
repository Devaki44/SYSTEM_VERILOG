module task_m;
  int a,b;
  int result;
  
  initial begin
    a=2;
    b=7;
    task_k(a,b,result);
    $display(" result = %0d ",result);
  end
  
  task task_k(input int a,b,output int sum);
    sum = a+b ;
  endtask
endmodule



//output
# run -all
#  result = 9 
# exit
