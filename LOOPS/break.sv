module break_code;
  int arr[5];
  
  initial begin
    arr = {11,22,33,44,55};
    foreach(arr[i])begin
      if(i == 2)begin
        $display("break the loop");
        break;
      end
      else begin
        $display("arr[%0d] = %0d",i,arr[i]);
      end
    end
  end
endmodule



# KERNEL: arr[0] = 11
# KERNEL: arr[1] = 22
# KERNEL: break the loop
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
