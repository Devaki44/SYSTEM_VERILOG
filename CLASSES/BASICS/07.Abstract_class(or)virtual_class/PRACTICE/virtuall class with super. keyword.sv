virtual class parent;
  bit [7:0]data;
  int addr;
  
  function new();
    data = 8'hff;
    addr = 8'hde;
  endfunction
  
  function void display();
    $display(" PARENT : data = %h ,addr = %h ",data,addr);
  endfunction
endclass

class child extends parent ;
  string name ;
  byte rollno ;
  
  function new();
    name = "devaki";
    rollno = 8'd04;
  endfunction
  
  function void display();
    super.data = 8'hee;
    super.addr = 8'h12;
    super.display();
    $display(" CHILD : name = %s , rollno = %h ",name,rollno);
  endfunction
endclass

module test;
//   parent p1;
  child c1;
  initial begin
//     p1  = new();
    c1  = new();
    
//     p1.display();
//     p1.data = 8'h11 ;
//     p1.display();
    
    c1.display();
    c1.rollno = 8'h11 ;
    c1.display();
  end
endmodule
    
    
    


//OUTPUT
# run -all
#  PARENT : data = ee ,addr = 00000012 
#  CHILD : name = devaki , rollno = 04 
#  PARENT : data = ee ,addr = 00000012 
#  CHILD : name = devaki , rollno = 11 
# exit
