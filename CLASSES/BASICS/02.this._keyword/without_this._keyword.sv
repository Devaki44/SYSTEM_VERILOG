class packet;
  bit [7:0]addr = 8'hdd;
  bit [7:0]data = 8'h08;
  
  function new();
    bit [7:0]addr = 8'hff;
    bit [7:0]data = 8'hee;
    
    addr = addr ;
    data = data ;
    
    $display(" 1. addr = %h , data = %h",addr,data);
  endfunction
endclass

module test;
  packet p1;
  initial begin
    p1 = new();

    $display(" 2. addr = %h , data = %h",p1.addr,p1.data);

    p1.addr = 8'haa;
    p1.data = 8'hcc;
    $display(" 3. addr = %h , data = %h",p1.addr,p1.data);
  end
endmodule
    


//OUTPUT
# run -all
#  1. addr = ff , data = ee
#  2. addr = dd , data = 08
#  3. addr = aa , data = cc
# exit
