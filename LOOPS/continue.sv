module continue_code;
  int arr[5];
  
  initial begin
    arr = '{11,22,33,44,55};
    foreach(arr[i])begin
      if(i == 2)begin
        $display("continue the loop");
        continue;
      end
      else begin
        $display("arr[%0d] = %0d",i,arr[i]);
      end
    end
  end
endmodule




# KERNEL: arr[0] = 11
# KERNEL: arr[1] = 22
# KERNEL: continue the loop
# KERNEL: arr[3] = 44
# KERNEL: arr[4] = 55
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.


