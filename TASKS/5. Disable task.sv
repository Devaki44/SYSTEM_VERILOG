//5. Disable task
module tb;
  
  initial begin
   fork
    disable_task();
    #20;
    disable disable_task.task_A;
   join
  end
  
  task disable_task();
    
    begin:task_A
      $display(" time=%0t,task_A initiated ",$time);
      #40;
      $display(" time=%0t,task_A finished ",$time);
    end:task_A
    
    begin:task_B
      #10;
      $display( " time=%0t,task_B initiated",$time);
      $display(" time=  %0t,task_B finished",$time);
    end:task_B
  endtask
  
endmodule



//output
# run -all
#  time=0,task_A initiated 
#  time=10,task_B initiated
#  time=  10,task_B finished
# exit
