class home;
  int data;
  string name;
  
  function new();
    data = 12;
    name = "devaki";
    $display(" data =%0d, name = %0s ",data,name);
  endfunction
endclass

module test;
  home h;
  initial begin
    h = new();//object
    if(h == null)
      $display(" object  is null ");
    else
      $display(" object is not null ");
  end
endmodule




//output
# run -all
#  data =12, name = devaki 
#  object is not null 
# exit
