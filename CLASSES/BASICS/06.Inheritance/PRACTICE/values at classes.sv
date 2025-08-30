class parent;
  bit [7:0]data = 8'hff ;
endclass

class child extends parent ;
  bit [7:0]addr = 8'hdd;
endclass

module test;
  child c ;
  initial begin
    c = new();
    
//     c.data = 8'haa;
//     c.addr = 8'hee;
    $display(" data = %h,addr= %h",c.data,c.addr);
  end
endmodule



//OUTPUT
# run -all
#  data = ff,addr= dd
# exit
