//global constants
class parent;
  const int data =8'hff ;
  
  function void display();
    $display(" data =%0h ",data);
  endfunction
  
endclass
module test;
  parent p1;
  initial begin
    p1 = new();
    p1.display();
  end
endmodule



//output
# run -all
#  data =ff 
# exit
