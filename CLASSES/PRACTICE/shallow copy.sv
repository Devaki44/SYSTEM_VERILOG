class home;
  int data; 
 // 
  class room;
  int addr;
  
  function new();
    addr = 8'hee;
  endfunction
   
  function void display();
    $display(" addr = %0h ",addr);
  endfunction
endclass
   //
  room rm;
 
  function new();
    data = 8'hff ;
    rm = new();
  endfunction
  function void display();
    $display(" data = %0h ",data);
  endfunction
endclass


module test;
  home h1,h2;
  initial begin
    h1 = new();
    h2 = new h1;
    h1.display();
    h2.display();
    h1.rm.display();
    h2.rm.display();
    h1.data = 8'hde;
    h1.rm.addr = 8'h04;
    h1.display();
    h2.display();
  end
endmodule




//output
# run -all
#  data = ff 
#  data = ff 
#  addr = ee 
#  addr = ee 
#  data = de 
#  data = ff 
# exit
