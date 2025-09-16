
//11. Calling a task from a function
module func;
  initial  begin
  	void'(function_call());
  end
  
  function function_call();
   fork
    $display(" I'm in function ");
    $display(" Leaving function ");
    task_call;
   join_none
  endfunction
  
  task task_call;
    $display(" I'm in task ");
    $display(" Leaving task ");
  endtask
endmodule



//output
# run -all
#  I'm in function 
#  Leaving function 
#  I'm in task 
#  Leaving task 
# exit
