class parent;
  bit [7:0]data = 8'hff ;
endclass

class child extends parent ;
  bit [7:0]data = 8'hdd;
endclass

module test;
  child c ;
  initial begin
    c = new();
   
    $display(" data = %h",c.data);
  end
endmodule


//OUTPUT
# run -all
#  data = dd
# exit
