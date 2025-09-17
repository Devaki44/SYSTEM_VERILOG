
//DEEP COPY
class top;
  int data;
  
  
  class nest;
    int addr;
    
    function new();
      addr = 8'h05;
//       $display(" addr = %0h",addr);
    endfunction
    
    function void display();
      $display(" addr = %0h",addr);
    endfunction
    
    function nest copy();
      copy  = new();
      copy.addr = this.addr;
      return copy;
    endfunction
  endclass
  
  nest nt;
  
  function new();
    data = 8'hdd;
    nt = new();
//     $display(" data =%0h",data);
  endfunction
  
  function void display();
    $display(" data =%0h",data);
  endfunction
  
  function top copy();
    copy = new();
    copy.data = this.data;
    copy.nt   = this.nt.copy;
    return copy;
  endfunction
endclass

module test;
  top t1, t2;
  initial begin;
    t1 = new();
    $display("----------------");
    
    t2 = new();
    $display("----------------");

    t1.display();
    $display("t1--------------");
    
    t2.display();
    $display("t2--------------");
    
    t1.nt.display();
    $display("t1.nt.----------");
    
    t2.nt.display();
    $display("t2.nt-----------");
    //
    t2 = t1.copy();
    $display("----------------");
    $display("----------------");
    //
    t1.display();
    $display("t1--------------");
    
    t1.data= 8'hee;
    t1.display();
    $display("t1--------------");
    t2.display();
    $display("t2--------------");
    
    t1.nt.display();
    $display("t1.nt.----------");
    
    t1.nt.addr=8'h07;
    
    t1.nt.display();
    $display("t1.nt.----------");
    
    t2.nt.display();
    $display("t2.nt-----------");
    
  end
endmodule




//output
# run -all
# ----------------
# ----------------
#  data =dd
# t1--------------
#  data =dd
# t2--------------
#  addr = 5
# t1.nt.----------
#  addr = 5
# t2.nt-----------
# ----------------
# ----------------
#  data =dd
# t1--------------
#  data =ee
# t1--------------
#  data =dd
# t2--------------
#  addr = 5
# t1.nt.----------
#  addr = 7
# t1.nt.----------
#  addr = 5
# t2.nt-----------
# exit
