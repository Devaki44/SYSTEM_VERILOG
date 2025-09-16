//7. calling a function with a void return type
module func;
  
  initial begin
    display( "----devaki----");
    display( "----muthuvel---");
    void'(display("--calling--"));

  end
  
  function void display(string str);
    $display("%s",str);
  endfunction
endmodule


//output
# run -all
# ----devaki----
# ----muthuvel---
# --calling--
# exit
