// 3. calling a func from the task
module task_k;
  
  initial begin
    task_t();
  end
  
  task task_t();
    $display(" I'm in task ");
    func();
    $display( "Leaving task ");
  endtask
  
  function func();
    $display( "I'm in function");
    $display(" leaving function ");
  endfunction
  
endmodule




//output
# run -all
#  I'm in task 
# I'm in function
#  leaving function 
# Leaving task 
# exit
