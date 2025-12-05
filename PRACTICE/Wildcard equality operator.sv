module OP;
  logic [15:0] l1, l2;

  initial begin
    // Case 1: l1 is all ones, l2 has some ’x’ bits  
    l1 = 16'hxfff;
    l2 = 16'h1x;       // wildcard pattern (x = don't care)  

    $display("l1 = %h, l2 = %h : l1 ==? l2 => boolean %0d", l1, l2, (l1 ==? l2));
    $display("l1 = %h, l2 = %h : l1 !=? l2 => boolean %0d", l1, l2, (l1 !=? l2));

    // Case 2: reverse — l1 has X, l2 is all ones  
    l1 = 16'hxx;
    l2 = 16'hffff;

    $display("l1 = %h, l2 = %h : l1 ==? l2 => boolean %0d", l1, l2, (l1 ==? l2));
    $display("l1 = %h, l2 = %h : l1 !=? l2 => boolean %0d", l1, l2, (l1 !=? l2));
  end
endmodule



# run -all
# l1 = xfff, l2 = 001x : l1 ==? l2 => boolean 0
# l1 = xfff, l2 = 001x : l1 !=? l2 => boolean 1
# l1 = xxxx, l2 = ffff : l1 ==? l2 => boolean x
# l1 = xxxx, l2 = ffff : l1 !=? l2 => boolean x
# exit
