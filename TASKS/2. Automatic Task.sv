//2. Automatic Task
module tb;
  int f;
  int result;

  initial begin
    f = 5;
    factorial(f,result);
    $display(" result = %0d ",result);
  end
  
  
  task automatic factorial(input int f,output int fact);
    if(f>=2)begin
      int temp;
      factorial(f-1,temp);
      fact = f*temp ;
    end
    else
      fact = 1;
  endtask
  
endmodule



//output
# run -all
#  result = 120 
# exit


