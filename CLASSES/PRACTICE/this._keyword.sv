//this.
class home;
  int data=8'hff;
  string name="devaki";
  
  function void display();
    int data =8'h07 ;
    string name = "nila";
    
    this.data = data;
    this.name = name;
    $display(" data =%0d, name = %0s ",data,name);
  endfunction
endclass

module test;

  initial begin
    home h = new();   
    h.display();
    $display(" data =%0d, name = %0s ",h.data,h.name);
    h.name = "Muthuvel";
    $display(" data =%0d, name = %0s ",h.data,h.name);
    h.display();
  end
endmodule


//output
# 
# run -all
#  data =7, name = nila 
#  data =7, name = nila 
#  data =7, name = Muthuvel 
#  data =7, name = nila 
# exit
