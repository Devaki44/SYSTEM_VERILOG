//4. Global task

task task_t(input int a,b,output int sum);
    sum = a+b ;
  endtask

module task_k;
  int a,b;
  int result;
  
  initial begin
    a=17;
    b=89;
    task_t(a,b,result);
    $display(" result = %0d ",result);
    
    
    a=89;
    b=78;
    task_t(a,b,result);
    $display(" result = %0d ",result);
  end 
endmodule

module task_f;
   int x,y;
   int out;
  
  initial  begin
    x= 156;
    y= 186;
    #2;
    task_t(x,y,out);
    $display(" out =%0d ",out);
  end
  
endmodule




//output
# run -all
#  result = 106 
#  result = 167 
#  out =342 
# exit
