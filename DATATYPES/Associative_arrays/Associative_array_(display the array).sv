module associative_array;
  string pqr[string];
  
  initial begin
    pqr = '{"Red":"Stop" , "Yellow":"Ready" , "Green":"Go"};
    $display("pqr : ",pqr);
  end
endmodule

KERNEL: pqr : '{"Green":"Go", "Red":"Stop", "Yellow":"Ready"}
