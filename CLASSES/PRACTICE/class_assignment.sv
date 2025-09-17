//CLS_ASSIGNMENT
class home;
  int data;
 
  function new();
    data = 8'hff ;
  endfunction
  function void display();
    $display(" data = %0h ",data);
  endfunction
endclass
module test;
  home h1,h2;
  initial begin
    h1 = new();
    h2 = h1;
    h1.display();
    h2.display();
    h1.data = 8'hde;
    h1.display();
    h2.display();
  end
endmodule



//output
# run -all
#  data = ff 
#  data = ff 
#  data = de 
#  data = de 
# exit
